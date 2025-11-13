.class public Landroid/view/InsetsSourceConsumer;
.super Ljava/lang/Object;
.source "InsetsSourceConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsSourceConsumer$ShowResult;
    }
.end annotation


# static fields
.field protected static final blacklist ANIMATION_STATE_HIDE:I = 0x2

.field protected static final blacklist ANIMATION_STATE_NONE:I = 0x0

.field protected static final blacklist ANIMATION_STATE_SHOW:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "InsetsSourceConsumer"


# instance fields
.field protected blacklist mAnimationState:I

.field protected final blacklist mController:Landroid/view/InsetsController;

.field private blacklist mHasViewFocusWhenWindowFocusGain:Z

.field private blacklist mHasWindowFocus:Z

.field private blacklist mId:I

.field private blacklist mPendingFrame:Landroid/graphics/Rect;

.field private blacklist mPendingVisibleFrame:Landroid/graphics/Rect;

.field private blacklist mSourceControl:Landroid/view/InsetsSourceControl;

.field protected final blacklist mState:Landroid/view/InsetsState;

.field private final blacklist mTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mType:I


# direct methods
.method public constructor blacklist <init>(IILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/view/InsetsState;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/view/InsetsController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    iput p1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    iput p2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    iput-object p3, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iput-object p4, p0, Landroid/view/InsetsSourceConsumer;->mTransactionSupplier:Ljava/util/function/Supplier;

    iput-object p5, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    return-void
.end method

.method private blacklist applyRequestedVisibilityToControl()V
    .locals 5

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    :try_start_0
    const-string v2, "InsetsSourceConsumer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyRequestedVisibilityToControl: visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v4}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v0, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v2

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public blacklist applyLocalVisibilityOverride()Z
    .locals 7

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v2

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v4

    const-string v5, "InsetsSourceConsumer"

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v4, :cond_3

    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v3}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v3, v4, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "applyLocalVisibilityOverride: No control in %s for type %s, requestedVisible=%s"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    sget v6, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    if-nez v4, :cond_7

    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v3}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v4}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "applyLocalVisibilityOverride: Set the source visibility to false, as there is no leash yet for type %s in %s"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    return v3

    :cond_5
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v4, :cond_7

    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyLocalVisibilityOverride: No control in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v4}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestedVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v1

    :cond_7
    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-ne v4, v2, :cond_8

    return v1

    :cond_8
    sget-boolean v1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "applyLocalVisibilityOverride: %s requestedVisible: %b"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v0, v2}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    return v3
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000003L

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isShowRequested()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsSourceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_2
    const-wide v2, 0x10500000007L

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000008L

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public blacklist getControl()Landroid/view/InsetsSourceControl;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    return-object v0
.end method

.method blacklist getId()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    return v0
.end method

.method blacklist getType()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    return v0
.end method

.method blacklist hasViewFocusWhenWindowFocusGain()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    return v0
.end method

.method protected blacklist isRequestedVisibleAwaitingControl()Z
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected blacklist isShowRequested()Z
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist onAnimationStateChanged(Z)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    :cond_1
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isShowRequested()Z

    move-result v1

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->getCancelledForNewAnimationTypes()I

    move-result v2

    iget v6, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    goto :goto_2

    :cond_3
    if-nez p1, :cond_5

    if-eqz v1, :cond_5

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    if-ne v2, v3, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    if-ne v2, v5, :cond_6

    move v2, v5

    goto :goto_1

    :cond_6
    move v2, v4

    :goto_1
    nop

    :goto_2
    if-eqz p1, :cond_7

    if-eqz v1, :cond_8

    move v3, v5

    goto :goto_3

    :cond_7
    move v3, v4

    :cond_8
    :goto_3
    iput v3, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    if-nez v2, :cond_9

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v3

    or-int/2addr v0, v3

    :cond_9
    return v0
.end method

.method public blacklist onPerceptible(Z)V
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->reportPerceptible(Landroid/os/IBinder;Z)V

    :cond_0
    return-void
.end method

.method public blacklist onWindowFocusGained(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    iput-boolean p1, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    return-void
.end method

.method public blacklist removeSurface()V
    .locals 0

    return-void
.end method

.method blacklist requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    return-void
.end method

.method public blacklist requestShow(ZLandroid/view/inputmethod/ImeTracker$Token;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setControl(Landroid/view/InsetsSourceControl;[I[I)Z
    .locals 9

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const-string v2, "InsetsSourceConsumer"

    if-eqz p1, :cond_2

    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v3

    invoke-static {v3}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v4}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "setControl -> %s on %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v4, 0x1

    if-nez v3, :cond_7

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2, p0}, Landroid/view/InsetsController;->notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v3}, Landroid/view/InsetsController;->getLastDispatchedState()Landroid/view/InsetsState;

    move-result-object v3

    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v3, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v1

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    :cond_5
    if-eq v5, v1, :cond_6

    iget-object v6, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v6}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    :cond_6
    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v3

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_c

    if-eqz v5, :cond_9

    invoke-virtual {v6, v5}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v7

    if-nez v7, :cond_c

    :cond_9
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->isInitiallyVisible()Z

    move-result v7

    if-eq v3, v7, :cond_c

    sget-boolean v7, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v7}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Gaining leash in %s, requestedVisible: %b"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v3, :cond_b

    aget v2, p2, v1

    iget v7, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr v2, v7

    aput v2, p2, v1

    goto :goto_2

    :cond_b
    aget v2, p3, v1

    iget v7, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr v2, v7

    aput v2, p3, v1

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    :cond_d
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v1, v2}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->applyRequestedVisibilityToControl()V

    :cond_e
    if-nez v3, :cond_f

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    :cond_f
    :goto_2
    if-eqz v0, :cond_10

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    :cond_10
    return v4
.end method

.method blacklist setId(I)V
    .locals 0

    iput p1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    return-void
.end method

.method public blacklist updateSource(Landroid/view/InsetsSource;I)V
    .locals 4

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, p1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object p1, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    nop

    :goto_0
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    sget-boolean v1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InsetsSourceConsumer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    :goto_1
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-void
.end method
