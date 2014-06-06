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
	     ListModel {
		    id: nomesModel
		     ListElement {
		         name: "Cauê Beloni"
		         number: "555 3264"
		     }
		     ListElement {
		         name: "Raquel"
		         number: "555 8426"
		     }
		     ListElement {
		         name: "Ísis"
		         number: "555 0473"
		     }
		 }
	     Component {
         id: contactDelegate
	     Item {
	             width: 180; height: 40
	             Column {
	                 Text { text: '<b>Name :  </b> ' + name }
	                 Text { text: '<b>Number : </b> ' + number }
	             }
	             MouseArea {
                 anchors.fill: parent
                 acceptedButtons: Qt.LeftButton | Qt.RightButton
                 onClicked: 
                 			{   if (mouse.button == Qt.RightButton)
							        nomesModel.move(index, index+1, 1);
								
							    else
							        nomesModel.move(index, index-1, 1);
							}
             	 }
	         }
	     }
		 ListView {
		 	 id: listViewContatos
		     width: 180; height: 200

		     model: nomesModel
		     delegate: contactDelegate
		     highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
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
	Rectangle{
     id:simplebutton
     width: 100; height: 100     

     MouseArea{
         id: buttonMouseArea

         anchors.fill: parent //anchor all sides of the mouse area to the rectangle's anchors
                 //onClicked handles valid mouse button clicks
         onClicked: console.log( " clicked -> " + ListView.currentIndex(0))
     }
 }
 }
