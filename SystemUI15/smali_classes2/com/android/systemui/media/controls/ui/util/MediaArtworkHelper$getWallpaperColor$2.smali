.class final Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;
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
.field final synthetic $applicationContext:Landroid/content/Context;

.field final synthetic $artworkIcon:Landroid/graphics/drawable/Icon;

.field final synthetic $tag:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;->$artworkIcon:Landroid/graphics/drawable/Icon;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;->$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;->$tag:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;->$artworkIcon:Landroid/graphics/drawable/Icon;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;->$applicationContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;->$tag:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;->$artworkIcon:Landroid/graphics/drawable/Icon;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;->$applicationContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;->$tag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Landroid/app/WallpaperColors;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "Cannot load wallpaper color from a recycled bitmap"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
