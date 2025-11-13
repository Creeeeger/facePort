.class public final enum Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

.field public static final enum INVALID:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

.field public static final enum VOLUME_DIALOG_SHOW_REMOTE_VOLUME_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

.field public static final enum VOLUME_DIALOG_SHOW_USB_TEMP_ALARM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

.field public static final enum VOLUME_DIALOG_SHOW_VOLUME_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    new-instance v1, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    const/4 v2, 0x1

    const/16 v3, 0x80

    const-string v4, "VOLUME_DIALOG_SHOW_VOLUME_CHANGED"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->VOLUME_DIALOG_SHOW_VOLUME_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    new-instance v2, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    const/4 v3, 0x2

    const/16 v4, 0x81

    const-string v5, "VOLUME_DIALOG_SHOW_REMOTE_VOLUME_CHANGED"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->VOLUME_DIALOG_SHOW_REMOTE_VOLUME_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    new-instance v3, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    const/4 v4, 0x3

    const/16 v5, 0x82

    const-string v6, "VOLUME_DIALOG_SHOW_USB_TEMP_ALARM_CHANGED"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->VOLUME_DIALOG_SHOW_USB_TEMP_ALARM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->$VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

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

    iput p3, p0, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->$VALUES:[Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->mId:I

    return p0
.end method
