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
.field private static final blacklist TAG:Ljava/lang/String; = "InsetsSourceConsumer"


# instance fields
.field protected final blacklist mController:Landroid/view/InsetsController;

.field private blacklist mHasViewFocusWhenWindowFocusGain:Z

.field private blacklist mHasWindowFocus:Z

.field private blacklist mIsAnimationPending:Z

.field private blacklist mPendingFrame:Landroid/graphics/Rect;

.field private blacklist mPendingVisibleFrame:Landroid/graphics/Rect;

.field protected blacklist mRequestedVisible:Z

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

.field protected final blacklist mType:I


# direct methods
.method public constructor blacklist <init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "state"    # Landroid/view/InsetsState;
    .param p4, "controller"    # Landroid/view/InsetsController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InsetsState;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/view/InsetsController;",
            ")V"
        }
    .end annotation

    .line 117
    .local p3, "transactionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    .line 119
    iput-object p2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    .line 120
    iput-object p3, p0, Landroid/view/InsetsSourceConsumer;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 121
    iput-object p4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 122
    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    .line 123
    return-void
.end method

.method private blacklist applyRequestedVisibilityToControl()V
    .locals 4

    .line 467
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 469
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_3

    .line 474
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 475
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_0
    sget-boolean v1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "InsetsSourceConsumer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyRequestedVisibilityToControl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_1
    iget-boolean v1, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-eqz v1, :cond_2

    .line 477
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 479
    :cond_2
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 482
    :goto_0
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 483
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 485
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_4
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    invoke-virtual {p0, v0}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 486
    return-void

    .line 474
    .restart local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v1

    .line 471
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_6
    :goto_3
    return-void
.end method

.method private blacklist isVisibleAndHasLeashButNoAnimation()Z
    .locals 2

    .line 507
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 509
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 507
    :goto_0
    return v0
.end method

.method private blacklist updateCompatSysUiVisibility(ZLandroid/view/InsetsSource;Z)V
    .locals 5
    .param p1, "hasControl"    # Z
    .param p2, "source"    # Landroid/view/InsetsSource;
    .param p3, "visible"    # Z

    .line 314
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v0}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v0

    .line 315
    .local v0, "publicType":I
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 316
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 318
    return-void

    .line 321
    :cond_0
    if-eqz p1, :cond_1

    .line 322
    iget-boolean v1, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    .local v1, "compatVisible":Z
    goto :goto_1

    .line 323
    .end local v1    # "compatVisible":Z
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 324
    move v1, p3

    .restart local v1    # "compatVisible":Z
    goto :goto_1

    .line 326
    .end local v1    # "compatVisible":Z
    :cond_2
    invoke-static {v0}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 327
    .local v1, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 328
    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 329
    .local v3, "s":Landroid/view/InsetsSource;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 332
    return-void

    .line 327
    .end local v3    # "s":Landroid/view/InsetsSource;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 337
    .end local v2    # "i":I
    :cond_4
    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    move v1, v2

    .line 339
    .local v1, "compatVisible":Z
    :goto_1
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v2, v3, v1, p1}, Landroid/view/InsetsController;->updateCompatSysUiVisibility(IZZ)V

    .line 340
    return-void
.end method


# virtual methods
.method blacklist applyLocalVisibilityOverride()Z
    .locals 9

    .line 284
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 285
    .local v0, "source":Landroid/view/InsetsSource;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v1

    .line 286
    .local v1, "isVisible":Z
    :goto_0
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    .line 288
    .local v2, "hasControl":Z
    :goto_1
    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    const/16 v6, 0x13

    if-ne v5, v6, :cond_2

    .line 289
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v5

    iget-object v6, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 291
    invoke-virtual {v6}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    const/4 v7, 0x0

    .line 289
    const-string v8, "InsetsSourceConsumer#applyLocalVisibilityOverride"

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 294
    :cond_2
    invoke-direct {p0, v2, v0, v1}, Landroid/view/InsetsSourceConsumer;->updateCompatSysUiVisibility(ZLandroid/view/InsetsSource;Z)V

    .line 297
    const-string v5, "InsetsSourceConsumer"

    if-nez v2, :cond_4

    .line 298
    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyLocalVisibilityOverride: No control in "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 299
    invoke-virtual {v6}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " requestedVisible "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v6, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_3
    return v4

    .line 303
    :cond_4
    iget-boolean v6, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-ne v1, v6, :cond_5

    .line 304
    return v4

    .line 306
    :cond_5
    sget-boolean v6, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 307
    invoke-virtual {v7}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    iget-boolean v4, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v3

    .line 306
    const-string v4, "applyLocalVisibilityOverride: %s requestedVisible: %b"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_6
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    iget-boolean v5, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    invoke-virtual {v4, v5}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 309
    return v3
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 489
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 490
    .local v0, "token":J
    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v2}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 491
    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 492
    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 493
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v2, :cond_0

    .line 494
    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsSourceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 496
    :cond_0
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 497
    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 499
    :cond_1
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 500
    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 502
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 503
    return-void
