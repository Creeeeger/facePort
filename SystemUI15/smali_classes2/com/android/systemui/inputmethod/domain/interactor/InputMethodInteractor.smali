.class public final Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final repository:Lcom/android/systemui/inputmethod/data/repository/InputMethodRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/inputmethod/data/repository/InputMethodRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;->repository:Lcom/android/systemui/inputmethod/data/repository/InputMethodRepository;

    return-void
.end method


# virtual methods
.method public final hasMultipleEnabledImesOrSubtypes(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;

    iget v1, v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;-><init>(Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;->label:I

    iget-object p2, p0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;->repository:Lcom/android/systemui/inputmethod/data/repository/InputMethodRepository;

    check-cast p2, Lcom/android/systemui/inputmethod/data/repository/InputMethodRepositoryImpl;

    invoke-virtual {p2, p1, v0, v6}, Lcom/android/systemui/inputmethod/data/repository/InputMethodRepositoryImpl;->enabledInputMethods(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$$inlined$filter$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$take$$inlined$unsafeFlow$1;

    invoke-direct {p2, p1, v5}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$take$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    iput-object p0, v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;->label:I

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->count(Lkotlinx/coroutines/flow/FlowKt__LimitKt$take$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gt p1, v6, :cond_8

    iget-object p0, p0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;->repository:Lcom/android/systemui/inputmethod/data/repository/InputMethodRepository;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor$hasMultipleEnabledImesOrSubtypes$1;->label:I

    check-cast p0, Lcom/android/systemui/inputmethod/data/repository/InputMethodRepositoryImpl;

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/systemui/inputmethod/data/repository/InputMethodRepositoryImpl;->enabledInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v6, :cond_9

    :cond_8
    move v3, v6

    :cond_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
