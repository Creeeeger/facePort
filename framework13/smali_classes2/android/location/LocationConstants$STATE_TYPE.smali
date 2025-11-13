.class public final enum Landroid/location/LocationConstants$STATE_TYPE;
.super Ljava/lang/Enum;
.source "LocationConstants.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/location/LocationConstants$STATE_TYPE;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist ACTIVE_REQUEST_SYNC_FROM_LMS:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist ADD_DATA_LISTENER:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist AVAILABLE_MOTION_STOP:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist CP_CRASH:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationConstants$STATE_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum blacklist DEVICE_ACTIVITY_ERROR:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist DEVICE_IDLE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist DEVICE_STATIONARY_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist FOREGROUND_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist FREEZE_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist LOCATION_POWER_SAVE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist LOCATION_REMOVE:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist LOCATION_REQUEST:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist LOCATION_UPDATE:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist MOCK_PROVIDER_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist MONITOR_SERVICE_CONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist MOTION_POWER_DISABLE:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist MOTION_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist NAVIGATING:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist NOTIFICATION_LISTENER_CONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist NOTIFICATION_LISTENER_DISCONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist NOTIFICATION_POSTED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist NOTIFICATION_REMOVED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist OP_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist PERMISSIONS_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist PROXY_SERVICE_CONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist PROXY_SERVICE_DISCONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist PROXY_SERVICE_RECONNECTION_TIMEOUT:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist REMOVE_DATA_LISTENER:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist REPORT_NFW_NOTIFICATION:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist SEND_EXTRA_COMMAND:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist SERVICE_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist SETTINGS_IGNORED_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist SET_LOCATION_ENABLED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist SIM_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist SUPL_ADDRESS:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist SUPPORT_ALGORITHM_TYPE:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist UPDATE_DATA_LISTENER:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist UPDATE_GNSS_INTERVAL:Landroid/location/LocationConstants$STATE_TYPE;

