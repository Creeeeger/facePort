.class public final Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/reardisplay/RearDisplayDialogController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/reardisplay/RearDisplayDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;->this$0:Lcom/android/systemui/reardisplay/RearDisplayDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/reardisplay/RearDisplayDialogController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;-><init>(Lcom/android/systemui/reardisplay/RearDisplayDialogController;)V

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;->this$0:Lcom/android/systemui/reardisplay/RearDisplayDialogController;

    iget-boolean v0, v0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mStartedFolded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;->this$0:Lcom/android/systemui/reardisplay/RearDisplayDialogController;

    iget-object p1, p1, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mRearDisplayEducationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;->this$0:Lcom/android/systemui/reardisplay/RearDisplayDialogController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->closeOverlayAndNotifyService(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;->this$0:Lcom/android/systemui/reardisplay/RearDisplayDialogController;

    iget-boolean v0, v0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mStartedFolded:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;->this$0:Lcom/android/systemui/reardisplay/RearDisplayDialogController;

    iget-object p1, p1, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mRearDisplayEducationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;->this$0:Lcom/android/systemui/reardisplay/RearDisplayDialogController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->closeOverlayAndNotifyService(Z)V

    :cond_1
    :goto_0
    return-void
.end method
