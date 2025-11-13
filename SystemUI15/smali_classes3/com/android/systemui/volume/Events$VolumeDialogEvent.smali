.class public final enum Lcom/android/systemui/volume/Events$VolumeDialogEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/Events$VolumeDialogEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum INVALID:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum RINGER_MODE_NORMAL:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum RINGER_MODE_SILENT:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum RINGER_MODE_VIBRATE:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum USB_OVERHEAT_ALARM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum USB_OVERHEAT_ALARM_DISMISSED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_ACTIVE_STREAM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_COLLAPSE_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_EXPAND_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_MUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_ODI_CAPTIONS_CLICKED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_ODI_CAPTIONS_TOOLTIP_CLICKED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_SETTINGS_CLICK:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_SLIDER:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_SLIDER_STARTED_TRACKING_TOUCH:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_SLIDER_STOPPED_TRACKING_TOUCH:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_SLIDER_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_TO_VIBRATE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_DIALOG_UNMUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_KEY:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

.field public static final enum VOLUME_KEY_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/4 v2, 0x1

    const/16 v3, 0x8f

    const-string v4, "VOLUME_DIALOG_SETTINGS_CLICK"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SETTINGS_CLICK:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/4 v3, 0x2

    const/16 v4, 0x90

    const-string v5, "VOLUME_DIALOG_EXPAND_DETAILS"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_EXPAND_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v3, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/4 v4, 0x3

    const/16 v5, 0x91

    const-string v6, "VOLUME_DIALOG_COLLAPSE_DETAILS"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_COLLAPSE_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/4 v5, 0x4

    const/16 v6, 0x92

    const-string v7, "VOLUME_DIALOG_ACTIVE_STREAM_CHANGED"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_ACTIVE_STREAM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v5, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/4 v6, 0x5

    const/16 v7, 0x93

    const-string v8, "VOLUME_DIALOG_MUTE_STREAM"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_MUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v6, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/4 v7, 0x6

    const/16 v8, 0x94

    const-string v9, "VOLUME_DIALOG_UNMUTE_STREAM"

    invoke-direct {v6, v9, v7, v8}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_UNMUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v7, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/4 v8, 0x7

    const/16 v9, 0x95

    const-string v10, "VOLUME_DIALOG_TO_VIBRATE_STREAM"

    invoke-direct {v7, v10, v8, v9}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_TO_VIBRATE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v8, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v9, 0x8

    const/16 v10, 0x96

    const-string v11, "VOLUME_DIALOG_SLIDER"

    invoke-direct {v8, v11, v9, v10}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v10, 0x9

    const/16 v11, 0x97

    const-string v12, "VOLUME_DIALOG_SLIDER_TO_ZERO"

    invoke-direct {v9, v12, v10, v11}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v10, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v11, 0xa

    const/16 v12, 0x654

    const-string v13, "VOLUME_DIALOG_SLIDER_STARTED_TRACKING_TOUCH"

    invoke-direct {v10, v13, v11, v12}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER_STARTED_TRACKING_TOUCH:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v11, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v12, 0xb

    const/16 v13, 0x655

    const-string v14, "VOLUME_DIALOG_SLIDER_STOPPED_TRACKING_TOUCH"

    invoke-direct {v11, v14, v12, v13}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER_STOPPED_TRACKING_TOUCH:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v12, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v13, 0xc

    const/16 v14, 0x5df

    const-string v15, "VOLUME_DIALOG_ODI_CAPTIONS_CLICKED"

    invoke-direct {v12, v15, v13, v14}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_ODI_CAPTIONS_CLICKED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v13, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v14, 0xd

    const/16 v15, 0x5e0

    move-object/from16 v16, v12

    const-string v12, "VOLUME_DIALOG_ODI_CAPTIONS_TOOLTIP_CLICKED"

    invoke-direct {v13, v12, v14, v15}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_ODI_CAPTIONS_TOOLTIP_CLICKED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v14, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v12, 0xe

    const/16 v15, 0x98

    move-object/from16 v17, v13

    const-string v13, "VOLUME_KEY_TO_ZERO"

    invoke-direct {v14, v13, v12, v15}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v15, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v12, 0xf

    const/16 v13, 0x99

    move-object/from16 v18, v14

    const-string v14, "VOLUME_KEY"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v14, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v12, 0x10

    const/16 v13, 0x9a

    move-object/from16 v19, v15

    const-string v15, "RINGER_MODE_SILENT"

    invoke-direct {v14, v15, v12, v13}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_SILENT:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v15, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v12, 0x11

    const/16 v13, 0x9b

    move-object/from16 v20, v14

    const-string v14, "RINGER_MODE_VIBRATE"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_VIBRATE:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v14, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v12, 0x12

    const/16 v13, 0x14e

    move-object/from16 v21, v15

    const-string v15, "RINGER_MODE_NORMAL"

    invoke-direct {v14, v15, v12, v13}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_NORMAL:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v15, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v12, 0x13

    const/16 v13, 0xa0

    move-object/from16 v22, v14

    const-string v14, "USB_OVERHEAT_ALARM"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->USB_OVERHEAT_ALARM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    new-instance v14, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    const/16 v12, 0x14

    const/16 v13, 0xa1

    move-object/from16 v23, v15

    const-string v15, "USB_OVERHEAT_ALARM_DISMISSED"

    invoke-direct {v14, v15, v12, v13}, Lcom/android/systemui/volume/Events$VolumeDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->USB_OVERHEAT_ALARM_DISMISSED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v16, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v18

    move-object/from16 v17, v21

    move-object/from16 v21, v23

    move-object/from16 v15, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    filled-new-array/range {v0 .. v20}, [Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->$VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/Events$VolumeDialogEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/Events$VolumeDialogEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->$VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/Events$VolumeDialogEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->mId:I

    return p0
.end method
