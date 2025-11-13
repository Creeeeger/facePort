.class final Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;
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

.field final synthetic $drawable:Landroid/graphics/drawable/Drawable;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;->$drawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;->$callback:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;->$drawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;-><init>(Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;->$drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/app/WallpaperColors;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;

    move-result-object p1

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    new-instance v1, Lcom/android/systemui/monet/ColorScheme;

    sget-object v3, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget v1, Lkotlin/Result;->$r8$clinit:I

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    instance-of p1, v1, Lkotlin/Result$Failure;

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    move-object v1, v3

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;->$callback:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;->$drawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/monet/ColorScheme;

    sget-object v6, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v6, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v7, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4$3$1;

    invoke-direct {v7, p1, v4, v5, v3}, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4$3$1;-><init>(Lkotlin/jvm/functions/Function2;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/monet/ColorScheme;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$4;->label:I

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
