.class public final Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider$1;->this$0:Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider$1;->this$0:Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;

    iget-object v1, v0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, v0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->schedulerFactory:Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler$Factory;

    invoke-interface {v0}, Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler$Factory;->create()Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler;

    move-result-object v0

    iget-object v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mAnimationHandler:Landroidx/dynamicanimation/animation/AnimationHandler;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v2, :cond_1

    new-instance v2, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>(Landroidx/dynamicanimation/animation/FrameCallbackScheduler;)V

    iput-object v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mAnimationHandler:Landroidx/dynamicanimation/animation/AnimationHandler;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider$1;->this$0:Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;

    iget-object v1, v0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->foldStateProvider:Lcom/android/systemui/unfold/updates/FoldStateProvider;

    check-cast v1, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->addCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider$1;->this$0:Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->foldStateProvider:Lcom/android/systemui/unfold/updates/FoldStateProvider;

    check-cast p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->start()V

    return-void

    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations are still running and the animationhandler should not be set at this timming"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
