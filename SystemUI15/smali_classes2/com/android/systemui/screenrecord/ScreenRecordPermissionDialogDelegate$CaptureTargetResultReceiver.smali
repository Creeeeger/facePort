.class public final Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$CaptureTargetResultReceiver;
.super Landroid/os/ResultReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$CaptureTargetResultReceiver;->this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "capture_region"

    const-class v0, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$CaptureTargetResultReceiver;->this$0:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;

    invoke-static {p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;->access$requestScreenCapture(Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;)V

    :cond_0
    return-void
.end method