.field public static final enum blacklist XTRA:Landroid/location/LocationConstants$STATE_TYPE;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 41

    .line 35
    new-instance v0, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v1, "LOCATION_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_REQUEST:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v1, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v3, "LOCATION_REMOVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_REMOVE:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v3, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v5, "LOCATION_UPDATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_UPDATE:Landroid/location/LocationConstants$STATE_TYPE;

    .line 38
    new-instance v5, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v7, "FOREGROUND_CHANGED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/location/LocationConstants$STATE_TYPE;->FOREGROUND_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v7, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v9, "OP_CHANGED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/location/LocationConstants$STATE_TYPE;->OP_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v9, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v11, "PERMISSIONS_CHANGED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/location/LocationConstants$STATE_TYPE;->PERMISSIONS_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v11, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v13, "FREEZE_STATE_CHANGED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/location/LocationConstants$STATE_TYPE;->FREEZE_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 41
    new-instance v13, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v15, "ADD_DATA_LISTENER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroid/location/LocationConstants$STATE_TYPE;->ADD_DATA_LISTENER:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v15, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v14, "REMOVE_DATA_LISTENER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroid/location/LocationConstants$STATE_TYPE;->REMOVE_DATA_LISTENER:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v14, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v12, "UPDATE_DATA_LISTENER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroid/location/LocationConstants$STATE_TYPE;->UPDATE_DATA_LISTENER:Landroid/location/LocationConstants$STATE_TYPE;

    .line 44
    new-instance v12, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v10, "MONITOR_SERVICE_CONNECTED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v12, Landroid/location/LocationConstants$STATE_TYPE;->MONITOR_SERVICE_CONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 47
    new-instance v10, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v8, "NOTIFICATION_LISTENER_CONNECTED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v10, Landroid/location/LocationConstants$STATE_TYPE;->NOTIFICATION_LISTENER_CONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v8, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "NOTIFICATION_LISTENER_DISCONNECTED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroid/location/LocationConstants$STATE_TYPE;->NOTIFICATION_LISTENER_DISCONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 48
    new-instance v6, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v4, "NOTIFICATION_POSTED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroid/location/LocationConstants$STATE_TYPE;->NOTIFICATION_POSTED:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v4, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v2, "NOTIFICATION_REMOVED"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/location/LocationConstants$STATE_TYPE;->NOTIFICATION_REMOVED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 51
    new-instance v2, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "ACTIVE_REQUEST_SYNC_FROM_LMS"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/location/LocationConstants$STATE_TYPE;->ACTIVE_REQUEST_SYNC_FROM_LMS:Landroid/location/LocationConstants$STATE_TYPE;

    .line 54
    new-instance v6, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v4, "SUPL_ADDRESS"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroid/location/LocationConstants$STATE_TYPE;->SUPL_ADDRESS:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v4, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v2, "UPDATE_GNSS_INTERVAL"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/location/LocationConstants$STATE_TYPE;->UPDATE_GNSS_INTERVAL:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v2, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "NAVIGATING"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/location/LocationConstants$STATE_TYPE;->NAVIGATING:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v6, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v4, "REPORT_NFW_NOTIFICATION"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroid/location/LocationConstants$STATE_TYPE;->REPORT_NFW_NOTIFICATION:Landroid/location/LocationConstants$STATE_TYPE;

    .line 57
    new-instance v4, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v2, "XTRA"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/location/LocationConstants$STATE_TYPE;->XTRA:Landroid/location/LocationConstants$STATE_TYPE;

    .line 60
    new-instance v2, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "PROXY_SERVICE_CONNECTED"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_CONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v6, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v4, "PROXY_SERVICE_DISCONNECTED"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_DISCONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v2, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v4, "PROXY_SERVICE_RECONNECTION_TIMEOUT"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_RECONNECTION_TIMEOUT:Landroid/location/LocationConstants$STATE_TYPE;

    .line 63
    new-instance v4, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "SET_LOCATION_ENABLED"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/location/LocationConstants$STATE_TYPE;->SET_LOCATION_ENABLED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 66
    new-instance v2, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "SERVICE_STATE_CHANGED"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/location/LocationConstants$STATE_TYPE;->SERVICE_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v4, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "SIM_STATE_CHANGED"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/location/LocationConstants$STATE_TYPE;->SIM_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 69
    new-instance v2, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "MOCK_PROVIDER_CHANGED"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/location/LocationConstants$STATE_TYPE;->MOCK_PROVIDER_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 72
    new-instance v4, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "SEND_EXTRA_COMMAND"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/location/LocationConstants$STATE_TYPE;->SEND_EXTRA_COMMAND:Landroid/location/LocationConstants$STATE_TYPE;

    .line 75
    new-instance v2, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "AVAILABLE_MOTION_STOP"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/location/LocationConstants$STATE_TYPE;->AVAILABLE_MOTION_STOP:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v4, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "MOTION_STATE_CHANGED"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/location/LocationConstants$STATE_TYPE;->MOTION_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v2, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "MOTION_POWER_DISABLE"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/location/LocationConstants$STATE_TYPE;->MOTION_POWER_DISABLE:Landroid/location/LocationConstants$STATE_TYPE;

    .line 76
    new-instance v4, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "SUPPORT_ALGORITHM_TYPE"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/location/LocationConstants$STATE_TYPE;->SUPPORT_ALGORITHM_TYPE:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v2, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "DEVICE_ACTIVITY_ERROR"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/location/LocationConstants$STATE_TYPE;->DEVICE_ACTIVITY_ERROR:Landroid/location/LocationConstants$STATE_TYPE;

    .line 79
    new-instance v4, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "SETTINGS_IGNORED_STATE_CHANGED"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/location/LocationConstants$STATE_TYPE;->SETTINGS_IGNORED_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 82
    new-instance v2, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "CP_CRASH"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/location/LocationConstants$STATE_TYPE;->CP_CRASH:Landroid/location/LocationConstants$STATE_TYPE;

    .line 85
    new-instance v4, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "LOCATION_POWER_SAVE_CHANGED"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_POWER_SAVE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v2, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "DEVICE_STATIONARY_CHANGED"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/location/LocationConstants$STATE_TYPE;->DEVICE_STATIONARY_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    new-instance v4, Landroid/location/LocationConstants$STATE_TYPE;

    const-string v6, "DEVICE_IDLE_CHANGED"

    move-object/from16 v40, v2

    const/16 v2, 0x26

    invoke-direct {v4, v6, v2}, Landroid/location/LocationConstants$STATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/location/LocationConstants$STATE_TYPE;->DEVICE_IDLE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 33
    const/16 v2, 0x27

    new-array v2, v2, [Landroid/location/LocationConstants$STATE_TYPE;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v31, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v35, v2, v0

    const/16 v0, 0x21

    aput-object v36, v2, v0

    const/16 v0, 0x22

    aput-object v37, v2, v0

    const/16 v0, 0x23

    aput-object v38, v2, v0

    const/16 v0, 0x24

    aput-object v39, v2, v0

    const/16 v0, 0x25

    aput-object v40, v2, v0

    const/16 v0, 0x26

    aput-object v4, v2, v0

    sput-object v2, Landroid/location/LocationConstants$STATE_TYPE;->$VALUES:[Landroid/location/LocationConstants$STATE_TYPE;

    .line 97
    new-instance v0, Landroid/location/LocationConstants$STATE_TYPE$1;

    invoke-direct {v0}, Landroid/location/LocationConstants$STATE_TYPE$1;-><init>()V

    sput-object v0, Landroid/location/LocationConstants$STATE_TYPE;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/location/LocationConstants$STATE_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Landroid/location/LocationConstants$STATE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/location/LocationConstants$STATE_TYPE;

    return-object v0
.end method

.method public static blacklist values()[Landroid/location/LocationConstants$STATE_TYPE;
    .locals 1

    .line 33
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->$VALUES:[Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {v0}, [Landroid/location/LocationConstants$STATE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/location/LocationConstants$STATE_TYPE;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    invoke-virtual {p0}, Landroid/location/LocationConstants$STATE_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return-void
.end method
