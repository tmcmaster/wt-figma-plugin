const MAX_DEPTH = 10;
const hasUI = true;

// TODO: need to play with variants and look at mapping them to Widgetbook use-cases.
if (hasUI) {
    figma.showUI(__html__, {visible: true})
    figma.ui.onmessage = processMessage
} else {
    const components = findComponents(figma.currentPage.selection);
    console.log(components);
    figma.closePlugin();
}

async function processMessage(msg) {
    if (msg.type === 'analise-page') {
        console.log(figma.currentPage.selection[0].characters);
        const components = findComponents(figma.currentPage.selection);
        console.log(components);
        figma.closePlugin();
    } else if (msg.type === 'post-data') {
        const selectedNodes = figma.currentPage.selection;
        const components = findComponents(selectedNodes);
        console.log('====> Posting component data');
        await postComponents(components);
        console.log('====> Posting component previews');
        await findComponentsAndCreatePreviews(selectedNodes);
    } else if (msg.type === 'export-slice') {
        const component = figma.currentPage.selection[0];
        const frame = await createComponentPreview(component);
        // figma.currentPage.children[1].appendChild(frame);
        figma.closePlugin();
    } else {
        figma.closePlugin();
    }

    figma.closePlugin();
}

async function postComponents(components) {
    const url = "http://localhost:8080/put";
    const response = await fetch(url, {
        method: 'PUT',
        body: JSON.stringify(components)
    });
    console.log('Response', response);
}

async function findComponentsAndCreatePreviews(nodes) {
    for (let node of nodes) {
        await _findComponentsAndCreatePreviews(node)
    }
}

async function _findComponentsAndCreatePreviews(node, depth = 0) {
    if (depth >= MAX_DEPTH) {
        return;
    }

    const previewURL = "http://localhost:8080/preview";
    console.log('NODE', node);
    if (node.type == 'COMPONENT') {
        console.log(`Found Component: ${node.name}`);
        const preview = await componentToPreview(node);
        console.log(preview);
        const response = await fetch(previewURL, {
            method: 'PUT',
            body: JSON.stringify(preview)
        });
        console.log('Preview Response', response);
    } else if (node.children) {
        for (let child of node.children) {
            await _findComponentsAndCreatePreviews(child, ++depth);
        }
    }
}

async function componentToPreview(component) {
    const bytes = await component.exportAsync({
        format: 'SVG'
    });
    return {
        id: component.id,
        name: component.name,
        type: component.name.split('/')[0].trim(),
        svg: String.fromCharCode.apply(null, bytes)
    };
}

async function createComponentPreview(component) {
    try {
        console.log('AAAA');

        console.log('BBBB');
        const bytes = await component.exportAsync({
            format: 'SVG'
        });
        console.log('CCCC');
        const imageAsString = String.fromCharCode.apply(null, bytes);

        console.log(imageAsString);

        const x = component.x;
        const y = component.y;
        const width = component.width;
        const height = component.height;

        // const image = figma.createImage(bytes);
        // console.log(image.hash);
        const frame = figma.createFrame();
        frame.name = 'Preview';
        frame.resize(width, height)
        frame.x = 100;
        frame.y = 200;
        // frame.fills = [{
        //     imageHash: image.hash,
        //     scaleMode: "FILL",
        //     scalingFactor: 1,
        //     type: "IMAGE",
        // }]
        return frame;
    } catch(error) {
        console.error(error);
        throw error;
    }
}

function findComponents(nodes, depth = 0) {
    return nodes
        .map(child => _findComponents(child, ++depth))
        .reduce((components, component) => {
            for (let c in component) {
                components.push(component[c]);
            }
            return components;
        }, []);
}

function _findComponents(node, depth = 0) {
    // TODO: need to support SELECTION, FRAME, COMPONENT_SET, INSTANCE
    if (!node) {
        console.log(`Node was null`);
        return [];
    } else if (node.type === 'COMPONENT') {
        console.log(`Found component: ${node.name}`);
        return [createContainerDefinition(node)];
    } else if (node.children && depth < MAX_DEPTH) {
        console.log(`Looking for components in node: ${node.name}`);
        return node.children
            .map(child => _findComponents(child, ++depth))
            .reduce((components, component) => {
                for (let c in component) {
                    components.push(component[c]);
                }
                return components;
            }, []);
    } else {
        console.log(`Node was not a component: ${node.name} : ${node.type} : ${node.children}`);
        return [];
    }
}

