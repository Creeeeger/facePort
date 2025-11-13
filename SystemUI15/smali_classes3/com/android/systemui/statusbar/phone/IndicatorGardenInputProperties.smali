.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public cornerPaddingC:I

.field public cutoutInnerPaddingD:I

.field public cutoutSidePaddingD:I

.field public cutoutTopMarginB:I

.field public final debugMode:Z

.field public defaultCenterPadding:I

.field public defaultStartPadding:I

.field public density:F

.field public displayCutout:Landroid/view/DisplayCutout;

.field public rotation:I

.field public statusBarWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->debugMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->updateWindowMetrics()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->updatePaddingValues()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    return-void
.end method


# virtual methods
.method public final getDimenSize(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRTL()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final updatePaddingValues()V
    .locals 2

    const v0, 0x7f070b72

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->getDimenSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultCenterPadding:I

    const v0, 0x7f0714a9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->getDimenSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultStartPadding:I

    const v0, 0x105056c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->getDimenSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cornerPaddingC:I

    const v0, 0x1050561

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->getDimenSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutInnerPaddingD:I

    const v0, 0x1050562

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->getDimenSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutSidePaddingD:I

    const v0, 0x1050563

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->getDimenSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutTopMarginB:I

    return-void
.end method

.method public final updateWindowMetrics()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->density:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->debugMode:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    if-eq v1, v0, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    const-string/jumbo v3, "updateWindowMetrics rotation: "

    const-string v4, " >> "

    const-string v5, " w="

    invoke-static {v1, v0, v3, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "IndicatorGardenInputProperties"

    invoke-static {v2, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    return-void
.end method
