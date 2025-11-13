.class public final Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;
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

.field final synthetic $userId$inlined:I

.field label:I

.field final synthetic this$0:Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->$item:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;

    iput p4, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->$userId$inlined:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;

    iget-object v0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->$item:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;

    iget p0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->$userId$inlined:I

    invoke-direct {p1, v0, p2, v1, p0}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;I)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->$item:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    new-instance v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppListWithGroupingAppRecord;

    iget-object v1, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;

    iget-object v1, v1, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    iget p0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1$invokeSuspend$$inlined$asyncMap$1$1;->$userId$inlined:I

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-wide v1, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppListWithGroupingAppRecord;-><init>(Landroid/content/pm/ApplicationInfo;J)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
