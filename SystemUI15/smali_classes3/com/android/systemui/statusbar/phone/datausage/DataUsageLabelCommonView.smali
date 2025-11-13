.class public Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;
.super Landroid/widget/TextView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDisplay:Landroid/view/Display;

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mViewContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mViewContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mViewContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mViewContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final dynamicallyReduceTextSize()V
    .locals 20

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mViewContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b96

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mViewContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b95

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    int-to-float v3, v1

    mul-float v4, v3, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v7, :cond_1

    iget v8, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1

    :cond_1
    const/16 v8, 0xa0

    :goto_1
    if-eqz v7, :cond_2

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2

    :cond_2
    const/16 v7, 0x5a0

    :goto_2
    move v9, v5

    :goto_3
    const/16 v10, 0xa

    if-ge v9, v10, :cond_6

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v10, v10

    const-string v11, ", newScaleRatio:"

    const-string v12, ", defaultTextSize:"

    const-string v13, ", densityDPI:"

    const-string v14, ", textWidth:"

    const-string v15, "dynamicallyReduceTextSize("

    const-string v5, "DataUsageLabelCommonView"

    if-lez v7, :cond_5

    if-lt v7, v10, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v16, v4

    add-int/lit8 v4, v9, 0x1

    move-object/from16 v17, v6

    int-to-float v6, v4

    move/from16 v18, v4

    int-to-float v4, v8

    const/high16 v19, 0x43200000    # 160.0f

    div-float v4, v4, v19

    mul-float/2addr v4, v6

    sub-float v4, v3, v4

    sget-boolean v6, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->DEBUG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") scaledNewFontSize:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", maxWidthPixels:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7, v14, v10, v13}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v6, v8, v12, v1, v11}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v6, v2, v5}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    move v5, v6

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move/from16 v9, v18

    goto :goto_3

    :cond_5
    :goto_4
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, " done ! ) maxWidthPixels:"

    invoke-static {v9, v7, v15, v0, v14}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v10, v13, v8, v12}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mViewContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplay:Landroid/view/Display;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->dynamicallyReduceTextSize()V

    const-string/jumbo v1, "sec-400"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->dynamicallyReduceTextSize()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->mDisplay:Landroid/view/Display;

    return-void
.end method
