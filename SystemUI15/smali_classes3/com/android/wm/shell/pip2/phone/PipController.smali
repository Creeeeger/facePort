.class public final Lcom/android/wm/shell/pip2/phone/PipController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;
.implements Lcom/android/wm/shell/pip2/phone/PipTransitionState$PipTransitionStateChangedListener;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/common/RemoteCallable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public final mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

.field public mPipRecentsAnimationListener:Lcom/android/wm/shell/pip2/phone/PipController$PipAnimationListener;

.field public final mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

.field public final mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip2/phone/PipScheduler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/pip2/phone/PipTransitionState;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iput-object p4, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object p5, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p6, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iput-object p7, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-object p8, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    iput-object p9, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iput-object p10, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    iput-object p11, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iput-object p12, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p13, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    invoke-virtual {p13, p0}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->addPipTransitionStateChangedListener(Lcom/android/wm/shell/pip2/phone/PipTransitionState$PipTransitionStateChangedListener;)V

    iput-object p14, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {}, Lcom/android/wm/shell/common/pip/PipUtils;->isPip2ExperimentEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/wm/shell/pip2/phone/PipController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip2/phone/PipController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip2/phone/PipController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip2/phone/PipScheduler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/pip2/phone/PipTransitionState;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip2/phone/PipController;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v1, "%s: Device doesn\'t support Pip feature"

    const-string v2, "PipController"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0x16452d66e848ce3fL    # -2.053141017576149E201

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move-wide/from16 p1, v3

    move/from16 p3, v5

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipController;

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

    invoke-direct/range {v1 .. v15}, Lcom/android/wm/shell/pip2/phone/PipController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip2/phone/PipScheduler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/pip2/phone/PipTransitionState;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->reloadResources()V

    return-void
.end method

.method public final onDensityOrFontScaleChanged$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipRecentsAnimationListener:Lcom/android/wm/shell/pip2/phone/PipController$PipAnimationListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070cd4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070cf4

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/pip2/phone/PipController$PipAnimationListener;->onPipResourceDimensionsChanged(II)V

    :cond_0
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget v1, v0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    iget-object p1, v0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 1

    iget-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget v0, p2, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    iget-object p1, p2, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method public final onPipTransitionStateChanged(IILandroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No extra bundle for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const-string/jumbo p2, "swipe_to_pip_overlay"

    const-class v1, Landroid/view/SurfaceControl;

    invoke-virtual {p3, p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl;

    const-string v1, "pip_app_bounds"

    const-class v2, Landroid/graphics/Rect;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    if-eqz p3, :cond_1

    move p1, v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App bounds can\'t be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mSwipePipToHomeAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    iget-boolean p2, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-eqz p2, :cond_3

    iput-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mInSwipePipToHomeTransition:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mSwipePipToHomeAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onThemeChanged()V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method
