.class final Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;
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
.field final synthetic $fgIconView:Landroid/widget/ImageView;

.field final synthetic $fgViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;

.field final synthetic $overrideColor:Landroidx/compose/ui/graphics/Color;

.field final synthetic $view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Landroidx/compose/ui/graphics/Color;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;",
            "Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;",
            "Landroidx/compose/ui/graphics/Color;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->$fgIconView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->$fgViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->$overrideColor:Landroidx/compose/ui/graphics/Color;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v6, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->$fgIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->$fgViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->$overrideColor:Landroidx/compose/ui/graphics/Color;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;-><init>(Landroid/widget/ImageView;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Landroidx/compose/ui/graphics/Color;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->$fgIconView:Landroid/widget/ImageView;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->$fgViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;

    iget-object v7, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->$fgIconView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iget-object v9, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;->$overrideColor:Landroidx/compose/ui/graphics/Color;

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1$invokeSuspend$$inlined$launch$default$1;

    const/4 v5, 0x0

    const-string v4, "DeviceEntryIconViewBinder#fpIconView.viewModel"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1$invokeSuspend$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;Landroid/widget/ImageView;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Landroidx/compose/ui/graphics/Color;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
