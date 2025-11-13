.class final Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;
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
.field final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $packageName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;",
            "Lkotlin/jvm/functions/Function2;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->$callback:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->$packageName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->$callback:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->$packageName:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;-><init>(Landroid/content/Context;Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->$packageName:Ljava/lang/String;

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    instance-of v0, p1, Lkotlin/Result$Failure;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;->$callback:Lkotlin/jvm/functions/Function2;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;

    invoke-direct {v2, p1, p0, v1}, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;-><init>(Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
