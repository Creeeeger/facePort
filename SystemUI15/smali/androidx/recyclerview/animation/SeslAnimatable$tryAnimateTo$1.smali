.class final Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;
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
.field final synthetic $animationSpec:Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;

.field final synthetic $targetValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Landroidx/recyclerview/animation/SeslAnimatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/animation/SeslAnimatable;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/animation/SeslAnimatable;Ljava/lang/Object;Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/animation/SeslAnimatable;",
            "Ljava/lang/Object;",
            "Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->this$0:Landroidx/recyclerview/animation/SeslAnimatable;

    iput-object p2, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->$targetValue:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->$animationSpec:Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;

    iget-object v0, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->this$0:Landroidx/recyclerview/animation/SeslAnimatable;

    iget-object v1, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->$targetValue:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->$animationSpec:Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;

    invoke-direct {p1, v0, v1, p0, p2}, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;-><init>(Landroidx/recyclerview/animation/SeslAnimatable;Ljava/lang/Object;Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->label:I

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

    iget-object p1, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->this$0:Landroidx/recyclerview/animation/SeslAnimatable;

    iget-object v1, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->$targetValue:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->$animationSpec:Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;

    iput v2, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->label:I

    invoke-virtual {p1, v1, v3, p0}, Landroidx/recyclerview/animation/SeslAnimatable;->animateTo(Ljava/lang/Object;Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
