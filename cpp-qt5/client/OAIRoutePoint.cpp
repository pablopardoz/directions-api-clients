/**
 * GraphHopper Directions API
 * You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


#include "OAIRoutePoint.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIRoutePoint::OAIRoutePoint(QString json) {
    init();
    this->fromJson(json);
}

OAIRoutePoint::OAIRoutePoint() {
    init();
}

OAIRoutePoint::~OAIRoutePoint() {
    this->cleanup();
}

void
OAIRoutePoint::init() {
    type = new QString("");
    m_type_isSet = false;
    coordinates = new QList<OAIObject*>();
    m_coordinates_isSet = false;
}

void
OAIRoutePoint::cleanup() {
    if(type != nullptr) { 
        delete type;
    }
    if(coordinates != nullptr) { 
        auto arr = coordinates;
        for(auto o: *arr) { 
            delete o;
        }
        delete coordinates;
    }
}

OAIRoutePoint*
OAIRoutePoint::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIRoutePoint::fromJsonObject(QJsonObject pJson) {
    ::OpenAPI::setValue(&type, pJson["type"], "QString", "QString");
    
    
    ::OpenAPI::setValue(&coordinates, pJson["coordinates"], "QList", "OAIObject");
}

QString
OAIRoutePoint::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIRoutePoint::asJsonObject() {
    QJsonObject obj;
    if(type != nullptr && *type != QString("")){
        toJsonValue(QString("type"), type, obj, QString("QString"));
    }
    if(coordinates->size() > 0){
        toJsonArray((QList<void*>*)coordinates, obj, "coordinates", "OAIObject");
    }

    return obj;
}

QString*
OAIRoutePoint::getType() {
    return type;
}
void
OAIRoutePoint::setType(QString* type) {
    this->type = type;
    this->m_type_isSet = true;
}

QList<OAIObject*>*
OAIRoutePoint::getCoordinates() {
    return coordinates;
}
void
OAIRoutePoint::setCoordinates(QList<OAIObject*>* coordinates) {
    this->coordinates = coordinates;
    this->m_coordinates_isSet = true;
}


bool
OAIRoutePoint::isSet(){
    bool isObjectUpdated = false;
    do{
        if(type != nullptr && *type != QString("")){ isObjectUpdated = true; break;}
        if(coordinates->size() > 0){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}
