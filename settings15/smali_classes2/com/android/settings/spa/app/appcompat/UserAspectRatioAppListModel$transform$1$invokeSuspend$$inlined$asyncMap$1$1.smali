.class public final Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;
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
        "\u0000\n\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "R",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $item:Ljava/lang/Object;

.field final synthetic $uid$inlined:I

.field label:I

.field final synthetic this$0:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->$item:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;

    iput p4, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->$uid$inlined:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;

    iget-object v0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->$item:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;

    iget p0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->$uid$inlined:I

    invoke-direct {p1, v0, p2, v1, p0}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;I)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->label:I

    if-nez v1, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->$item:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;

    sget-object v3, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->GET_ACTIVITIES_FLAGS:Landroid/content/pm/PackageManager$PackageInfoFlags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->GET_ACTIVITIES_FLAGS:Landroid/content/pm/PackageManager$PackageInfoFlags;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "AspectRatioAppsListModel"

    const-string v4, "Exception while getPackageInfoAsUser"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v3, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->GET_ACTIVITIES_FLAGS:Landroid/content/pm/PackageManager$PackageInfoFlags;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->hasFixedAspectRatio()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr v4, v0

    goto :goto_1

    :cond_1
    move v0, v2

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;

    iget-object v1, v1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->userAspectRatioManager:Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->$uid$inlined:I

    iget-object v5, v1, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3, v4}, Landroid/content/pm/IPackageManager;->getUserMinAspectRatio(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4, v3}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->hasAspectRatioOption(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v4

    :cond_3
    iget-object p0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;

    iget-object p0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->userAspectRatioManager:Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->canDisplayAspectRatioUi(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    new-instance v1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;

    invoke-direct {v1, p1, v2, v0, p0}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;-><init>(Landroid/content/pm/ApplicationInfo;IZZ)V

    return-object v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