.end method

.method blacklist ensureControlPosition()V
    .locals 5

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureControlPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    .line 514
    invoke-static {v1}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 515
    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 516
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    const-string v1, "InsetsSourceConsumer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 518
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 519
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 520
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 518
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 521
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    new-instance v3, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 523
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v3, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 521
    invoke-virtual {v1, v2}, Landroid/view/InsetsController;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 524
    return-void
.end method

.method public blacklist getControl()Landroid/view/InsetsSourceControl;
    .locals 1

    .line 229
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    return-object v0
.end method

.method blacklist getType()I
    .locals 1

    .line 243
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    return v0
.end method

.method blacklist hasViewFocusWhenWindowFocusGain()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    return v0
.end method

.method public blacklist hide()V
    .locals 4

    .line 255
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    .line 256
    invoke-static {v2}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v3}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 255
    const-string v2, "Call hide for %s on %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "InsetsSourceConsumer"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/InsetsSourceConsumer;->setRequestedVisible(Z)V

    .line 258
    return-void
.end method

.method blacklist hide(ZI)V
    .locals 0
    .param p1, "animationFinished"    # Z
    .param p2, "animationType"    # I

    .line 261
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->hide()V

    .line 262
    return-void
.end method

.method public blacklist isRequestedVisible()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    return v0
.end method

.method protected blacklist isRequestedVisibleAwaitingControl()Z
    .locals 1

    .line 239
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    return v0
.end method

.method public blacklist notifyAnimationFinished()Z
    .locals 2

    .line 415
    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->isVisibleAndHasLeashButNoAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->ensureControlPosition()V

    .line 422
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 424
    .local v0, "source":Landroid/view/InsetsSource;
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 425
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    .line 426
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 427
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 428
    const/4 v1, 0x1

    return v1

    .line 430
    .end local v0    # "source":Landroid/view/InsetsSource;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method blacklist notifyHidden()V
    .locals 0

    .line 374
    return-void
.end method

.method public blacklist onPerceptible(Z)V
    .locals 0
    .param p1, "perceptible"    # Z

    .line 367
    return-void
.end method

.method public blacklist onWindowFocusGained(Z)V
    .locals 1
    .param p1, "hasViewFocus"    # Z

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    .line 269
    iput-boolean p1, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    .line 270
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .locals 1

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    .line 277
    return-void
.end method

.method public blacklist removeSurface()V
    .locals 0

    .line 381
    return-void
.end method

