.class public final Lcom/android/systemui/volume/CsdWarningDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mCancelScheduledNoUserActionRunnable:Ljava/lang/Runnable;

.field public final mContext:Landroid/content/Context;

.field public final mCsdWarning:I

.field public final mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mNoUserActionRunnable:Lcom/android/systemui/volume/CsdWarningDialog$$ExternalSyntheticLambda0;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mOnCleanup:Ljava/lang/Runnable;

.field public final mReceiver:Lcom/android/systemui/volume/CsdWarningDialog$1;

.field public mShowTime:J

.field public final mTimerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/volume/CsdWarningDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/CsdWarningDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/media/AudioManager;Landroid/app/NotificationManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/lang/Runnable;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mTimerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mCancelScheduledNoUserActionRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/volume/CsdWarningDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/CsdWarningDialog$1;-><init>(Lcom/android/systemui/volume/CsdWarningDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mReceiver:Lcom/android/systemui/volume/CsdWarningDialog$1;

    iput p1, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mCsdWarning:I

    iput-object p2, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mAudioManager:Landroid/media/AudioManager;

    iput-object p4, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p6, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mOnCleanup:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/16 p4, 0x7da

    invoke-virtual {p3, p4}, Landroid/view/Window;->setType(I)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    const/4 p3, 0x1

    const p4, 0x1040402

    if-eq p1, p3, :cond_1

    const/4 p5, 0x3

    if-eq p1, p5, :cond_0

    sget-object p5, Lcom/android/systemui/volume/CsdWarningDialog;->TAG:Ljava/lang/String;

    const-string p6, "Invalid CSD warning event "

    invoke-static {p1, p6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p6

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p5, p6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const p4, 0x1040403

    :cond_1
    :goto_0
    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p4, 0x7f13049c

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, -0x1

    invoke-virtual {p0, p5, p4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p4, 0x7f13049d

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, -0x2

    invoke-virtual {p0, p5, p4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance p4, Landroid/content/IntentFilter;

    const-string p5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p4, p5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p5, 0x2

    invoke-virtual {p2, v1, p4, p5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    if-ne p1, p3, :cond_2

    new-instance p1, Lcom/android/systemui/volume/CsdWarningDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/CsdWarningDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/CsdWarningDialog;)V

    iput-object p1, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mNoUserActionRunnable:Lcom/android/systemui/volume/CsdWarningDialog$$ExternalSyntheticLambda0;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mNoUserActionRunnable:Lcom/android/systemui/volume/CsdWarningDialog$$ExternalSyntheticLambda0;

    :goto_1
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    sget-object p1, Lcom/android/systemui/volume/CsdWarningDialog;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lower volume pressed for CSD warning "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mCsdWarning:I

    invoke-static {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->lowerVolumeToRs1()V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    sget-boolean p0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/volume/CsdWarningDialog;->TAG:Ljava/lang/String;

    const-string p1, "on click "

    invoke-static {p2, p1, p0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mReceiver:Lcom/android/systemui/volume/CsdWarningDialog$1;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/android/systemui/volume/CsdWarningDialog;->TAG:Ljava/lang/String;

    const-string v1, "Error unregistering broadcast receiver"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mOnCleanup:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mShowTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/CsdWarningDialog;->TAG:Ljava/lang/String;

    const-string v1, "Confirmed CSD exposure warning via VOLUME_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final sendNotification(Z)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f13049b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f13049f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f13049e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f0807d5

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string/jumbo v0, "sys"

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x3ef

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final show()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mCsdWarning:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/volume/CsdWarningDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notification dose repeat 5x is not shown for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mCsdWarning:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->lowerVolumeToRs1()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/CsdWarningDialog;->sendNotification(Z)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mReceiver:Lcom/android/systemui/volume/CsdWarningDialog$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/volume/CsdWarningDialog;->TAG:Ljava/lang/String;

    const-string v2, "Error unregistering broadcast receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mOnCleanup:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final start()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mShowTime:J

    iget-object v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mTimerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mNoUserActionRunnable:Lcom/android/systemui/volume/CsdWarningDialog$$ExternalSyntheticLambda0;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/16 v3, 0x1388

    invoke-interface {v2, v1, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mCancelScheduledNoUserActionRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mTimerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mCancelScheduledNoUserActionRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
