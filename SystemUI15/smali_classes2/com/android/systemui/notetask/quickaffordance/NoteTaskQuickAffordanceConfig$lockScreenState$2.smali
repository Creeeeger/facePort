.class final Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;


# direct methods
.method public constructor <init>(Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    iget-object v0, v0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->lazyRepository:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    iget-object v1, v1, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->key:Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createConfigSelectedFlow$$inlined$map$1;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->selections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createConfigSelectedFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    iget-object v1, v0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->stylusManager:Lcom/android/systemui/stylus/StylusManager;

    iget-object v0, v0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->context:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1;-><init>(Landroid/content/Context;Lcom/android/systemui/stylus/StylusManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    iget-object v3, v1, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->userManager:Landroid/os/UserManager;

    new-instance v5, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1;

    iget-object v1, v1, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->keyguardMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v5, v3, v1, v4}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1;-><init>(Landroid/os/UserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    iget-object v6, v3, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->roleManager:Landroid/app/role/RoleManager;

    iget-object v7, v3, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v11, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;

    iget-object v8, v3, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    iget-object v9, v3, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1;-><init>(Landroid/app/role/RoleManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/notetask/NoteTaskInfoResolver;Lcom/android/systemui/notetask/NoteTaskController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v11}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;

    iget-object v6, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    invoke-direct {v5, v6, v4}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;-><init>(Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v0, v2, v3, v5}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$2;

    iget-object p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$2;-><init>(Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method
