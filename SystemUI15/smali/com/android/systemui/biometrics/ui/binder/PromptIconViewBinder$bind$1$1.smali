.class final Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic $iconView:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic $iconViewLayoutParamSizeOverride:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $promptViewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/Pair;Lcom/airbnb/lottie/LottieAnimationView;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconViewLayoutParamSizeOverride:Lkotlin/Pair;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$promptViewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final access$invokeSuspend$updateXmlIconAsset(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/airbnb/lottie/LottieAnimationView;IZLcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;)V
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt;->assetIdToString:Ljava/util/Map;

    new-instance p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconFailureListener$1;

    invoke-direct {p0, p4, p2}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconFailureListener$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;I)V

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v7, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconViewLayoutParamSizeOverride:Lkotlin/Pair;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$promptViewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/Pair;Lcom/airbnb/lottie/LottieAnimationView;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->displayStateInteractor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

    check-cast v0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->screenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-virtual {v0, v1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->onConfigurationChange(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconViewLayoutParamSizeOverride:Lkotlin/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconViewLayoutParamSizeOverride:Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconViewLayoutParamSizeOverride:Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconViewLayoutParamSizeOverride:Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconViewLayoutParamSizeOverride:Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p1, v4, v4, v1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$3;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$3;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v4, v4, v1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$4;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$4;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v4, v4, v1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$5;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v1, v2, p0, v4}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$5;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v4, v4, v1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
