.class public Landroid/view/InsetsAnimationThreadControlRunner;
.super Ljava/lang/Object;
.source "InsetsAnimationThreadControlRunner.java"

# interfaces
.implements Landroid/view/InsetsAnimationControlRunner;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InsetsAnimThreadRunner"


# instance fields
.field private final blacklist mCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

.field private blacklist mCancelRequested:Z

.field private final blacklist mControl:Landroid/view/InsetsAnimationControlImpl;

.field private final blacklist mMainThreadHandler:Landroid/os/Handler;

.field private final blacklist mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;


# direct methods
.method public static synthetic blacklist $r8$lambda$5hZN4q5O1of4CixAYO-zjfbxZSo(Landroid/view/InsetsAnimationThreadControlRunner;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsAnimationThreadControlRunner;->lambda$updateLayoutInsetsDuringAnimation$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DLuG7Ht_vy5T5uYr29Rzhu2CZeY(Landroid/view/InsetsAnimationThreadControlRunner;ILandroid/view/WindowInsetsAnimationControlListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/InsetsAnimationThreadControlRunner;->lambda$new$0(ILandroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControl(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainThreadHandler(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOuterCallbacks(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlCallbacks;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/view/InsetsState;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/InsetsAnimationControlCallbacks;",
            "J",
            "Landroid/view/animation/Interpolator;",
            "II",
            "Landroid/content/res/CompatibilityInfo$Translator;",
            "Landroid/os/Handler;",
            "Landroid/view/inputmethod/ImeTracker$Token;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/view/InsetsAnimationThreadControlRunner$1;

    invoke-direct {v1, v0}, Landroid/view/InsetsAnimationThreadControlRunner$1;-><init>(Landroid/view/InsetsAnimationThreadControlRunner;)V

    iput-object v1, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    move-object/from16 v1, p13

    iput-object v1, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v2, p6

    iput-object v2, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    new-instance v15, Landroid/view/InsetsAnimationControlImpl;

    iget-object v9, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    move-object v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-object v1, v15

    move-object/from16 v15, p12

    move-object/from16 v16, p14

    invoke-direct/range {v3 .. v16}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/view/inputmethod/ImeTracker$Token;)V

    iput-object v1, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-static {}, Landroid/view/InsetsAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct {v3, v0, v5, v4}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;-><init>(Landroid/view/InsetsAnimationThreadControlRunner;ILandroid/view/WindowInsetsAnimationControlListener;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic blacklist lambda$new$0(ILandroid/view/WindowInsetsAnimationControlListener;)V
    .locals 3

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAsyncAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-interface {p2, v0, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateLayoutInsetsDuringAnimation$1(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0, p1}, Landroid/view/InsetsAnimationControlImpl;->updateLayoutInsetsDuringAnimation(I)V

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .locals 3

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel, caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsAnimThreadRunner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mCancelRequested:Z

    invoke-static {}, Landroid/view/InsetsAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda1;-><init>(Landroid/view/InsetsAnimationControlImpl;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/InsetsAnimationControlImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method public blacklist getAnimation()Landroid/view/WindowInsetsAnimation;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAnimationType()I
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getAnimationType()I

    move-result v0

    return v0
.end method

.method public blacklist getControllingTypes()I
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getControllingTypes()I

    move-result v0

    return v0
.end method

.method public blacklist getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTypes()I
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getTypes()I

    move-result v0

    return v0
.end method

.method public blacklist isCancelRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mCancelRequested:Z

    return v0
.end method

.method public blacklist notifyControlRevoked(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0, p1}, Landroid/view/InsetsAnimationControlImpl;->notifyControlRevoked(I)V

    return-void
.end method

.method public blacklist updateLayoutInsetsDuringAnimation(I)V
    .locals 2

    invoke-static {}, Landroid/view/InsetsAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsAnimationThreadControlRunner;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist updateSurfacePosition(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v1, p1}, Landroid/view/InsetsAnimationControlImpl;->updateSurfacePosition(Landroid/util/SparseArray;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
