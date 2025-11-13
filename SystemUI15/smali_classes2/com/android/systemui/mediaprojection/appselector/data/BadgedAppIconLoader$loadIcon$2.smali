.class final Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;
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

.field final synthetic $userType:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;ILandroid/content/ComponentName;Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;",
            "I",
            "Landroid/content/ComponentName;",
            "Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;

    iput p2, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->$userId:I

    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->$componentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->$userType:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;

    iget v2, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->$userId:I

    iget-object v3, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->$componentName:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->$userType:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;ILandroid/content/ComponentName;Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->I$0:I

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/icons/IconFactory;

    iget-object v4, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    iget-object v5, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/AutoCloseable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;->iconFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/AutoCloseable;

    iget-object v5, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;

    iget v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->$userId:I

    iget-object v4, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->$componentName:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->$userType:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask$UserType;

    :try_start_1
    move-object v7, p1

    check-cast v7, Lcom/android/launcher3/icons/IconFactory;

    iget-object v8, v5, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;->basicAppIconLoader:Lcom/android/systemui/mediaprojection/appselector/data/BasicAppIconLoader;

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->L$2:Ljava/lang/Object;

    iput-object v7, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->L$3:Ljava/lang/Object;

    iput v1, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->I$0:I

    iput v2, p0, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$loadIcon$2;->label:I

    check-cast v8, Lcom/android/systemui/mediaprojection/appselector/data/BasicPackageManagerAppIconLoader;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/systemui/mediaprojection/appselector/data/BasicPackageManagerAppIconLoader$loadIcon$2;

    invoke-direct {v9, v8, v4, v1, v3}, Lcom/android/systemui/mediaprojection/appselector/data/BasicPackageManagerAppIconLoader$loadIcon$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/BasicPackageManagerAppIconLoader;Landroid/content/ComponentName;ILkotlin/coroutines/Continuation;)V

    iget-object v4, v8, Lcom/android/systemui/mediaprojection/appselector/data/BasicPackageManagerAppIconLoader;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v4, v9, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move v0, v1

    move-object v4, v6

    move-object v1, v7

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    :goto_0
    :try_start_2
    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_3

    invoke-static {p0, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v3

    :cond_3
    :try_start_3
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v4, v2, :cond_5

    if-eq v4, v7, :cond_6

    const/4 v2, 0x3

    if-eq v4, v2, :cond_6

    const/4 v2, 0x4

    if-ne v4, v2, :cond_4

    move v2, v6

    goto :goto_1

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_5
    move v2, v7

    :cond_6
    :goto_1
    new-instance v4, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v4}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    new-instance v7, Lcom/android/launcher3/util/UserIconInfo;

    invoke-direct {v7, v0, v2}, Lcom/android/launcher3/util/UserIconInfo;-><init>(Landroid/os/UserHandle;I)V

    iput-object v7, v4, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserIconInfo:Lcom/android/launcher3/util/UserIconInfo;

    invoke-virtual {v1, p1, v4}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    iget-object v0, v5, Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;->context:Landroid/content/Context;

    invoke-virtual {p1, v6, v0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p0, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p1

    :goto_2
    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_3
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method
