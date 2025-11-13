.class final Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;
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
.field final synthetic $executor:Ljava/util/concurrent/Executor;

.field final synthetic $noteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

.field final synthetic $noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

.field final synthetic $this_createNotesRoleFlow:Landroid/app/role/RoleManager;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/app/role/RoleManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/notetask/NoteTaskInfoResolver;Lcom/android/systemui/notetask/NoteTaskController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/role/RoleManager;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/notetask/NoteTaskInfoResolver;",
            "Lcom/android/systemui/notetask/NoteTaskController;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$this_createNotesRoleFlow:Landroid/app/role/RoleManager;

    iput-object p2, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    iput-object p4, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$noteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v6, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;

    iget-object v1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$this_createNotesRoleFlow:Landroid/app/role/RoleManager;

    iget-object v2, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    iget-object v4, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$noteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;-><init>(Landroid/app/role/RoleManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/notetask/NoteTaskInfoResolver;Lcom/android/systemui/notetask/NoteTaskController;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    iget-object v3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$noteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

    sget-object v4, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->QUICK_AFFORDANCE:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    invoke-virtual {v3, v4}, Lcom/android/systemui/notetask/NoteTaskController;->getUserForHandlingNotesTaking(Lcom/android/systemui/notetask/NoteTaskEntryPoint;)Landroid/os/UserHandle;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->Companion:Lcom/android/systemui/notetask/NoteTaskInfoResolver$Companion;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->resolveInfo(Lcom/android/systemui/notetask/NoteTaskEntryPoint;ZLandroid/os/UserHandle;)Lcom/android/systemui/notetask/NoteTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    move v5, v2

    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$callback$1;

    iget-object v3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    iget-object v4, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$noteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

    invoke-direct {v1, p1, v3, v4}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$callback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/notetask/NoteTaskInfoResolver;Lcom/android/systemui/notetask/NoteTaskController;)V

    iget-object v3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$this_createNotesRoleFlow:Landroid/app/role/RoleManager;

    iget-object v4, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$executor:Ljava/util/concurrent/Executor;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    new-instance v3, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$1;

    iget-object v4, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->$this_createNotesRoleFlow:Landroid/app/role/RoleManager;

    invoke-direct {v3, v4, v1}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$1;-><init>(Landroid/app/role/RoleManager;Landroid/app/role/OnRoleHoldersChangedListener;)V

    iput v2, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
