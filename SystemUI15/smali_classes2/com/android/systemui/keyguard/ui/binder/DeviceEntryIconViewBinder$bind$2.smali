.class final Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $bgView:Landroid/widget/ImageView;

.field final synthetic $longPressHandlingView:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

.field final synthetic $vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field final synthetic $view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

.field final synthetic $viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lcom/android/systemui/common/ui/view/LongPressHandlingView;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Lcom/android/systemui/statusbar/VibratorHelper;Lkotlinx/coroutines/CoroutineScope;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;",
            "Lcom/android/systemui/common/ui/view/LongPressHandlingView;",
            "Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroid/widget/ImageView;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$longPressHandlingView:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$bgView:Landroid/widget/ImageView;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    check-cast p2, Landroid/view/View;

    move-object v7, p3

    check-cast v7, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$longPressHandlingView:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$bgView:Landroid/widget/ImageView;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lcom/android/systemui/common/ui/view/LongPressHandlingView;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Lcom/android/systemui/statusbar/VibratorHelper;Lkotlinx/coroutines/CoroutineScope;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->L$0:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v11, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$longPressHandlingView:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iget-object v7, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v8, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v9, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->$bgView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lcom/android/systemui/common/ui/view/LongPressHandlingView;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Lcom/android/systemui/statusbar/VibratorHelper;Lkotlinx/coroutines/CoroutineScope;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;->label:I

    invoke-static {p1, v1, v11, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
