.class public final Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Runner;
.super Landroid/view/IRemoteAnimationRunner$Default;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Default;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Runner;-><init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;)V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 3

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 p3, 0x0

    new-array p4, p3, [Ljava/lang/Object;

    const-string v0, "Start samsung custom back animation"

    invoke-static {p1, v0, p4}, Lcom/android/internal/protolog/common/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    array-length p1, p2

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_2

    aget-object v0, p2, p4

    iget v1, v0, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    iput-object v0, v2, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    iput-object v0, v1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    iget-object p2, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p2, :cond_5

    iget-object p2, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p4, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p2, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p2}, Landroid/view/RemoteAnimationTarget;->getDisplayId()I

    move-result p2

    iput p2, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mDisplayId:I

    iget-object p2, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mContext:Landroid/content/Context;

    const/4 p4, 0x2

    invoke-static {p2, p4}, Lcom/android/internal/policy/TransitionAnimation;->loadDimAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mPostScrimDimAnimation:Landroid/view/animation/Animation;

    iget-object p2, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimLayer:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string p4, "ScrimDimLayer for predictive_back animation"

    invoke-virtual {p2, p4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string p3, "SamsungCrossActivityBackAnimation#ensureScrimDimLayer"

    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    iget-object p3, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget p4, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mDisplayId:I

    invoke-virtual {p3, p4, p2}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimLayer:Landroid/view/SurfaceControl;

    iget-object p2, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1050034

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iget-object p3, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p4, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iget-object p4, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p4, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p3, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimLayer:Landroid/view/SurfaceControl;

    iget-object p4, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p4, p4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, p4, v0}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->applyTransaction(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_2

    :cond_5
    :goto_1
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p2, "Entering target or closing target is null."

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/android/internal/protolog/common/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    iput-object p5, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method
