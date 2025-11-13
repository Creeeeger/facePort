.class final Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a$\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u00040\u0001*\u00020\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroid/content/pm/ResolveInfo;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $flags:Landroid/content/pm/PackageManager$ResolveInfoFlags;

.field final synthetic $launchIntent:Landroid/content/Intent;

.field final synthetic $userId:I

.field label:I

.field final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->$launchIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->$flags:Landroid/content/pm/PackageManager$ResolveInfoFlags;

    iput p4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->$userId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->$launchIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->$flags:Landroid/content/pm/PackageManager$ResolveInfoFlags;

    iget v4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->$userId:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iget-object p1, p1, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->$launchIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->$flags:Landroid/content/pm/PackageManager$ResolveInfoFlags;

    iget p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2$launcherActivities$1;->$userId:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
