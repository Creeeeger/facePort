.class public final Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;

.field public final displayControllerProvider:Ljavax/inject/Provider;

.field public final displayInsetsControllerProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final oneHandedControllerProvider:Ljavax/inject/Provider;

.field public final phonePipMenuControllerProvider:Ljavax/inject/Provider;

.field public final pipAnimationControllerProvider:Ljavax/inject/Provider;

.field public final pipAppOpsListenerProvider:Ljavax/inject/Provider;

.field public final pipBoundsAlgorithmProvider:Ljavax/inject/Provider;

.field public final pipBoundsStateProvider:Ljavax/inject/Provider;

.field public final pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

.field public final pipKeepClearAlgorithmProvider:Ljavax/inject/Provider;

.field public final pipMediaControllerProvider:Ljavax/inject/Provider;

.field public final pipMotionHelperProvider:Ljavax/inject/Provider;

.field public final pipParamsChangedForwarderProvider:Ljavax/inject/Provider;

.field public final pipTabletopControllerProvider:Ljavax/inject/Provider;

.field public final pipTaskOrganizerProvider:Ljavax/inject/Provider;

.field public final pipTouchHandlerProvider:Ljavax/inject/Provider;

.field public final pipTransitionControllerProvider:Ljavax/inject/Provider;

.field public final pipTransitionStateProvider:Ljavax/inject/Provider;

.field public final shellCommandHandlerProvider:Ljavax/inject/Provider;

.field public final shellControllerProvider:Ljavax/inject/Provider;

.field public final shellInitProvider:Ljavax/inject/Provider;

.field public final taskStackListenerProvider:Ljavax/inject/Provider;

.field public final windowManagerShellWrapperProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->shellInitProvider:Ljavax/inject/Provider;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->shellControllerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->displayControllerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipAnimationControllerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipAppOpsListenerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipKeepClearAlgorithmProvider:Ljavax/inject/Provider;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipBoundsStateProvider:Ljavax/inject/Provider;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipMotionHelperProvider:Ljavax/inject/Provider;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipMediaControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->phonePipMenuControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipTaskOrganizerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipTransitionStateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipTouchHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipTransitionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->windowManagerShellWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->taskStackListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->displayInsetsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipTabletopControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->oneHandedControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static providePip1(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/common/pip/PipAppOpsListener;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PhonePipKeepClearAlgorithm;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/common/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;
    .locals 27

    invoke-static {}, Lcom/android/wm/shell/common/pip/PipUtils;->isPip2ExperimentEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    sget v0, Lcom/android/wm/shell/pip/phone/PipController;->$r8$clinit:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v1, "PipController"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s: Device doesn\'t support Pip feature"

    const-wide v3, -0xae32d208498c726L

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move-wide/from16 p1, v3

    move/from16 p3, v5

    move-object/from16 p4, v2

    move-object/from16 p5, v1

    invoke-static/range {p0 .. p5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    invoke-direct/range {v1 .. v26}, Lcom/android/wm/shell/pip/phone/PipController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/common/pip/PipAppOpsListener;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/common/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mImpl:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->shellInitProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->shellControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->displayControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipAnimationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipAppOpsListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/common/pip/PipAppOpsListener;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipKeepClearAlgorithmProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/wm/shell/common/pip/PhonePipKeepClearAlgorithm;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipBoundsStateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipMotionHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipMediaControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/wm/shell/common/pip/PipMediaController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->phonePipMenuControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipTaskOrganizerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipTransitionStateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/wm/shell/pip/PipTransitionState;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipTouchHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipTransitionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->windowManagerShellWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/wm/shell/WindowManagerShellWrapper;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->taskStackListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->displayInsetsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->pipTabletopControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/wm/shell/common/TabletopModeController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->oneHandedControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Ljava/util/Optional;

    iget-object v0, v0, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v26}, Lcom/android/wm/shell/dagger/pip/Pip1Module_ProvidePip1Factory;->providePip1(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/common/pip/PipAppOpsListener;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PhonePipKeepClearAlgorithm;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/common/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
