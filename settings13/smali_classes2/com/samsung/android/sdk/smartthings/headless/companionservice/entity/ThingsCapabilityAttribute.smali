.class public final Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;
.super Ljava/lang/Object;
.source "ThingsCapabilityAttribute.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public attribute:Ljava/lang/String;

.field public capability:Ljava/lang/String;

.field public commandUuid:Ljava/lang/String;

.field public componentId:Ljava/lang/String;

.field public data:Lcom/google/gson/JsonObject;

.field public displayed:Ljava/lang/Boolean;

.field public stateChange:Ljava/lang/String;

.field public unit:Ljava/lang/String;

.field public value:Lcom/google/gson/JsonElement;

.field public valueType:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
