// Copyright (c) 2018 Chris ter Beke.
// Thingiverse plugin is released under the terms of the LGPLv3 or higher.
import QtQuick 2.2
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.1
import QtQuick.Layouts 1.3
import QtQuick.Window 2.2
import UM 1.1 as UM

// the popup window
Window
{
    id: thingiverse

    // window configuration
    color: UM.Theme.getColor("viewport_background")
    minimumWidth: Math.round(UM.Theme.getSize("modal_window_minimum").width)
    minimumHeight: Math.round(UM.Theme.getSize("modal_window_minimum").height)
    width: minimumWidth
    height: minimumHeight

    // translations
    UM.I18nCatalog
    {
        id: catalog
        name: "thingiverse"
    }

    title: catalog.i18nc("@title", "Thingiverse")

    // area to provide un-focus option for search field
    MouseArea
    {
        anchors.fill: parent
        focus: true
        onClicked: {
            focus = true
        }
    }

    ThingiMain
    {
    	width: parent.width
        height: parent.height
    }
}
