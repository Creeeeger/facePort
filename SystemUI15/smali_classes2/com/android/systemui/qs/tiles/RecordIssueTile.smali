.class public final Lcom/android/systemui/qs/tiles/RecordIssueTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final delegateFactory:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$Factory;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final issueRecordingState:Lcom/android/systemui/recordissue/IssueRecordingState;

.field public final keyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final onRecordingChangeListener:Lcom/android/systemui/qs/tiles/RecordIssueTile$onRecordingChangeListener$1;

.field public final panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final traceurMessageSender:Lcom/android/systemui/recordissue/TraceurMessageSender;

.field public final userContextProvider:Lcom/android/systemui/settings/UserContextProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/RecordIssueTile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/RecordIssueTile$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/recordissue/TraceurMessageSender;Ljava/util/concurrent/Executor;Lcom/android/systemui/recordissue/IssueRecordingState;Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$Factory;)V
    .locals 2

    move-object v0, p0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->keyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->userContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->traceurMessageSender:Lcom/android/systemui/recordissue/TraceurMessageSender;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->bgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->issueRecordingState:Lcom/android/systemui/recordissue/IssueRecordingState;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->delegateFactory:Lcom/android/systemui/recordissue/RecordIssueDialogDelegate$Factory;

    new-instance v1, Lcom/android/systemui/qs/tiles/RecordIssueTile$onRecordingChangeListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/RecordIssueTile$onRecordingChangeListener$1;-><init>(Lcom/android/systemui/qs/tiles/RecordIssueTile;)V

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->onRecordingChangeListener:Lcom/android/systemui/qs/tiles/RecordIssueTile$onRecordingChangeListener$1;

    return-void
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130e89

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->issueRecordingState:Lcom/android/systemui/recordissue/IssueRecordingState;

    iget-boolean v0, v0, Lcom/android/systemui/recordissue/IssueRecordingState;->isRecording:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->userContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/recordissue/IssueRecordingService;->Companion:Lcom/android/systemui/recordissue/IssueRecordingService$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/recordissue/IssueRecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.systemui.screenrecord.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0xc000000

    const/4 v1, 0x2

    invoke-static {p1, v1, p0, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/BroadcastOptions;->setInteractive(Z)Landroid/app/BroadcastOptions;

    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/RecordIssueTile$handleClick$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/RecordIssueTile$handleClick$1;-><init>(Lcom/android/systemui/qs/tiles/RecordIssueTile;Lcom/android/systemui/animation/Expandable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/qs/tiles/RecordIssueTile$handleDestroy$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/RecordIssueTile$handleDestroy$1;-><init>(Lcom/android/systemui/qs/tiles/RecordIssueTile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->onRecordingChangeListener:Lcom/android/systemui/qs/tiles/RecordIssueTile$onRecordingChangeListener$1;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->issueRecordingState:Lcom/android/systemui/recordissue/IssueRecordingState;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/recordissue/IssueRecordingState;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recordissue/IssueRecordingState;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->issueRecordingState:Lcom/android/systemui/recordissue/IssueRecordingState;

    iget-boolean p2, p2, Lcom/android/systemui/recordissue/IssueRecordingState;->isRecording:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const/4 p2, 0x2

    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->forceExpandIcon:Z

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130e8b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    const p2, 0x7f080e39

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    :cond_0
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->forceExpandIcon:Z

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130e8a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    const p2, 0x7f080e38

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RecordIssueTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method public final bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/RecordIssueTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RecordIssueTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    return-object v0
.end method
