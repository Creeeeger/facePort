.class public final Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final synthetic this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;

    iget-object p1, p1, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->onStartRecordingClicked:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;

    iget-object v0, p1, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->selectedScreenShareOption:Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget v0, v0, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->access$requestScreenCapture(Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->selectedScreenShareOption:Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget p1, p1, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->mode:I

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$CaptureTargetResultReceiver;

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;

    invoke-direct {v0, v2}, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$CaptureTargetResultReceiver;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;)V

    const-string v2, "capture_region_result_receiver"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;

    iget-object v0, v0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->hostUserHandle:Landroid/os/UserHandle;

    const-string v2, "launched_from_user_handle"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;

    iget v0, v0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->hostUid:I

    const-string v2, "launched_from_host_uid"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;

    iget-object v0, v0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$onCreate$1;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
