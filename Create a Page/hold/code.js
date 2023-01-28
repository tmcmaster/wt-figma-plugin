"use strict";


// This plugin will open a window to prompt the user to enter a number, and
// it will then create that many rectangles on the screen.
// This file holds the main code for the plugins. It has access to the *document*.
// You can access browser APIs in the <script> tag inside "ui.html" which has a
// full browser environment (see documentation).
// This shows the HTML page in "ui.html".
figma.showUI(__html__);
// Calls to "parent.postMessage" from within the HTML page will trigger this
// callback. The callback will be passed the "pluginMessage" property of the
// posted message.
figma.ui.onmessage = msg => {
    // One way of distinguishing between different types of messages sent from
    // your HTML page is to use an object with a "type" property like this.
    if (msg.type === 'create-rectangles') {
        const nodes = [];
        for (let i = 0; i < msg.count; i++) {
            const rect = figma.createRectangle();
            rect.x = i * 150;
            rect.fills = [{type: 'SOLID', color: {r: 1, g: 0.5, b: 0}}];
            figma.currentPage.appendChild(rect);
            nodes.push(rect);
        }
        figma.currentPage.selection = nodes;
        figma.viewport.scrollAndZoomIntoView(nodes);
    } else if (msg.type === 'create-page') {
        const frame = figma.createFrame();
        frame.x = 50;
        frame.y = 50;
        frame.layoutMode = 'HORIZONTAL';
        frame.resize(400, 100);
        frame.primaryAxisAlignItems = 'SPACE_BETWEEN';
        figma.currentPage.appendChild(frame);

        const rect = figma.createRectangle();
        rect.x = 10;
        rect.y = 10;
        rect.fills = [{type: 'SOLID', color: {r: 1, g: 0.5, b: 0}}];
        //figma.currentPage.appendChild(rect);

        frame.appendChild(rect);

        const circle = figma.createEllipse();
        circle.x = 110;
        circle.y = 10;

        frame.appendChild(circle);

        // figma.currentPage.appendChild(circle);
        // figma.currentPage.selection = [circle];
        // figma.viewport.scrollAndZoomIntoView([circle]);
    } else if (msg.type === 'analise-page') {
        // const nodes = figma.currentPage.children[0].children.filter(node => node.type === 'COMPONENT');
        // nodes.forEach((node) => {
        //     console.log(node);
        //     // console.log(node.componentPropertyDefinitions);
        // });
        const components = findComponents(figma.currentPage.children[0]);
        console.log(components);
        // findComponents(figma.currentPage.children[0]);
    }
    // Make sure to close the plugin when you're done. Otherwise the plugin will
    // keep running, which shows the cancel button at the bottom of the screen.
    figma.closePlugin();
};

function parseNode(node) {
    const nodeDefinition = createComponentDefinition(node);
    console.log(JSON.stringify(nodeDefinition, null, 2));
}

