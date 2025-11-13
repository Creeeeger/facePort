.class final Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;
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
.field label:I

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object p1, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->packageName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stopping package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageInfoPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/Flags;->appRestrictionsApi()Z

    move-result p1

    const-string v0, "<this>"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    invoke-virtual {p1}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->getUserPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object v1, v1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object p1, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager;

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object v4, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->packageName:Ljava/lang/String;

    const/4 v8, 0x4

    const-string v9, "settings"

    const/16 v6, 0x3c

    const/4 v7, 0x1

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    invoke-virtual/range {v3 .. v12}, Landroid/app/ActivityManager;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object p1, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/app/ActivityManager;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$forceStop$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->userId:I

    invoke-virtual {p1, v0, p0}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
