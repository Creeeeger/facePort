.class public final Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final accentPrimary:Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

.field public final bgColor:I

.field public final colorSeamless:Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

.field public final colorTransitions:[Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

.field public final context:Landroid/content/Context;

.field public final mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

.field public final multiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

.field public final turbulenceNoiseController:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;)V
    .locals 6

    sget-object v5, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$1;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;-><init>(Landroid/content/Context;Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;Lkotlin/jvm/functions/Function3;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;",
            "Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;",
            "Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;",
            "Lkotlin/jvm/functions/Function3;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->multiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->turbulenceNoiseController:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;

    const p2, 0x7f0603c0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->bgColor:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$surfaceColor$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$surfaceColor$1;

    new-instance p3, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$surfaceColor$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$surfaceColor$2;-><init>(Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;)V

    invoke-interface {p5, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    const p1, 0x1010036

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentPrimary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentPrimary$1;

    new-instance p4, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentPrimary$2;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentPrimary$2;-><init>(Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;)V

    invoke-interface {p5, p2, p3, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    iput-object v2, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->accentPrimary:Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentSecondary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentSecondary$1;

    new-instance p4, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentSecondary$2;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentSecondary$2;-><init>(Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;)V

    invoke-interface {p5, p2, p3, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$colorSeamless$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$colorSeamless$1;-><init>(Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;)V

    new-instance p4, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$colorSeamless$2;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$colorSeamless$2;-><init>(Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;)V

    invoke-interface {p5, p2, p3, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    iput-object v1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->colorSeamless:Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimary$1;

    new-instance p3, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimary$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimary$2;-><init>(Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;)V

    invoke-interface {p5, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    const p1, 0x1010039

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimaryInverse$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimaryInverse$1;

    new-instance p3, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimaryInverse$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimaryInverse$2;-><init>(Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;)V

    invoke-interface {p5, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    const p1, 0x1010038

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textSecondary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textSecondary$1;

    new-instance p3, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textSecondary$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textSecondary$2;-><init>(Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;)V

    invoke-interface {p5, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    const p1, 0x1010212

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textTertiary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textTertiary$1;

    new-instance p3, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textTertiary$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textTertiary$2;-><init>(Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;)V

    invoke-interface {p5, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->colorTransitions:[Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    return-void
.end method


# virtual methods
.method public final loadDefaultColor(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->context:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method
