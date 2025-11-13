.class final Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;
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
.field final synthetic $height:I

.field final synthetic $icon:Landroid/graphics/drawable/Icon;

.field final synthetic $width:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Landroid/graphics/drawable/Icon;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;",
            "Landroid/graphics/drawable/Icon;",
            "II",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->$icon:Landroid/graphics/drawable/Icon;

    iput p3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->$width:I

    iput p4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->$height:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->$icon:Landroid/graphics/drawable/Icon;

    iget v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->$width:I

    iget v4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->$height:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Landroid/graphics/drawable/Icon;IILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->label:I

    if-eqz v3, :cond_1

    if-ne v3, v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;->INSTANCE:Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;

    iget-object v4, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->applicationContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->$icon:Landroid/graphics/drawable/Icon;

    iput v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const-string v3, "MediaRecommendationsViewModel"

    invoke-static {v4, p1, v5, v3, p0}, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;->getWallpaperColor(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/graphics/drawable/Icon;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    check-cast p1, Landroid/app/WallpaperColors;

    if-eqz p1, :cond_c

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->$icon:Landroid/graphics/drawable/Icon;

    iget v4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->$width:I

    iget p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;->$height:I

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/systemui/monet/ColorScheme;

    sget-object v6, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    invoke-direct {v5, p1, v0, v6}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V

    sget p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->$r8$clinit:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v4, :cond_b

    if-lez p0, :cond_a

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p1

    const/4 v6, 0x0

    if-eq p1, v0, :cond_4

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p1

    const/4 v7, 0x5

    if-ne p1, v7, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v6

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1, v4, p0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_2
    if-nez v7, :cond_8

    sget-object p1, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;->INSTANCE:Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;

    iget-object v7, v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gt v3, v4, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, p0, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v8, p0

    int-to-float p0, v8

    div-float/2addr p0, v4

    float-to-int v3, v3

    neg-int v3, v3

    float-to-int p0, p0

    neg-int p0, p0

    invoke-virtual {p1, v3, p0}, Landroid/graphics/Rect;->offset(II)V

    :cond_6
    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_8
    :goto_3
    iget-object p0, v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->applicationContext:Landroid/content/Context;

    const p1, 0x7f080e22

    invoke-static {p1, p0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_9
    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object p0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;->INSTANCE:Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x3e19999a    # 0.15f

    iget-object p1, v5, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {p1}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    move-result p1

    invoke-static {p1, p0}, Lcom/android/systemui/util/ColorUtilKt;->getColorWithAlpha(IF)I

    move-result p0

    iget-object p1, v5, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {p1}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Lcom/android/systemui/util/ColorUtilKt;->getColorWithAlpha(IF)I

    move-result p1

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    aput-object v7, p1, v1

    aput-object v6, p1, v0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_a
    const-string p1, "Height must be a positive number but was "

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string p0, "Width must be a positive number but was "

    invoke-static {v4, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_4
    return-object p0
.end method
