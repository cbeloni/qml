 import QtQuick 1.0
Row{
	Rectangle {
	     id: page
	     width: 200; height: 200
	     color: "lightgray"

		Text {
			 id: helloText
			 text: "Hello world!"
			 y: 30
			 anchors.horizontalCenter: page.horizontalCenter
			 font.pointSize: 24; font.bold: true
		}
		 TextEdit {
		     width: 200
		     text: "Teste"
		     anchors.horizontalCenter: page.horizontalCenter
		     font.family: "Helvetica"
		     font.pointSize: 20
		     color: "blue"
		     focus: true    
		 } 	
		}

	Rectangle{
	     id: lista
	     width: 200; height: 200
	     color: "lightgray"
		 ListView {
		     width: 180; height: 200

		     model: ContactModel {}
		     delegate: Text {
			 text: name + ": " + number
		     }
		 }
		MouseArea  {
			anchors.fill: parent
			acceptedButtons: Qt.LeftButton | Qt.RightButton
			onClicked:  {
			    if (mouse.button == Qt.RightButton)
				parent.color = 'blue';
				
			
			    else
				parent.color = 'red';
		}
	    } 
	}

	Rectangle  {
	    width: 100; height: 100
	    color: "green"
	 
	    MouseArea  {
		anchors.fill: parent
		acceptedButtons: Qt.LeftButton | Qt.RightButton
		onClicked:  {
		    if (mouse.button == Qt.RightButton)
		        parent.color = 'blue';
			
		    else
		        parent.color = 'red';
		}
	    }
	}
 }
