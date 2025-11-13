.class public final synthetic Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenrecord/RecordingService;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenrecord/RecordingService;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenrecord/RecordingService;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenrecord/RecordingService;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    sget v1, Lcom/android/systemui/screenrecord/RecordingService;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingService;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "saving recording"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->save()Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/screenrecord/RecordingService;->createSaveNotification(Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenrecord/RecordingService;->postGroupNotification(Landroid/os/UserHandle;)V

    iget-object v3, v0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v4, v0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    invoke-virtual {v3, v1, v4, v2, p0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingService;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error saving screen recording: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const v2, 0x7f130fef

    invoke-virtual {v0, v2}, Lcom/android/systemui/screenrecord/RecordingService;->showErrorToast(I)V

    iget-object v2, v0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v0, v0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    invoke-virtual {v2, v1, v0, p0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_2
    return-void
.end method
