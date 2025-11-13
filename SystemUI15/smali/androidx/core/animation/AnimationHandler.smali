.class public final Landroidx/core/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sAnimationHandler:Ljava/lang/ThreadLocal;


# instance fields
.field public final mAnimationCallbacks:Ljava/util/ArrayList;

.field public mListDirty:Z

.field public final mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/animation/AnimationHandler;->sAnimationHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/animation/AnimationHandler;->mListDirty:Z

    if-nez p1, :cond_0

    new-instance p1, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;

    invoke-direct {p1, p0}, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Landroidx/core/animation/AnimationHandler;)V

    iput-object p1, p0, Landroidx/core/animation/AnimationHandler;->mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/core/animation/AnimationHandler;->mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;

    :goto_0
    return-void
.end method

.method public static getInstance()Landroidx/core/animation/AnimationHandler;
    .locals 3

    sget-object v0, Landroidx/core/animation/AnimationHandler;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/core/animation/AnimationHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/core/animation/AnimationHandler;-><init>(Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimationHandler;

    return-object v0
.end method
