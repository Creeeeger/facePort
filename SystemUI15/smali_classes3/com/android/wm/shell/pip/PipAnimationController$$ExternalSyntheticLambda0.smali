.class public final synthetic Lcom/android/wm/shell/pip/PipAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance p0, Landroid/animation/AnimationHandler;

    invoke-direct {p0}, Landroid/animation/AnimationHandler;-><init>()V

    new-instance v0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v0}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    return-object p0
.end method