function createContainerDefinition(node, depth = 0) {
    console.log(`createComponentDefinition : ${node.type}`);

    if (!node && depth < MAX_DEPTH) {
        return {};
    }

    return node ? {
        name: node.name,
        id: node.id,
        type: node.type,
        description: node.description,
        x: node.x,
        y: node.y,
        width: node.width,
        height: node.height,
        componentProperty: {
            type: node.name.split('/')[0].trim(),
            definitions: createPropertyDefinitions(node.componentPropertyDefinitions),
            references: node.componentPropertyReferences
        },
        variantProperties: node.variantProperties,
        children: createChildrenDefinitions(node.children),
        radius: {
            corner: node.cornerRadius,
            smoothing: node.cornerSmoothing,
            topLeft: node.topLeftRadius,
            topRight: node.topRightRadius,
            bottomLeft: node.bottomLeftRadius,
            bottomRight: node.bottomRightRadius
        },
        itemSpacing: node.itemSpacing,
        padding: {
            // horizontal: node.horizontalPadding,
            // vertical: node.verticalPadding,
            top: node.paddingTop,
            bottom: node.paddingBottom,
            left: node.paddingLeft,
            right: node.paddingRight
        },
        constraints: node.constraints,
        constrainProportions: node.constrainProportions,
        axis: {
            primary: {
                alignItems: node.primaryAxisAlignItems,
                sizingModes: node.primaryAxisSizingMode
            },
            counter: {
                alignItems: node.counterAxisAlignItems,
                sizingModes: node.counterAxisSizingMode
            }
        },
        layout: {
            align: node.layoutAlign,
            grids: node.layoutGrids,
            grow: node.layoutGrow,
            mode: node.layoutMode,
            positioning: node.layoutPositioning,
            clipsContent: node.clipsContent,
            overflowDirection: node.overflowDirection
        },
        opacity: node.opacity,
        rotation: node.rotation,
        state: {
            visible: node.visible,
            expanded: node.expanded,
            locked: node.locked,
            removed: node.removed
        },
        attachedConnectors: node.attachedConnectors,
        absolute: {
            boundingBos: node.absoluteBoundingBox,
            renderBounds: node.absoluteRenderBounds,
            transform: node.transform
        },
        backgroundStyleId: node.backgroundStyleId,
        backgrounds: node.backgrounds
    } : {};
}

function createChildrenDefinitions(children, depth = 0) {
    if (!children) {
        return [];
    }
    return children.map(node => {
        const type = node.type;
        if (type === 'FRAME' || type === 'GROUP') {
            return createContainerDefinition(node, ++depth);
        } else if (type === 'TEXT') {
            if (node.textStyleId) {
                console.log('Text Style', figma.getStyleById(node.textStyleId));
            }
            return {
                name: node.name,
                id: node.id,
                type: node.type,
                characters: node.characters,
                style: {
                    id: node.textStyleId,
                    fontWeight: node.fontWeight,
                    fontSize: node.fontSize,
                    fontFamily: node.fontName.family,
                    fontStyle: node.fontName.style,
                },
                x: node.x,
                y: node.y,
                width: node.width,
                height: node.height,
            };
        } else {
            return {
                name: node.name,
                id: node.id,
                type: node.type,
                description: node.description,
                x: node.x,
                y: node.y,
                width: node.width,
                height: node.height,
            };
        }
    });
}

function createPropertyDefinitions(definitions) {
    return definitions ? Object.keys(definitions).map(key => {
        const name = key;
        const props = definitions[key];
        const type = props['type'];
        const defaultValue = props['defaultValue'];
        const preferredValues = props['preferredValues'];

        return {
            name: name,
            type: type,
            defaultValue: defaultValue,
            preferredValues: preferredValues
        };
    }) : [];
}
