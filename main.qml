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
        id: mapboxglPlugin
        name: "mapboxgl"
        PluginParameter{ name: "mapboxgl.access_token"; value: "pk.eyJ1IjoicGFvbG9hbmdlbGVsbGkiLCJhIjoiY2lwZnVjOGU1MDAwaXYzbWFsZ2V0ZXFsdiJ9.NsU1t5hyWCJazAvIK3DASw" }
    }

    Map {
        id: map
        gesture.enabled: true
        anchors.fill: parent
        plugin: mapboxglPlugin
        center: QtPositioning.coordinate(0,0)
        activeMapType: map.supportedMapTypes[0]
        zoomLevel: 4
        copyrightsVisible: true

        MapRectangle {
            color: 'green'
            border.width: 2
            border.color: 'yellow'
            topLeft {
                latitude: 20
                longitude: -20
            }
            bottomRight {
                latitude: -20
                longitude: 20
            }

            MouseArea {
                anchors.fill: parent
                drag.target: parent
                preventStealing: true
            }
        }
    }
}
