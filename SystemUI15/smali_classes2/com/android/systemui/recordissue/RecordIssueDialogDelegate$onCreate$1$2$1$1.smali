.class public final Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$2$1$1;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onCreate$1$2$1$1;->this$0:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/flags/Flags;->WM_ENABLE_PARTIAL_SCREEN_SHARING_ENTERPRISE_POLICIES:Lcom/android/systemui/flags/ReleasedFlag;

    iget-object v1, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->flags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->userTracker:Lcom/android/systemui/settings/UserTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->devicePolicyResolver:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->isScreenCaptureCompletelyDisabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onScreenRecordSwitchClicked$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onScreenRecordSwitchClicked$1;-><init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    sget-object v2, Lcom/android/systemui/mediaprojection/SessionCreationSource;->SYSTEM_UI_SCREEN_RECORDER:Lcom/android/systemui/mediaprojection/SessionCreationSource;

    iget-object v3, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->mediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;->notifyProjectionInitiated(ILcom/android/systemui/mediaprojection/SessionCreationSource;)V

    sget-object v0, Lcom/android/systemui/flags/Flags;->WM_ENABLE_PARTIAL_SCREEN_SHARING:Lcom/android/systemui/flags/ReleasedFlag;

    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->state:Lcom/android/systemui/recordissue/IssueRecordingState;

    iget-object v0, v0, Lcom/android/systemui/recordissue/IssueRecordingState;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "HasApprovedScreenRecord"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onScreenRecordSwitchClicked$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$onScreenRecordSwitchClicked$2;-><init>(Lcom/android/systemui/recordissue/RecordIssueDialogDelegate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
