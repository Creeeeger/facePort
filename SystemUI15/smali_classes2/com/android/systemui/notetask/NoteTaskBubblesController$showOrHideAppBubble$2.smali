.class final Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;
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
.field final synthetic $icon:Landroid/graphics/drawable/Icon;

.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic $userHandle:Landroid/os/UserHandle;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/notetask/NoteTaskBubblesController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/notetask/NoteTaskBubblesController;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/notetask/NoteTaskBubblesController;",
            "Landroid/content/Intent;",
            "Landroid/os/UserHandle;",
            "Landroid/graphics/drawable/Icon;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->this$0:Lcom/android/systemui/notetask/NoteTaskBubblesController;

    iput-object p2, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->$userHandle:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->$icon:Landroid/graphics/drawable/Icon;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v6, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;

    iget-object v1, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->this$0:Lcom/android/systemui/notetask/NoteTaskBubblesController;

    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->$userHandle:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->$icon:Landroid/graphics/drawable/Icon;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;-><init>(Lcom/android/systemui/notetask/NoteTaskBubblesController;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->this$0:Lcom/android/systemui/notetask/NoteTaskBubblesController;

    iget-object v0, v0, Lcom/android/systemui/notetask/NoteTaskBubblesController;->serviceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$1;

    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->$userHandle:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->$icon:Landroid/graphics/drawable/Icon;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$1;-><init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$2;

    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->$userHandle:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;->$icon:Landroid/graphics/drawable/Icon;

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$2;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
