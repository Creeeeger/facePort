.class public final Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;
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
.field final synthetic $spanName:Ljava/lang/String;

.field final synthetic $user$inlined:Landroid/os/UserHandle;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/notetask/NoteTaskController;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/notetask/NoteTaskController;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->$spanName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->this$0:Lcom/android/systemui/notetask/NoteTaskController;

    iput-object p4, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->$user$inlined:Landroid/os/UserHandle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;

    iget-object v1, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->$spanName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->this$0:Lcom/android/systemui/notetask/NoteTaskController;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->$user$inlined:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p2, v2, p0}, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/notetask/NoteTaskController;Landroid/os/UserHandle;)V

    iput-object p1, v0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->label:I

    if-nez v0, :cond_d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->$spanName:Ljava/lang/String;

    sget-object v1, Lcom/android/app/tracing/coroutines/TraceContextElementKt;->traceThreadLocal:Lcom/android/app/tracing/coroutines/TraceDataThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/app/tracing/coroutines/TraceData;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "<none>"

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/android/app/tracing/coroutines/TraceData;->beginSpan(Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    const-string v5, "Coroutines"

    if-eqz v2, :cond_4

    invoke-static {v4, v5, v0}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackBegin(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->this$0:Lcom/android/systemui/notetask/NoteTaskController;

    iget-object v0, v0, Lcom/android/systemui/notetask/NoteTaskController;->userManager:Landroid/os/UserManager;

    iget-object v6, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->$user$inlined:Landroid/os/UserHandle;

    invoke-virtual {v0, v6}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_5

    sget p0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskRoleManagerExt;->INSTANCE:Lcom/android/systemui/notetask/NoteTaskRoleManagerExt;

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->this$0:Lcom/android/systemui/notetask/NoteTaskController;

    iget-object v0, v0, Lcom/android/systemui/notetask/NoteTaskController;->roleManager:Landroid/app/role/RoleManager;

    iget-object v6, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->$user$inlined:Landroid/os/UserHandle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "android.app.role.NOTES"

    invoke-virtual {v0, p1, v6}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->this$0:Lcom/android/systemui/notetask/NoteTaskController;

    iget-boolean v0, v0, Lcom/android/systemui/notetask/NoteTaskController;->isEnabled:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x1

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->this$0:Lcom/android/systemui/notetask/NoteTaskController;

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->$user$inlined:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v0}, Lcom/android/systemui/notetask/NoteTaskController;->setNoteTaskShortcutEnabled(ZLandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "note_task_shortcut_id"

    if-eqz v3, :cond_8

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->this$0:Lcom/android/systemui/notetask/NoteTaskController;

    iget-object v0, v0, Lcom/android/systemui/notetask/NoteTaskController;->shortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->enableShortcuts(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->this$0:Lcom/android/systemui/notetask/NoteTaskController;

    iget-object v0, p1, Lcom/android/systemui/notetask/NoteTaskController;->roleManager:Landroid/app/role/RoleManager;

    iget-object p1, p1, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->$user$inlined:Landroid/os/UserHandle;

    invoke-static {v0, p1, v3}, Lcom/android/systemui/notetask/NoteTaskRoleManagerExt;->createNoteShortcutInfoAsUser(Landroid/app/role/RoleManager;Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->this$0:Lcom/android/systemui/notetask/NoteTaskController;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController;->shortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;->this$0:Lcom/android/systemui/notetask/NoteTaskController;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController;->shortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_9

    invoke-static {v4, v5}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/app/tracing/coroutines/TraceData;->endSpan()V

    :cond_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_4
    if-eqz v2, :cond_b

    invoke-static {v4, v5}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/app/tracing/coroutines/TraceData;->endSpan()V

    :cond_c
    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
