/*
	Copyright (C) 2010 by BetterInbox <contact@betterinbox.com>
	Original author: Gregory Schlomoff <greg@betterinbox.com>

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.
*/

#ifndef DECLARATIVEDROPAREA_H
#define DECLARATIVEDROPAREA_H

#include <QtDeclarative/QDeclarativeItem>
#include "DeclarativeDragDropEvent.h"

class DeclarativeDropArea : public QDeclarativeItem
{
	Q_OBJECT
	Q_PROPERTY(bool enabled READ isEnabled WRITE setEnabled NOTIFY enabledChanged)

public:
	DeclarativeDropArea(QDeclarativeItem *parent=0);
	bool isEnabled() const;
	void setEnabled(bool enabled);

signals:
	void dragEnter(DeclarativeDragDropEvent* event);
	void dragLeave(DeclarativeDragDropEvent* event);
	void dragMove(DeclarativeDragDropEvent* event);
	void drop(DeclarativeDragDropEvent* event);
	void enabledChanged();

protected:
	void dragEnterEvent(QGraphicsSceneDragDropEvent *event);
	void dragLeaveEvent(QGraphicsSceneDragDropEvent *event);
	void dropEvent(QGraphicsSceneDragDropEvent *event);
	void dragMoveEvent(QGraphicsSceneDragDropEvent *event);

private:
	bool m_enabled;
};

#endif

