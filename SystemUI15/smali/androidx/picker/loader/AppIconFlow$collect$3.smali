.class public final Landroidx/picker/loader/AppIconFlow$collect$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $collector:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic $icon$delegate:Landroidx/picker/features/observable/UpdateMutableState;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Landroidx/picker/features/observable/UpdateMutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector;",
            "Landroidx/picker/features/observable/UpdateMutableState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/picker/loader/AppIconFlow$collect$3;->$collector:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Landroidx/picker/loader/AppIconFlow$collect$3;->$icon$delegate:Landroidx/picker/features/observable/UpdateMutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroidx/picker/loader/AppIconFlow;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, p0, Landroidx/picker/loader/AppIconFlow$collect$3;->$icon$delegate:Landroidx/picker/features/observable/UpdateMutableState;

    invoke-interface {v0, p1}, Landroidx/picker/features/observable/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/picker/loader/AppIconFlow$collect$3;->$collector:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method
