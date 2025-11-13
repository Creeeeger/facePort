.class public final enum Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum INVALID:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_SCREEN_OFF:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_SETTINGS:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_STREAM_GONE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_SYSTEM:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_TIMEOUT:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_TOUCH_OUTSIDE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

.field public static final enum VOLUME_DIALOG_DISMISS_USB_TEMP_ALARM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    new-instance v1, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const/4 v2, 0x1

    const/16 v3, 0x86

    const-string v4, "VOLUME_DIALOG_DISMISS_TOUCH_OUTSIDE"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TOUCH_OUTSIDE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    new-instance v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const/4 v3, 0x2

    const/16 v4, 0x87

    const-string v5, "VOLUME_DIALOG_DISMISS_SYSTEM"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SYSTEM:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    new-instance v3, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const/4 v4, 0x3

    const/16 v5, 0x88

    const-string v6, "VOLUME_DIALOG_DISMISS_TIMEOUT"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TIMEOUT:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    new-instance v4, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const/4 v5, 0x4

    const/16 v6, 0x89

    const-string v7, "VOLUME_DIALOG_DISMISS_SCREEN_OFF"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SCREEN_OFF:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    new-instance v5, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const/4 v6, 0x5

    const/16 v7, 0x8a

    const-string v8, "VOLUME_DIALOG_DISMISS_SETTINGS"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SETTINGS:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    new-instance v6, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const/4 v7, 0x6

    const/16 v8, 0x8c

    const-string v9, "VOLUME_DIALOG_DISMISS_STREAM_GONE"

    invoke-direct {v6, v9, v7, v8}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_STREAM_GONE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    new-instance v7, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    const/4 v8, 0x7

    const/16 v9, 0x8e

    const-string v10, "VOLUME_DIALOG_DISMISS_USB_TEMP_ALARM_CHANGED"

    invoke-direct {v7, v10, v8, v9}, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_USB_TEMP_ALARM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->$VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

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

    iput p3, p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->$VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->mId:I

    return p0
.end method
