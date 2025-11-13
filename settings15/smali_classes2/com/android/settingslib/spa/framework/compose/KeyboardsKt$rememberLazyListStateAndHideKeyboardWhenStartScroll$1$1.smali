.class final Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

.field final synthetic $listState:Landroidx/compose/foundation/lazy/LazyListState;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;->$keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;->$keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1$1;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-direct {p1, v1}, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1$3;

    iget-object v4, p0, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;->$keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    invoke-direct {v1, v4}, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1$3;-><init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;)V

    iput v3, p0, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;->label:I

    new-instance v3, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1$invokeSuspend$$inlined$filter$1$2;

    invoke-direct {v3, v1}, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1$invokeSuspend$$inlined$filter$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object v2
.end method
