.class final Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;
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

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->$fgIconView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->$fgViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->$overrideColor:Landroidx/compose/ui/graphics/Color;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    check-cast p2, Landroid/view/View;

    move-object v5, p3

    check-cast v5, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->$fgIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->$fgViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->$overrideColor:Landroidx/compose/ui/graphics/Color;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;-><init>(Landroid/widget/ImageView;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Landroidx/compose/ui/graphics/Color;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->L$0:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v9, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->$fgIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->$fgViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;

    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->$view:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iget-object v7, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->$overrideColor:Landroidx/compose/ui/graphics/Color;

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3$1;-><init>(Landroid/widget/ImageView;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Landroidx/compose/ui/graphics/Color;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;->label:I

    invoke-static {p1, v1, v9, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
