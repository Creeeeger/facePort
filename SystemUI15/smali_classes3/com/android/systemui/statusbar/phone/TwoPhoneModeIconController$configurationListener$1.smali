.class public final Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f071763

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    int-to-float p0, v1

    mul-float/2addr p0, v0

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0, v0, v0}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final onDisplayDeviceTypeChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method
