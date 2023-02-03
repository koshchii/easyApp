import QtQuick
import QtQuick.Templates as T
import QtQuick.Controls
import QtQuick.Controls.impl

import easyApp.Gui.Style as EaStyle
import easyApp.Gui.Animations as EaAnimations
import easyApp.Gui.Elements as EaElements

EaElements.TextField {
    id: control

    property string units: ""

    rightPadding: unitsPlaceholder.width

    PlaceholderText {
        id: unitsPlaceholder

        x: control.width - width
        anchors.verticalCenter: control.verticalCenter
        leftPadding: EaStyle.Sizes.fontPixelSize * 0.5
        rightPadding: EaStyle.Sizes.fontPixelSize * 0.75

        font: control.font
        color: control.placeholderTextColor

        text: units
        textFormat: Text.RichText
    }
}
