.class public final Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public dualSeekBarThreshold:I

.field public highBrightnessModeEnter:Z

.field public isGradient:Z

.field public final sliderSupplier:Ljava/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/settings/brightness/ToggleSeekBar;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->sliderSupplier:Ljava/util/function/Supplier;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->updateSliderResources()V

    return-void
.end method


# virtual methods
.method public final getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->sliderSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-nez p0, :cond_0

    const-string v0, "SecBrightnessSliderView"

    const-string/jumbo v1, "slider: maybe BrightnessSliderView\'s onFinishInflate() is NOT called yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public final setDualSeekBarResources(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->sliderSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->isGradient:Z

    if-eq v0, p1, :cond_5

    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->isGradient:Z

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v0

    :goto_2
    instance-of v1, p0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    :cond_3
    if-eqz v0, :cond_5

    const/16 p0, 0xfa

    if-eqz p1, :cond_4

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final updateSliderResources()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->sliderSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, v1

    mul-double/2addr v2, v4

    const/16 v1, 0x64

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->dualSeekBarThreshold:I

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->setDualSeekBarResources(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    return-void
.end method
