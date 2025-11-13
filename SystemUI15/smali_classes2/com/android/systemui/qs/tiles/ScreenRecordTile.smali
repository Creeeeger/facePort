.class public final Lcom/android/systemui/qs/tiles/ScreenRecordTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;


# instance fields
.field public final mController:Lcom/android/systemui/screenrecord/RecordingController;

.field public final mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final mFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mMediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

.field public mMillisUntilFinished:J

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;Lcom/android/systemui/settings/UserContextProvider;)V
    .locals 12

    move-object v10, p0

    move-object/from16 v11, p11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;I)V

    const-wide/16 v1, 0x0

    iput-wide v1, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mMillisUntilFinished:J

    iput-object v11, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {v11, v1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p7

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v0, p12

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    move-object/from16 v0, p13

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v0, p14

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    move-object/from16 v0, p15

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    move-object/from16 v0, p16

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mMediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    move-object/from16 v0, p17

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    return-void
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130f36

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    iget-boolean v1, v0, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    if-eqz v1, :cond_0

    const-string p1, "ScreenRecordTile"

    const-string v1, "Cancelling countdown"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->cancelCountdown$1()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->stopRecording$1()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/ScreenRecordTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;Lcom/android/systemui/animation/Expandable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    iget-boolean v0, p2, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    invoke-virtual {p2}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const/4 v3, 0x2

    if-nez p2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v3

    :goto_3
    iput v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f130f36

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz v4, :cond_4

    const v4, 0x7f080e3b

    goto :goto_4

    :cond_4
    const v4, 0x7f080e3a

    :goto_4
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v4, v2, :cond_5

    move v4, v2

    goto :goto_5

    :cond_5
    move v4, v1

    :goto_5
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->forceExpandIcon:Z

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p2, 0x7f130f38

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_6

    :cond_6
    if-eqz v0, :cond_7

    iget-wide v4, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mMillisUntilFinished:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    const/16 p0, 0x3e8

    invoke-static {v4, v5, p0}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v4

    long-to-int p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%d..."

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_6

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p2, 0x7f130f37

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_6
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_8
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/CharSequence;

    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object p2, p0, v1

    const-string p2, ", "

    aput-object p2, p0, v2

    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    aput-object p2, p0, v3

    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_7
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 2

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f130f36

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    return-object v0
.end method
