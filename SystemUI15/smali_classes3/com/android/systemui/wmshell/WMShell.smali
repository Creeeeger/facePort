.class public final Lcom/android/systemui/wmshell/WMShell;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mCommunalTransitionViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/wmshell/WMShell$1;

.field public final mContext:Landroid/content/Context;

.field public final mDesktopModeOptional:Ljava/util/Optional;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mEnterSplitGestureHandlerOptional:Ljava/util/Optional;

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public final mKeyguardStateCallback:Lcom/android/systemui/wmshell/WMShell$2;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mNoteTaskInitializer:Lcom/android/systemui/notetask/NoteTaskInitializer;

.field public final mOneHandedOptional:Ljava/util/Optional;

.field public final mPipOptional:Ljava/util/Optional;

.field public final mRecentTasksOptional:Ljava/util/Optional;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mShell:Lcom/android/wm/shell/sysui/ShellInterface;

.field public final mSplitScreenOptional:Ljava/util/Optional;

.field public final mSysUiMainExecutor:Ljava/util/concurrent/Executor;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public mWakefulnessObserver:Lcom/android/systemui/wmshell/WMShell$12;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInterface;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/notetask/NoteTaskInitializer;Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;Lcom/android/systemui/util/kotlin/JavaAdapter;Ljava/util/concurrent/Executor;Ljava/util/Optional;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInterface;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopMode;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasks;",
            ">;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Lcom/android/systemui/notetask/NoteTaskInitializer;",
            "Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;",
            "Lcom/android/systemui/util/kotlin/JavaAdapter;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/WMShell$1;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mConfigurationListener:Lcom/android/systemui/wmshell/WMShell$1;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/WMShell$2;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardStateCallback:Lcom/android/systemui/wmshell/WMShell$2;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/WMShell$3;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/WMShell$4;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mContext:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mShell:Lcom/android/wm/shell/sysui/ShellInterface;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mPipOptional:Ljava/util/Optional;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mSplitScreenOptional:Ljava/util/Optional;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mOneHandedOptional:Ljava/util/Optional;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mDesktopModeOptional:Ljava/util/Optional;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mRecentTasksOptional:Ljava/util/Optional;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mNoteTaskInitializer:Lcom/android/systemui/notetask/NoteTaskInitializer;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mCommunalTransitionViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mSysUiMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/wmshell/WMShell;->mEnterSplitGestureHandlerOptional:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dumping with args: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-static {v1, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui.wmshell.WMShell"

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, "dependency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    array-length v1, p2

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mShell:Lcom/android/wm/shell/sysui/ShellInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/sysui/ShellInterface;->handleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sysui/ShellInterface;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public initOneHanded(Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 5

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$10;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    move-object v1, p1

    check-cast v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    iget-object v2, v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    iget-object v2, v2, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Ljava/lang/Object;I)V

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$11;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    iget-object v2, v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    iget-object v2, v2, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v0, v4}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Ljava/lang/Object;I)V

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$12;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$12;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$13;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$13;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$14;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$14;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public initPip(Lcom/android/wm/shell/pip/Pip;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$5;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/pip/Pip;)V

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/WMShell;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    return-void
.end method

.method public initRecentTasks(Lcom/android/wm/shell/recents/RecentTasks;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiMainExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    move-object v1, p1

    check-cast v1, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    iget-object v3, v1, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;->this$0:Lcom/android/wm/shell/recents/RecentTasksController;

    iget-object v3, v3, Lcom/android/wm/shell/recents/RecentTasksController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v4, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v0, v2}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;Ljava/util/concurrent/Executor;Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;)V

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommunalTransitionViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;

    iget-object v0, v0, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;->recentsBackgroundColor:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public initSplitScreen(Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 5

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$6;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$7;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$7;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$8;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiMainExecutor:Ljava/util/concurrent/Executor;

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    invoke-virtual {p1, v0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->registerSplitAnimationListener(Lcom/android/systemui/wmshell/WMShell$8;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    iget-object v2, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda7;

    const/4 v4, 0x2

    invoke-direct {v3, p1, v0, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Ljava/lang/Object;I)V

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$9;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$9;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->sInstance:Lcom/samsung/android/systemui/multistar/MultiStarManager$1;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MultiStarManager"

    const-string v2, "Create"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    iput-object v1, v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mMultiStarSystemFacade:Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/SPluginManager;

    new-instance p1, Lcom/samsung/android/systemui/multistar/MultiStarManager$2;

    invoke-direct {p1, v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager$2;-><init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V

    const-class v0, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public final isDumpCritical()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final start()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mShell:Lcom/android/wm/shell/sysui/ShellInterface;

    invoke-interface {v1, v0}, Lcom/android/wm/shell/sysui/ShellInterface;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mConfigurationListener:Lcom/android/systemui/wmshell/WMShell$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardStateCallback:Lcom/android/systemui/wmshell/WMShell$2;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mPipOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wmshell/WMShell;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wmshell/WMShell;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mOneHandedOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wmshell/WMShell;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mDesktopModeOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wmshell/WMShell;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mRecentTasksOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wmshell/WMShell;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mNoteTaskInitializer:Lcom/android/systemui/notetask/NoteTaskInitializer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-class v1, Lcom/android/systemui/notetask/NoteTaskInitializer;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-boolean v1, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->isEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->optionalBubbles:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v2, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->callbacks:Lcom/android/systemui/notetask/NoteTaskInitializer$callbacks$1;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v1, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->roleManager:Landroid/app/role/RoleManager;

    iget-object v3, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->backgroundExecutor:Ljava/util/concurrent/Executor;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    iget-object v1, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    invoke-virtual {v3}, Lcom/android/systemui/notetask/NoteTaskController;->updateNoteTaskForCurrentUserAndManagedProfiles()V

    :cond_1
    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mEnterSplitGestureHandlerOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wmshell/WMShell;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
