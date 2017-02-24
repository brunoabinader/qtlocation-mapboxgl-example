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
        id: plugin
        name: "osm"
    }

    Map {
        id: map
        gesture.enabled: true
        anchors.fill: parent
        plugin: plugin
        center: QtPositioning.coordinate(0,180)
        activeMapType: map.supportedMapTypes[0]
        zoomLevel: 8
        copyrightsVisible: true

        MapPolyline {
            line.color: 'red'
            line.width: 10
            path: [
                { latitude: 1, longitude: 179 },
                { latitude: 1, longitude: -179 }
            ]
        }

        MapPolyline {
            line.color: 'blue'
            line.width: 10
            path: [
                { latitude: -1, longitude: -179 },
                { latitude: -1, longitude: 179 }
            ]
        }
    }
}
