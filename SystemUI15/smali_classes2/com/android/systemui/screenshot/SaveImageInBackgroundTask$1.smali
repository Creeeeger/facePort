.class public final Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

.field public final synthetic val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

.field public final synthetic val$connectionStartTime:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;JLcom/android/systemui/screenshot/sep/ScreenCaptureHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iput-wide p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$connectionStartTime:J

    iput-object p4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionResult(Z)V
    .locals 7

    sget v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->$r8$clinit:I

    const-string v0, "Screenshot"

    const-string v1, "onConnectionResult : success = "

    const-string v2, " / elapsed = "

    invoke-static {v1, v2, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$connectionStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-boolean v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object p1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotInterface:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    invoke-virtual {p1}, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->disconnect()V

    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iput-object v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotInterface:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    const-string p1, "Screenshot"

    const-string v0, "SaveImageInBackgroundTask : Disconnect ScrollCapture service because saving image failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_4

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "originId"

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureOrigin:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "captureMode"

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "captureDisplay"

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "rotation"

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayRotation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "safeInsetLeft"

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetLeft:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "safeInsetTop"

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetTop:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "safeInsetRight"

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetRight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "safeInsetBottom"

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isSubDisplayCapture"

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    invoke-static {v1}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isSubDisplayCapture(I)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v1, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "statusBarVisible"

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isStatusBarVisible:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "navigationBarVisible"

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget-boolean v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "statusBarHeight"

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->statusBarHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "navigationBarHeight"

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    if-eqz v0, :cond_2

    const-string v0, "isSmartCaptureVisible"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotInterface:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    iget-wide v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "notifyGlobalScreenshotStarted"

    const-string v6, "[ScrCap]_RemoteScreenshotInterface"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mService:Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService;

    if-eqz v1, :cond_3

    :try_start_0
    check-cast v1, Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService$Stub$Proxy;

    invoke-virtual {v1, v3, v4, v0, p1}, Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService$Stub$Proxy;->onGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyGlobalScreenshotStarted : e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "notifyGlobalScreenshotStarted : No service connection"

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "Screenshot"

    const-string v0, "SaveImageInBackgroundTask : Failed to connect to ScrollCapture service"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iput-object v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotInterface:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotInterface:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    if-eqz p1, :cond_5

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iput-boolean v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsScrollCaptureConnectionListenerInvoked:Z

    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotInterface:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_1
    return-void
.end method
