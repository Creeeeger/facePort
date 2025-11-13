.class final Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;
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
.field label:I

.field final synthetic this$0:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;->this$0:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;

    iget-object p0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;->this$0:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;-><init>(Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/controls/flags/Flags;->homePanelDream()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;->this$0:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;

    iget-object v1, p1, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;->homeControlsComponentInteractor:Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;

    iget-object v1, v1, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->panelComponent:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v3, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1$1;-><init>(Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;)V

    iput v2, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;->label:I

    iget-object p1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;->this$0:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;->packageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;->componentName:Landroid/content/ComponentName;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