function findComponentsHold(node, indent = '') {
    if (node.type === 'COMPONENT') {
        console.log(`${indent}${node.name}(${node.id})`);
        if (node.componentPropertyDefinitions) {
            Object.keys(node.componentPropertyDefinitions).forEach(key => {
                const name = key;
                const props = node.componentPropertyDefinitions[key];
                const type = props['type'];
                const defaultValue = props['defaultValue'];
                const preferredValues = props['preferredValues'];
                console.log(`${indent}  - name: ${name}`);
                console.log(`${indent}    type: ${type}`);
                console.log(`${indent}    defaultValue: ${defaultValue}`);
                console.log(`${indent}    preferredValues: ${preferredValues}`);
            });

            const itemSpacing = node.itemSpacing;
            const layoutGrids = node.layoutGrids;
            const layoutGrow = node.layoutGrow;
            const layoutMode = node.layoutMode;
            const layoutPositioning = node.layoutPositioning;

            const bottomLeftRadius = node.bottomLeftRadius;
            const bottomRightRadius = node.bottomRightRadius;
            const topLeftRadius = node.topLeftRadius;
            const topRightRadius = node.topRightRadius;
            const cornerRadius = node.cornerRadius;
            const cornerSmoothing = node.cornerSmoothing;

            const counterAxisAlignItems = node.counterAxisAlignItems;
            const counterAxisSizingMode = node.counterAxisSizingMode;

            const width = node.width;
            const height = node.height;

            const horizontalPadding = node.horizontalPadding;
            const verticalPadding = node.verticalPadding;

            console.log(`${indent}  - itemSpacing: ${itemSpacing}`);
            console.log(`${indent}  - layoutGrids: ${layoutGrids}`);
            console.log(`${indent}  - layoutGrow: ${layoutGrow}`);
            console.log(`${indent}  - layoutMode: ${layoutMode}`);
            console.log(`${indent}  - layoutPositioning: ${layoutPositioning}`);

            console.log(`${indent}  - bottomLeftRadius: ${bottomLeftRadius}`);
            console.log(`${indent}  - bottomRightRadius: ${bottomRightRadius}`);
            console.log(`${indent}  - topLeftRadius: ${topLeftRadius}`);
            console.log(`${indent}  - topRightRadius: ${topRightRadius}`);
            console.log(`${indent}  - cornerRadius: ${cornerRadius}`);
            console.log(`${indent}  - cornerSmoothing: ${cornerSmoothing}`);

            console.log(`${indent}  - counterAxisAlignItems: ${counterAxisAlignItems}`);
            console.log(`${indent}  - counterAxisSizingMode: ${counterAxisSizingMode}`);

            console.log(node);
        }

    } else {
        console.log(`${indent}${node.type} : ${node.name} : ${node.id}`);
        if (node.children) {
            node.children.forEach(child => findComponents(child, `  ${indent}`));
        }
    }
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

const nodeDefinition = {
    id: '',
    name: '',
    description: '',
    x: 0,
    y: 0,
    width: 0,
    height: 0,
    componentProperty: {
        definitions: [],
        references: []
    },
    variantProperties: [],
    children: [],
    radius: {
        corner: 0,
        smoothing: null,
        topLeft: null,
        topRight: null,
        bottomLeft: null,
        bottomRight: null
    },
    itemSpacing: null,
    padding: {
        horizontal: null,
        vertical: null,
        top: null,
        bottom: null,
        left: null,
        right: null
    },
    constraints: null,
    constrainProportions: null,
    axis: {
        primary: {
            alignItems: null,
            sizingModes: null
        },
        counter: {
            alignItems: null,
            sizingModes: null
        }
    },
    layout: {
        align: null,
        grids: null,
        grow: null,
        mode: null,
        positioning: null,
        clipsContent: null,
        overflowDirection: null
    },
    opacity: null,
    rotation: null,
    state: {
        visible: null,
        expanded: null,
        locked: null,
        removed: null
    },
    attachedConnectors: [],
    absolute: {
        boundingBos: null,
        renderBounds: null,
        transform: null
    },
    backgroundStyleId: null,
    backgrounds: null
};

const propertyList = [
    'id',
    'name',
    'description',

    'x',
    'y',

    'width',
    'height',

    'componentPropertyDefinitions',
    'componentPropertyReferences',

    'variantProperties',

    'children',

    'cornerRadius',
    'cornerSmoothing',

    'topLeftRadius',
    'topRightRadius',
    'bottomLeftRadius',
    'bottomRightRadius',

    'itemSpacing',

    'horizontalPadding',
    'verticalPadding',
    'paddingBottom',
    'paddingLeft',
    'paddingRight',
    'paddingTop',

    'constraints',
    'constrainProportions',
    'counterAxisAlignItems',
    'counterAxisSizingMode',

    'layoutAlign',
    'layoutGrids',
    'layoutGrow',
    'layoutMode',
    'layoutPositioning',

    'primaryAxisAlignItems',
    'primaryAxisSizingMode',

    'opacity',
    'rotation',
    'clipsContent',

    'visible',
    'expanded',
    'locked',
    'removed',

    'absoluteBoundingBox',
    'absoluteRenderBounds',
    'absoluteTransform',

    'attachedConnectors',

    'backgroundStyleId',
    'backgrounds',

    'overflowDirection',

];