.class public final Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;
.super Lcom/android/systemui/navigationbar/gestural/BackPanel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public arrowDarkColor:I

.field public arrowLightColor:I

.field public backPanelDarkColor:I

.field public backPanelLightColor:I

.field public final latencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public leftIcon:Landroid/graphics/drawable/Drawable;

.field public final maxArrowAlpha:I

.field public final maxBGAlpha:I

.field public final maxPluginIconAlpha:I

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public rightIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel;-><init>(Landroid/content/Context;Lcom/android/internal/util/LatencyTracker;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    check-cast p3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p3, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    const p2, 0x7f0604c4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->backPanelDarkColor:I

    const p2, 0x7f0604c5

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->backPanelLightColor:I

    const p2, 0x7f0604c2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->arrowDarkColor:I

    const p2, 0x7f0604c3

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->arrowLightColor:I

    const/16 p1, 0xb3

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->maxArrowAlpha:I

    const/16 p1, 0x80

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->maxBGAlpha:I

    const/16 p1, 0xff

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->maxPluginIconAlpha:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v5, v5, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v6, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    iget-object v7, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v7, v7, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget-object v10, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v10, v10, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    iget-object v11, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v11, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v12, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, -0x40800000    # -1.0f

    const/4 v15, 0x0

    if-nez v12, :cond_0

    int-to-float v9, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v9, v12

    invoke-virtual {v1, v14, v13, v9, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    iget-object v9, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v9, v9, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v12, v12, v16

    iget-object v13, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v13, v13, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    add-float/2addr v12, v13

    invoke-virtual {v1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v9, v9, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    invoke-virtual {v1, v9, v9, v11, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v9, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundRect:Landroid/graphics/RectF;

    iput v15, v9, Landroid/graphics/RectF;->left:F

    neg-float v11, v7

    iput v11, v9, Landroid/graphics/RectF;->top:F

    iput v10, v9, Landroid/graphics/RectF;->right:F

    iput v7, v9, Landroid/graphics/RectF;->bottom:F

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/16 v11, 0x8

    new-array v11, v11, [F

    aput v5, v11, v3

    aput v5, v11, v2

    aput v6, v11, v4

    const/4 v4, 0x3

    aput v6, v11, v4

    const/4 v4, 0x4

    aput v6, v11, v4

    const/4 v4, 0x5

    aput v6, v11, v4

    const/4 v4, 0x6

    aput v5, v11, v4

    const/4 v4, 0x7

    aput v5, v11, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v9, v11, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->leftIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->rightIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v4, :cond_2

    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v9, v5, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    iget v11, v5, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v4, v6, v9, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v5, v0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->maxPluginIconAlpha:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v6, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    iget-object v9, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v9, v9, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    invoke-static {v6, v9}, Landroid/util/MathUtils;->min(FF)F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->maxBGAlpha:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v6, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, v7, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v4, v4, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v5, v5, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    sub-float/2addr v10, v4

    div-float/2addr v10, v8

    invoke-virtual {v1, v10, v15}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowsPointLeft:Z

    iget-boolean v7, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    xor-int/2addr v6, v7

    xor-int/2addr v2, v6

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v14, v2, v15, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    neg-float v2, v4

    invoke-virtual {v1, v2, v15}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->calculateArrowPath$frameworks__base__packages__SystemUI__android_common__SystemUI_core(FF)Landroid/graphics/Path;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->maxArrowAlpha:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v6, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    iget-object v7, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v7, v7, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    invoke-static {v6, v7}, Landroid/util/MathUtils;->min(FF)F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->trackingBackArrowLatency:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->trackingBackArrowLatency:Z

    :cond_5
    return-void
.end method

.method public final updateArrowPaint$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070098

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->darkMode:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->arrowDarkColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->arrowLightColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->backPanelDarkColor:I

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->backPanelLightColor:I

    :goto_1
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final updateBackGestureIcon$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->leftIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->rightIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final updateBackPanelColor$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IIII)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0604c2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->arrowDarkColor:I

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0604c3

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    :cond_1
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->arrowLightColor:I

    if-nez p3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0604c4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p3

    :cond_2
    iput p3, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->backPanelDarkColor:I

    if-nez p4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0604c5

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p4

    :cond_3
    iput p4, p0, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;->backPanelLightColor:I

    return-void
.end method
