.class public final Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $faceIcon:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $iconView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/drawable/AnimatedVectorDrawable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$4;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$4;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$4;->$faceIcon:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/android/systemui/util/kotlin/Quad;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quad;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quad;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quad;->component3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quad;->component4()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    if-eq p2, v2, :cond_5

    sget-object v2, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$4$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$4;->$faceIcon:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$4;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f12001d

    if-ne p2, v2, :cond_1

    sget-object v2, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt;->assetIdToString:Ljava/util/Map;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconFailureListener$1;

    invoke-direct {v2, v0, p2}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconFailureListener$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;I)V

    invoke-virtual {v6, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    invoke-virtual {v6, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {v6, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    if-eqz v1, :cond_4

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    :cond_1
    invoke-static {v5, v6, p2, v1, v0}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->access$invokeSuspend$updateXmlIconAsset(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/airbnb/lottie/LottieAnimationView;IZLcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;)V

    goto :goto_0

    :cond_2
    const v2, 0x7f08079a

    if-ne p2, v2, :cond_3

    invoke-static {v5, v6, p2, v1, v0}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1;->access$invokeSuspend$updateXmlIconAsset(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/airbnb/lottie/LottieAnimationView;IZLcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt;->assetIdToString:Ljava/util/Map;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconFailureListener$1;

    invoke-direct {v2, v0, p2}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconFailureListener$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;I)V

    invoke-virtual {v6, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    invoke-virtual {v6, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {v6, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    if-eqz v1, :cond_4

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_4
    :goto_0
    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v6}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$4;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->_previousIconWasError:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
