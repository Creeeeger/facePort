.class public final Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bgGradientEnd:Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

.field public final bgGradientStart:Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

.field public final colorTransitions:[Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

.field public final context:Landroid/content/Context;

.field public isGradientEnabled:Z

.field public final mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/SecPlayerViewHolder;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$1;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;-><init>(Landroid/content/Context;Lcom/android/systemui/media/SecPlayerViewHolder;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/SecPlayerViewHolder;Lkotlin/jvm/functions/Function3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/media/SecPlayerViewHolder;",
            "Lkotlin/jvm/functions/Function3;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->isGradientEnabled:Z

    const p2, 0x7f0603c0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$surfaceColor$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$surfaceColor$1;

    new-instance v2, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$surfaceColor$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$surfaceColor$2;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V

    invoke-interface {p3, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    const v1, 0x1010036

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentPrimary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentPrimary$1;

    new-instance v4, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentPrimary$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentPrimary$2;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V

    invoke-interface {p3, v2, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$1;

    new-instance v3, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V

    invoke-interface {p3, p1, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientStart$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientStart$1;

    new-instance v4, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;

    const v5, 0x3ee66666    # 0.45f

    invoke-direct {v4, p0, v3, v5}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;Lkotlin/jvm/functions/Function1;F)V

    new-instance v3, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientStart$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientStart$2;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V

    invoke-interface {p3, v1, v4, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    iput-object v1, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->bgGradientStart:Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v3, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientEnd$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientEnd$1;

    new-instance v4, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, p0, v3, v5}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;Lkotlin/jvm/functions/Function1;F)V

    new-instance v3, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientEnd$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$bgGradientEnd$2;-><init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V

    invoke-interface {p3, p2, v4, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->bgGradientEnd:Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    filled-new-array {v0, v2, p1, v1, p2}, [Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->colorTransitions:[Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    return-void
.end method

.method public static final access$updateAlbumGradient(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->albumView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    instance-of v0, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_4

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->bgGradientStart:Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->currentColor:I

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->bgGradientEnd:Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    if-eqz p0, :cond_3

    iget v0, p0, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->currentColor:I

    :cond_3
    filled-new-array {v2, v0}, [I

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_4
    return-void
.end method
