import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtPositioning 5.6
import QtLocation 5.9

Window {
    id: win
    visible: true
    width: 640
    height: 640

    Plugin {
        id: mapboxgl
        name: "mapboxgl"
    }

    Map {
        id: map
        gesture.enabled: true
        anchors.fill: parent
        plugin: mapboxgl
        center: QtPositioning.coordinate(60.164,24.942)
        activeMapType: map.supportedMapTypes[0]
        zoomLevel: 4
        copyrightsVisible: true
    }
}
