.class public Landroid/location/LocationConstants;
.super Ljava/lang/Object;
.source "LocationConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationConstants$LISTENER_TYPE;,
        Landroid/location/LocationConstants$PAUSED_BY;,
        Landroid/location/LocationConstants$STATE_TYPE;
    }
.end annotation


# static fields
.field public static final blacklist MAX_LISTENERID_THRESHOLD:I = 0x1e

.field public static final blacklist MSG_GMS_LOCATION:I = 0xc8

.field public static final blacklist MSG_LOCATION_ICON_CHANGED:I = 0xcc

.field public static final blacklist MSG_SETTING_CHANGED:I = 0xcb

.field public static final blacklist MSG_SLOCATION_REMOVE:I = 0xca

.field public static final blacklist MSG_SLOCATION_REQUEST:I = 0xc9


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
