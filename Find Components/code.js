
const components = findComponents(figma.currentPage.children[0]);
console.log(components);
figma.closePlugin();


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

function findComponents(node, depth = 0) {
    if (!node) {
        console.log(`Node was null`);
        return [];
    } else if (node.type === 'COMPONENT') {
        console.log(`Found component: ${node.name}`);
        return [createComponentDefinition(node)];
    } else if (node.children && depth < 3) {
        console.log(`Looking for components in node: ${node.name}`);
        return node.children
            .map(child => findComponents(child, ++depth))
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

function createComponentDefinition(node, depth = 0) {
    console.log(`createComponentDefinition : ${node.type}`);

    if (!node) {
        return {};
    }

    const type = node.name.split('/')[0].trim();

    return node ? {
        name: node.name,
        type: type,
        id: node.id,
        description: node.description,
        x: node.x,
        y: node.y,
        width: node.width,
        height: node.height,
        componentProperty: {
            definitions: createPropertyDefinitions(node.componentPropertyDefinitions),
            references: node.componentPropertyReferences
        },
        variantProperties: node.variantProperties,
        // children: node.children && depth < 2 ? node.children.map(node => createNodeDefinition(node, ++depth)) : [],
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
            horizontal: node.horizontalPadding,
            vertical: node.verticalPadding,
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
