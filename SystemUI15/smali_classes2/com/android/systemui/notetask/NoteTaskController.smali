.class public final Lcom/android/systemui/notetask/NoteTaskController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final activityManager:Landroid/app/ActivityManager;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final context:Landroid/content/Context;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final eventLogger:Lcom/android/systemui/notetask/NoteTaskEventLogger;

.field public final infoReference:Ljava/util/concurrent/atomic/AtomicReference;

.field public final isEnabled:Z

.field public final keyguardManager:Landroid/app/KeyguardManager;

.field public final noteTaskBubblesController:Lcom/android/systemui/notetask/NoteTaskBubblesController;

.field public final resolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

.field public final roleManager:Landroid/app/role/RoleManager;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final shortcutManager:Landroid/content/pm/ShortcutManager;

.field public final userManager:Landroid/os/UserManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/notetask/NoteTaskController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/notetask/NoteTaskController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/notetask/NoteTaskController;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    sput-object v0, Lcom/android/systemui/notetask/NoteTaskController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/role/RoleManager;Landroid/content/pm/ShortcutManager;Lcom/android/systemui/notetask/NoteTaskInfoResolver;Lcom/android/systemui/notetask/NoteTaskEventLogger;Lcom/android/systemui/notetask/NoteTaskBubblesController;Landroid/os/UserManager;Landroid/app/KeyguardManager;Landroid/app/ActivityManager;ZLandroid/app/admin/DevicePolicyManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/notetask/NoteTaskController;->roleManager:Landroid/app/role/RoleManager;

    iput-object p3, p0, Lcom/android/systemui/notetask/NoteTaskController;->shortcutManager:Landroid/content/pm/ShortcutManager;

    iput-object p4, p0, Lcom/android/systemui/notetask/NoteTaskController;->resolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    iput-object p5, p0, Lcom/android/systemui/notetask/NoteTaskController;->eventLogger:Lcom/android/systemui/notetask/NoteTaskEventLogger;

    iput-object p6, p0, Lcom/android/systemui/notetask/NoteTaskController;->noteTaskBubblesController:Lcom/android/systemui/notetask/NoteTaskBubblesController;

    iput-object p7, p0, Lcom/android/systemui/notetask/NoteTaskController;->userManager:Landroid/os/UserManager;

    iput-object p8, p0, Lcom/android/systemui/notetask/NoteTaskController;->keyguardManager:Landroid/app/KeyguardManager;

    iput-object p9, p0, Lcom/android/systemui/notetask/NoteTaskController;->activityManager:Landroid/app/ActivityManager;

    iput-boolean p10, p0, Lcom/android/systemui/notetask/NoteTaskController;->isEnabled:Z

    iput-object p11, p0, Lcom/android/systemui/notetask/NoteTaskController;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p12, p0, Lcom/android/systemui/notetask/NoteTaskController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p13, p0, Lcom/android/systemui/notetask/NoteTaskController;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p14, p0, Lcom/android/systemui/notetask/NoteTaskController;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p15, p0, Lcom/android/systemui/notetask/NoteTaskController;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskController;->infoReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final access$awaitShowNoteTaskAsUser(Lcom/android/systemui/notetask/NoteTaskController;Lcom/android/systemui/notetask/NoteTaskEntryPoint;Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;

    iget v3, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;-><init>(Lcom/android/systemui/notetask/NoteTaskController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-class v8, Lcom/android/systemui/notetask/NoteTaskController;

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/notetask/NoteTaskController;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserHandle;

    iget-object v4, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    iget-object v9, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/android/systemui/notetask/NoteTaskController;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v0

    move-object v0, v9

    move-object v9, v1

    move-object v1, v4

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/android/systemui/notetask/NoteTaskController;->isEnabled:Z

    if-nez v1, :cond_4

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_6

    :cond_4
    iput-object v0, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->L$0:Ljava/lang/Object;

    move-object/from16 v1, p1

    iput-object v1, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->L$1:Ljava/lang/Object;

    move-object/from16 v4, p2

    iput-object v4, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->L$2:Ljava/lang/Object;

    iput v6, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->label:I

    iget-object v9, v0, Lcom/android/systemui/notetask/NoteTaskController;->noteTaskBubblesController:Lcom/android/systemui/notetask/NoteTaskBubblesController;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/android/systemui/notetask/NoteTaskBubblesController$areBubblesAvailable$2;

    invoke-direct {v10, v9, v7}, Lcom/android/systemui/notetask/NoteTaskBubblesController$areBubblesAvailable$2;-><init>(Lcom/android/systemui/notetask/NoteTaskBubblesController;Lkotlin/coroutines/Continuation;)V

    iget-object v9, v9, Lcom/android/systemui/notetask/NoteTaskBubblesController;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v9, v10, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_5

    goto/16 :goto_6

    :cond_5
    move-object v12, v4

    :goto_1
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    sget v1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_6

    :cond_6
    iget-object v4, v0, Lcom/android/systemui/notetask/NoteTaskController;->userManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_6

    :cond_7
    iget-object v4, v0, Lcom/android/systemui/notetask/NoteTaskController;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v9, v0, Lcom/android/systemui/notetask/NoteTaskController;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/systemui/devicepolicy/DevicePolicyManagerExtKt;->areKeyguardShortcutsDisabled$default(Landroid/app/admin/DevicePolicyManager;I)Z

    move-result v9

    if-eqz v9, :cond_8

    sget v0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_6

    :cond_8
    iget-object v9, v0, Lcom/android/systemui/notetask/NoteTaskController;->resolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    invoke-virtual {v9, v1, v4, v12}, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->resolveInfo(Lcom/android/systemui/notetask/NoteTaskEntryPoint;ZLandroid/os/UserHandle;)Lcom/android/systemui/notetask/NoteTaskInfo;

    move-result-object v1

    if-nez v1, :cond_9

    sget v1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/notetask/NoteTaskController;->showNoDefaultNotesAppToast()V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_6

    :cond_9
    iget-object v4, v0, Lcom/android/systemui/notetask/NoteTaskController;->infoReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :try_start_1
    sget v4, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-object v4, v1, Lcom/android/systemui/notetask/NoteTaskInfo;->launchMode:Lcom/android/systemui/notetask/NoteTaskLaunchMode;

    instance-of v9, v4, Lcom/android/systemui/notetask/NoteTaskLaunchMode$AppBubble;

    if-eqz v9, :cond_c

    invoke-static {v1}, Lcom/android/systemui/notetask/NoteTaskControllerKt;->access$createNoteTaskIntent(Lcom/android/systemui/notetask/NoteTaskInfo;)Landroid/content/Intent;

    move-result-object v11

    iget-object v1, v0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    const v4, 0x7f080a6b

    invoke-static {v1, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    iget-object v1, v0, Lcom/android/systemui/notetask/NoteTaskController;->noteTaskBubblesController:Lcom/android/systemui/notetask/NoteTaskBubblesController;

    iput-object v0, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->L$2:Ljava/lang/Object;

    iput v5, v2, Lcom/android/systemui/notetask/NoteTaskController$awaitShowNoteTaskAsUser$1;->label:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;

    const/4 v14, 0x0

    move-object v9, v4

    move-object v10, v1

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2;-><init>(Lcom/android/systemui/notetask/NoteTaskBubblesController;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;Lkotlin/coroutines/Continuation;)V

    iget-object v1, v1, Lcom/android/systemui/notetask/NoteTaskBubblesController;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v1, v4, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    goto :goto_2

    :cond_a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    if-ne v1, v3, :cond_b

    goto/16 :goto_6

    :cond_b
    :goto_3
    sget v1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    goto :goto_4

    :cond_c
    instance-of v2, v4, Lcom/android/systemui/notetask/NoteTaskLaunchMode$Activity;

    if-eqz v2, :cond_f

    iget-boolean v2, v1, Lcom/android/systemui/notetask/NoteTaskInfo;->isKeyguardLocked:Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v3, v0, Lcom/android/systemui/notetask/NoteTaskController;->eventLogger:Lcom/android/systemui/notetask/NoteTaskEventLogger;

    if-eqz v2, :cond_e

    :try_start_2
    sget-object v2, Lcom/android/systemui/shared/system/ActivityManagerKt;->INSTANCE:Lcom/android/systemui/shared/system/ActivityManagerKt;

    iget-object v4, v0, Lcom/android/systemui/notetask/NoteTaskController;->activityManager:Landroid/app/ActivityManager;

    iget-object v5, v1, Lcom/android/systemui/notetask/NoteTaskInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v6

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :cond_d
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    invoke-virtual {v4, v2, v12}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v1}, Lcom/android/systemui/notetask/NoteTaskEventLogger;->logNoteTaskClosed(Lcom/android/systemui/notetask/NoteTaskInfo;)V

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    goto :goto_4

    :cond_e
    invoke-static {v1}, Lcom/android/systemui/notetask/NoteTaskControllerKt;->access$createNoteTaskIntent(Lcom/android/systemui/notetask/NoteTaskInfo;)Landroid/content/Intent;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    invoke-virtual {v4, v2, v12}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v1}, Lcom/android/systemui/notetask/NoteTaskEventLogger;->logNoteTaskOpened(Lcom/android/systemui/notetask/NoteTaskInfo;)V

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    :cond_f
    :goto_4
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    sget v1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    :goto_5
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_6
    return-object v3
.end method

.method public static synthetic getInfoReference$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getCurrentRunningUser$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/os/UserHandle;
    .locals 0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public final getUserForHandlingNotesTaking(Lcom/android/systemui/notetask/NoteTaskEntryPoint;)Landroid/os/UserHandle;
    .locals 5

    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->TAIL_BUTTON:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getUserTracker()Lcom/android/systemui/settings/UserTracker;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "default_note_task_profile"

    invoke-interface {p0, v0, p1, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskController;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/notetask/NoteTaskController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->QUICK_AFFORDANCE:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    if-ne p1, v0, :cond_4

    move-object p1, v1

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/systemui/notetask/NoteTaskController;->userManager:Landroid/os/UserManager;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    check-cast v0, Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    if-nez p0, :cond_5

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    goto :goto_2

    :cond_4
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    :cond_5
    :goto_2
    return-object p0
.end method

.method public final launchUpdateNoteTaskAsUser(Landroid/os/UserHandle;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/notetask/NoteTaskController;->TAG:Ljava/lang/String;

    const-string v2, "#launchUpdateNoteTaskAsUser"

    invoke-static {v0, v1, v2}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/android/systemui/notetask/NoteTaskController$launchUpdateNoteTaskAsUser$$inlined$launch$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/notetask/NoteTaskController;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/android/systemui/notetask/NoteTaskController;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    const/4 v0, 0x2

    invoke-static {p1, p0, v2, v1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setNoteTaskShortcutEnabled(ZLandroid/os/UserHandle;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskController;->userManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    const-class v1, Lcom/android/systemui/notetask/NoteTaskController;

    if-nez v0, :cond_0

    sget p0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/notetask/shortcut/CreateNoteTaskShortcutActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    sget p0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public final showNoDefaultNotesAppToast()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    const v0, 0x7f1311bb

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final showNoteTaskAsUser(Lcom/android/systemui/notetask/NoteTaskEntryPoint;Landroid/os/UserHandle;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/notetask/NoteTaskController;->isEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/notetask/NoteTaskController;->TAG:Ljava/lang/String;

    const-string v2, "#showNoteTaskAsUser"

    invoke-static {v0, v1, v2}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v1, Lcom/android/systemui/notetask/NoteTaskController$showNoteTaskAsUser$$inlined$launch$default$1;

    const/4 v5, 0x0

    move-object v3, v1

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/notetask/NoteTaskController$showNoteTaskAsUser$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/notetask/NoteTaskController;Lcom/android/systemui/notetask/NoteTaskEntryPoint;Landroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    const/4 p2, 0x2

    invoke-static {p0, v0, p1, v1, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final updateNoteTaskAsUser(Landroid/os/UserHandle;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskController;->userManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    const-class v1, Lcom/android/systemui/notetask/NoteTaskController;

    if-nez v0, :cond_0

    sget p0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/notetask/NoteTaskController;->getCurrentRunningUser$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/notetask/NoteTaskController;->launchUpdateNoteTaskAsUser(Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/notetask/NoteTaskControllerUpdateService;->Companion:Lcom/android/systemui/notetask/NoteTaskControllerUpdateService$Companion;

    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/systemui/notetask/NoteTaskControllerUpdateService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget p0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public final updateNoteTaskForCurrentUserAndManagedProfiles()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/notetask/NoteTaskController;->updateNoteTaskAsUser(Landroid/os/UserHandle;)V

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskController;->userManager:Landroid/os/UserManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/notetask/NoteTaskController;->updateNoteTaskAsUser(Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    return-void
.end method