.method public blacklist requestShow(Z)I
    .locals 1
    .param p1, "fromController"    # Z

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setControl(Landroid/view/InsetsSourceControl;[I[I)Z
    .locals 10
    .param p1, "control"    # Landroid/view/InsetsSourceControl;
    .param p2, "showTypes"    # [I
    .param p3, "hideTypes"    # [I

    .line 136
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    .line 137
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 138
    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 137
    const-string v3, "InsetsSourceConsumer#setControl"

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    .line 142
    new-instance v1, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 143
    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 145
    :cond_1
    return v2

    .line 147
    :cond_2
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    :cond_3
    move-object v0, v1

    .line 149
    .local v0, "oldLeash":Landroid/view/SurfaceControl;
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 150
    .local v1, "lastControl":Landroid/view/InsetsSourceControl;
    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 151
    const/4 v3, 0x2

    const-string v4, "InsetsSourceConsumer"

    const/4 v5, 0x1

    if-eqz p1, :cond_4

    .line 152
    sget-boolean v6, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v6, :cond_4

    new-array v6, v3, [Ljava/lang/Object;

    .line 153
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v7

    invoke-static {v7}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 154
    invoke-virtual {v7}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 152
    const-string/jumbo v7, "setControl -> %s on %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_4
    iget-object v6, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v6, :cond_6

    .line 158
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2, p0}, Landroid/view/InsetsController;->notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V

    .line 161
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 162
    .local v2, "source":Landroid/view/InsetsSource;
    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 163
    invoke-virtual {v3}, Landroid/view/InsetsController;->getLastDispatchedState()Landroid/view/InsetsState;

    move-result-object v3

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v3

    .line 164
    .local v3, "serverVisibility":Z
    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-eq v4, v3, :cond_5

    .line 165
    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 166
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v4}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 170
    :cond_5
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    .line 171
    .end local v2    # "source":Landroid/view/InsetsSource;
    .end local v3    # "serverVisibility":Z
    goto/16 :goto_2

    .line 174
    :cond_6
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v6

    .line 175
    .local v6, "requestedVisible":Z
    sget-object v7, Landroid/view/InsetsSourceControl;->INVALID_HINTS:Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 176
    .local v7, "fakeControl":Z
    iget-object v8, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v9, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v8, v9}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v8

    if-eq v6, v8, :cond_7

    if-nez v7, :cond_7

    move v8, v5

    goto :goto_0

    :cond_7
    move v8, v2

    .line 178
    .local v8, "needsAnimation":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    if-eqz v9, :cond_b

    if-nez v8, :cond_8

    iget-boolean v9, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    if-eqz v9, :cond_b

    .line 179
    :cond_8
    sget-boolean v9, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v9, :cond_9

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v9, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 180
    invoke-virtual {v9}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v3, v5

    .line 179
    const-string v9, "Gaining control in %s, requestedVisible: %b"

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_9
    if-eqz v6, :cond_a

    .line 182
    aget v3, p2, v2

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v4

    or-int/2addr v3, v4

    aput v3, p2, v2

    goto :goto_1

    .line 184
    :cond_a
    aget v3, p3, v2

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v4

    or-int/2addr v3, v4

    aput v3, p3, v2

    .line 186
    :goto_1
    iput-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    goto :goto_2

    .line 188
    :cond_b
    if-eqz v8, :cond_c

    .line 191
    iput-boolean v5, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    .line 195
    :cond_c
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 196
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 201
    :cond_d
    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->applyRequestedVisibilityToControl()V

    .line 204
    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->isVisibleAndHasLeashButNoAnimation()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v1, :cond_e

    .line 205
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 206
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    .line 205
    invoke-virtual {v2, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 211
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->ensureControlPosition()V

    .line 216
    :cond_e
    if-nez v6, :cond_f

    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    if-nez v2, :cond_f

    if-nez v1, :cond_f

    .line 217
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    .line 221
    .end local v6    # "requestedVisible":Z
    .end local v7    # "fakeControl":Z
    .end local v8    # "needsAnimation":Z
    :cond_f
    :goto_2
    if-eqz v1, :cond_10

    .line 222
    new-instance v2, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 224
    :cond_10
    return v5
.end method

.method protected blacklist setRequestedVisible(Z)V
    .locals 3
    .param p1, "requestedVisible"    # Z

    .line 438
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-eq v0, p1, :cond_2

    .line 439
    iput-boolean p1, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    .line 445
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 448
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    .line 450
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0, p0}, Landroid/view/InsetsController;->onRequestedVisibilityChanged(Landroid/view/InsetsSourceConsumer;)V

    .line 451
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    const-string v1, "InsetsSourceConsumer"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequestedVisible: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequestedVisible: visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 455
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", host="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 456
    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", from="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    .line 457
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_2
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 464
    :cond_3
    return-void
.end method

.method public blacklist show(Z)V
    .locals 4
    .param p1, "fromIme"    # Z

    .line 248
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    .line 249
    invoke-static {v3}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 248
    const-string v2, "Call show() for type: %s fromIme: %b "

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "InsetsSourceConsumer"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/InsetsSourceConsumer;->setRequestedVisible(Z)V

    .line 251
    return-void
.end method

.method public blacklist updateSource(Landroid/view/InsetsSource;I)V
    .locals 4
    .param p1, "newSource"    # Landroid/view/InsetsSource;
    .param p2, "animationType"    # I

    .line 385
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 386
    .local v0, "source":Landroid/view/InsetsSource;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    .line 387
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 389
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_0

    .line 390
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    .line 391
    invoke-virtual {v2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 401
    :cond_0
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, p1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object p1, v2

    .line 402
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 403
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 404
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 405
    :cond_1
    nop

    :goto_0
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 406
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 407
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    .line 408
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 409
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

    .line 410
    :cond_2
    return-void

    .line 393
    :cond_3
    :goto_1
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 394
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 395
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 396
    return-void
.end method
