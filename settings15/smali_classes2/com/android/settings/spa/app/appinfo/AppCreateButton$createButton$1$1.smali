.class final Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;
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
.field final synthetic $app:Landroid/content/pm/ApplicationInfo;

.field final synthetic $appLabel:Ljava/lang/CharSequence;

.field final synthetic $cloneBackend:Lcom/android/settings/applications/manageapplications/CloneBackend;

.field final synthetic $navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

.field label:I

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/AppCreateButton;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/applications/manageapplications/CloneBackend;Ljava/lang/CharSequence;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$app:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$cloneBackend:Lcom/android/settings/applications/manageapplications/CloneBackend;

    iput-object p4, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$appLabel:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    iget-object v2, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$app:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$cloneBackend:Lcom/android/settings/applications/manageapplications/CloneBackend;

    iget-object v4, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$appLabel:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppCreateButton;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/applications/manageapplications/CloneBackend;Ljava/lang/CharSequence;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->label:I

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

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    iget-object p1, p1, Lcom/android/settings/spa/app/appinfo/AppCreateButton;->enabledState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$app:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$cloneBackend:Lcom/android/settings/applications/manageapplications/CloneBackend;

    const-string v4, "$cloneBackend"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v4, Lcom/android/settings/spa/app/appinfo/AppCreateButton$installCloneApp$2;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v1, v5}, Lcom/android/settings/spa/app/appinfo/AppCreateButton$installCloneApp$2;-><init>(Lcom/android/settings/applications/manageapplications/CloneBackend;Landroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    iget-object p1, p1, Lcom/android/settings/spa/app/appinfo/AppCreateButton;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$appLabel:Ljava/lang/CharSequence;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f14095d

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, p1, v3}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    sget-object v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->INSTANCE:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$app:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "packageName"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->$cloneBackend:Lcom/android/settings/applications/manageapplications/CloneBackend;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/CloneBackend;->mCloneUserId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->getRoute(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v2}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;->navigate(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton;->enabledState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
