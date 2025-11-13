.class public Lcom/android/systemui/screenrecord/RecordingService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenrecord/ScreenMediaRecorder$ScreenMediaRecorderListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public final mController:Lcom/android/systemui/screenrecord/RecordingController;

.field public final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field public final mLongExecutor:Ljava/util/concurrent/Executor;

.field public final mMainHandler:Landroid/os/Handler;

.field public mNotificationId:I

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public mOriginalShowTaps:Z

.field public mRecorder:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

.field public mShowTaps:Z

.field public mStrings:Lcom/android/systemui/screenrecord/RecordingServiceStrings;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserContextTracker:Lcom/android/systemui/settings/UserContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/RecordingController;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;Landroid/app/NotificationManager;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const/16 v0, 0x10b1

    iput v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mLongExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p5, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p6, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/UserContextProvider;

    iput-object p7, p0, Lcom/android/systemui/screenrecord/RecordingService;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    return-void
.end method

.method public static getStartIntent(Landroid/content/Context;IZLcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.START"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_resultCode"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_useAudio"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_showTaps"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_captureTarget"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getStopIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.systemui.screenrecord.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createErrorNotification()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->getStartError()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f080aef

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public createProcessingNotification()Landroid/app/Notification;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->getOngoingRecording()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->res:Landroid/content/res/Resources;

    const v1, 0x7f130fe9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.substName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->getBackgroundProcessingLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const v0, 0x7f080aef

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string/jumbo v0, "screen_record_saved"

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public createRecordingNotification()V
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->getOngoingRecording()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->res:Landroid/content/res/Resources;

    const v2, 0x7f130fe9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.android.systemui.screenrecord.STOP_FROM_NOTIF"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0xc000000

    const/4 v4, 0x2

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Action$Builder;

    const v4, 0x7f0807fe

    invoke-static {p0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->res:Landroid/content/res/Resources;

    const v6, 0x7f130ff8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f080aef

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public createSaveNotification(Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;)Landroid/app/Notification;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;->mUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x10000001

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Action$Builder;

    const v4, 0x7f080aef

    invoke-static {p0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->res:Landroid/content/res/Resources;

    const v7, 0x7f130ff2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "com.android.systemui.screenrecord.SHARE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "extra_path"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const/4 v7, 0x2

    const/high16 v8, 0xc000000

    invoke-static {p0, v7, v1, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v3, v5, v6, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.substName"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getChannelId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->getSaveTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->res:Landroid/content/res/Resources;

    const v6, 0x7f130ff0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/high16 v5, 0x4000000

    invoke-static {p0, v7, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string/jumbo v2, "screen_record_saved"

    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p0

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;->mThumbnailIcon:Landroid/graphics/drawable/Icon;

    :cond_1
    if-eqz v0, :cond_2

    new-instance p1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {p1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$BigPictureStyle;->showBigPictureWhenCollapsed(Z)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_2
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "screen_record"

    return-object p0
.end method

.method public getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mRecorder:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RecordingService"

    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11

    const-string v1, "com.android.systemui.screenrecord.STOP_FROM_NOTIF"

    const/4 v2, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x3

    const/4 v10, 0x2

    if-nez p1, :cond_0

    return v10

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onStartCommand "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getChannelId()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f130ffa

    invoke-virtual {p0, v7}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v6, 0x7f130fe3

    invoke-virtual {p0, v6}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    iget-object v6, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/UserContextProvider;

    check-cast v6, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v3, v2

    goto :goto_1

    :sswitch_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v6, "com.android.systemui.screenrecord.START_NOTIF"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :sswitch_2
    const-string v3, "com.android.systemui.screenrecord.STOP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v10

    goto :goto_1

    :sswitch_3
    const-string v3, "com.android.systemui.screenrecord.START"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v9

    goto :goto_1

    :sswitch_4
    const-string v3, "com.android.systemui.screenrecord.SHARE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v8

    :cond_5
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createRecordingNotification()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_START:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_END_NOTIFICATION:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    invoke-interface {v1, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_END_QS_TILE:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    invoke-interface {v1, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_2
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenrecord/RecordingService;->stopService(I)V

    goto/16 :goto_4

    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/lit16 v1, v1, 0x10b1

    iput v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    invoke-static {}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->values()[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    move-result-object v1

    const-string v2, "extra_useAudio"

    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recording with audio source "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "extra_showTaps"

    invoke-virtual {p1, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mShowTaps:Z

    const-string v1, "extra_captureTarget"

    const-class v2, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_touches"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v9

    goto :goto_3

    :cond_7
    move v0, v8

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mOriginalShowTaps:Z

    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mShowTaps:Z

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/UserContextProvider;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    move-object v1, v0

    move v4, v5

    move-object v5, v7

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/systemui/screenrecord/ScreenRecordingAudioSource;Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;Lcom/android/systemui/screenrecord/ScreenMediaRecorder$ScreenMediaRecorderListener;)V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mRecorder:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v9}, Lcom/android/systemui/screenrecord/RecordingService;->updateState(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createRecordingNotification()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_START:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_4

    :catch_0
    move-exception v0

    const v1, 0x7f130ff3

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenrecord/RecordingService;->showErrorToast(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, v8}, Lcom/android/systemui/screenrecord/RecordingService;->updateState(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createErrorNotification()V

    invoke-virtual {p0, v10}, Landroid/app/Service;->stopForeground(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v10

    :pswitch_3
    const-string v1, "extra_path"

    const-class v2, Landroid/net/Uri;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    new-instance v2, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v7}, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenrecord/RecordingService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v1, v2, v8, v8}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;ZZ)V

    invoke-virtual {p0}, Landroid/app/Service;->closeSystemDialogs()V

    :goto_4
    return v9

    :sswitch_data_0
    .sparse-switch
        -0x649efbd3 -> :sswitch_4
        -0x64998750 -> :sswitch_3
        -0x1c04f22c -> :sswitch_2
        -0x187e113f -> :sswitch_1
        -0x1130027a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final postGroupNotification(Landroid/os/UserHandle;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f080aef

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/screenrecord/RecordingServiceStrings;->getSaveTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string/jumbo v2, "screen_record_saved"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getTag()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x10b1

    invoke-virtual {v1, p0, v2, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public provideRecordingServiceStrings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;
    .locals 1

    new-instance v0, Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/RecordingServiceStrings;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final saveRecording(I)V
    .locals 4

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createProcessingNotification()Landroid/app/Notification;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mLongExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenrecord/RecordingService;Landroid/os/UserHandle;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showErrorToast(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final stopService(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/UserContextProvider;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifying for user "

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mOriginalShowTaps:Z

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_touches"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->end()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->saveRecording(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object p0

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_4
    iget-object v0, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5
    const v0, 0x7f130ff3

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenrecord/RecordingService;->showErrorToast(I)V

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stopRecording called, but there was an error when endingrecording"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createErrorNotification()V

    :goto_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->updateState(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final strings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mStrings:Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->provideRecordingServiceStrings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mStrings:Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mStrings:Lcom/android/systemui/screenrecord/RecordingServiceStrings;

    return-object p0
.end method

.method public final updateState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/UserContextProvider;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/RecordingController;->updateState(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.screenrecord.UPDATE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "com.android.systemui.permission.SELF"

    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
