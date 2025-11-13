.class final Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;
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
.field final synthetic $componentName:Landroid/content/ComponentName;

.field final synthetic $userId:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;Landroid/content/ComponentName;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;",
            "Landroid/content/ComponentName;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$componentName:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$userId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$componentName:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$userId:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;Landroid/content/ComponentName;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$userId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    iget-object v0, v0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->$userId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    iget-object v1, v1, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader$loadLabel$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get application info"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
