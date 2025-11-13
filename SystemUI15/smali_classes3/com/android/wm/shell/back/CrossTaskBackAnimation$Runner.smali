.class public final Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;
.super Landroid/view/IRemoteAnimationRunner$Default;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Default;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 6

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 p3, 0x0

    aget-boolean p1, p1, p3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "Start back to task animation."

    const/4 v5, 0x0

    const-wide v1, -0x73de5fdc59f8c679L

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    array-length p1, p2

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_3

    aget-object v0, p2, p4

    iget v1, v0, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iput-object v0, v2, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iput-object v0, v1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iget-object p2, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p2, :cond_5

    iget-object p2, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p4, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p2, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget-object p4, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p4, p4, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3, p3, p3, p4}, Landroid/graphics/Rect;->inset(IIII)V

    iget-object p2, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget p4, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStatusbarHeight:I

    iget-object v0, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    const v1, 0x43433a

    invoke-virtual {v0, v1, p4, p2, p3}, Lcom/android/wm/shell/back/BackAnimationBackground;->ensureBackground(IILandroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p2, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0702b5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInterWindowMargin:F

    iget-object p2, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0702b6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p1, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mVerticalMargin:F

    goto :goto_2

    :cond_5
    :goto_1
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean p1, p1, p3

    if-eqz p1, :cond_6

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "Entering target or closing target is null."

    const/4 v5, 0x0

    const-wide v1, 0x27765f343f6737aaL

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iput-object p5, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method
