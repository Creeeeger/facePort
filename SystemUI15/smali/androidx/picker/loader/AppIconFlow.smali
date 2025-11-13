.class public final Landroidx/picker/loader/AppIconFlow;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final base:Landroidx/picker/features/observable/UpdateMutableState;

.field public final defaultIconFlow:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    const-string v1, "<v#0>"

    const/4 v2, 0x0

    const-class v3, Landroidx/picker/loader/AppIconFlow;

    const-string v4, "icon"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Landroidx/picker/loader/AppIconFlow;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroidx/picker/features/observable/UpdateMutableState;Lkotlinx/coroutines/flow/Flow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/features/observable/UpdateMutableState;",
            "Lkotlinx/coroutines/flow/Flow;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/loader/AppIconFlow;->base:Landroidx/picker/features/observable/UpdateMutableState;

    iput-object p2, p0, Landroidx/picker/loader/AppIconFlow;->defaultIconFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Landroidx/picker/loader/AppIconFlow$collect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/picker/loader/AppIconFlow$collect$1;

    iget v1, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/picker/loader/AppIconFlow$collect$1;

    invoke-direct {v0, p0, p2}, Landroidx/picker/loader/AppIconFlow$collect$1;-><init>(Landroidx/picker/loader/AppIconFlow;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$2:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/features/observable/UpdateMutableState;

    iget-object p1, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/picker/loader/AppIconFlow;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p2, Landroidx/picker/loader/AppIconFlow;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object p2, p2, v2

    iget-object p2, p0, Landroidx/picker/loader/AppIconFlow;->base:Landroidx/picker/features/observable/UpdateMutableState;

    invoke-interface {p2}, Landroidx/picker/features/observable/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iput-object p0, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->label:I

    invoke-interface {p1, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_5
    move-object v2, v5

    :goto_2
    if-nez v2, :cond_7

    iget-object p0, p0, Landroidx/picker/loader/AppIconFlow;->defaultIconFlow:Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Landroidx/picker/loader/AppIconFlow$collect$3;

    invoke-direct {v2, p1, p2}, Landroidx/picker/loader/AppIconFlow$collect$3;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Landroidx/picker/features/observable/UpdateMutableState;)V

    iput-object v5, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/picker/loader/AppIconFlow$collect$1;->label:I

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
