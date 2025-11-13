.class public final synthetic Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p1, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mOnStartRecordingClicked:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mTapsSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    iget-object v2, p1, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mAudioSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mOptions:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/android/systemui/screenrecord/RecordingService;->getStartIntent(Landroid/content/Context;IZLcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    const/high16 v3, 0xc000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-static {v0}, Lcom/android/systemui/screenrecord/RecordingService;->getStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    iput-boolean v1, p1, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    iput-object v0, p1, Lcom/android/systemui/screenrecord/RecordingController;->mStopIntent:Landroid/app/PendingIntent;

    new-instance v0, Lcom/android/systemui/screenrecord/RecordingController$3;

    const-wide/16 v6, 0xbb8

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/screenrecord/RecordingController$3;-><init>(Lcom/android/systemui/screenrecord/RecordingController;JJLandroid/app/PendingIntent;)V

    iput-object v0, p1, Lcom/android/systemui/screenrecord/RecordingController;->mCountDownTimer:Lcom/android/systemui/screenrecord/RecordingController$3;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
