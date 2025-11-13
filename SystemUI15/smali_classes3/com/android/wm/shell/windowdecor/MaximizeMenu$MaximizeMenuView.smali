.class public final Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final decorThemeUtil:Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;

.field public final fillPadding:I

.field public final fillRadius:I

.field public final maximizeButton:Landroid/widget/Button;

.field public final maximizeText:Landroid/widget/TextView;

.field public final menuHeight:I

.field public final menuPadding:I

.field public final openMenuAnimatorSet:Landroid/animation/AnimatorSet;

.field public final outlineRadius:I

.field public final outlineStroke:I

.field public final rootView:Landroid/view/View;

.field public final snapButtonsLayout:Landroid/view/View;

.field public final snapLeftButton:Landroid/widget/Button;

.field public final snapRightButton:Landroid/widget/Button;

.field public final snapWindowText:Landroid/widget/TextView;

.field public style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;Landroid/view/View$OnGenericMotionListener;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->menuHeight:I

    iput p3, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->menuPadding:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d00e1

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->rootView:Landroid/view/View;

    const p3, 0x7f0a06af

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->maximizeText:Landroid/widget/TextView;

    const v1, 0x7f0a06ae

    invoke-virtual {p2, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->maximizeButton:Landroid/widget/Button;

    const v2, 0x7f0a06b3

    invoke-virtual {p2, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapWindowText:Landroid/widget/TextView;

    const v2, 0x7f0a06b2

    invoke-virtual {p2, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapRightButton:Landroid/widget/Button;

    const v3, 0x7f0a06b0

    invoke-virtual {p2, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapLeftButton:Landroid/widget/Button;

    const v4, 0x7f0a06b1

    invoke-virtual {p2, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapButtonsLayout:Landroid/view/View;

    new-instance v5, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;

    invoke-direct {v5, p1}, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->decorThemeUtil:Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070318

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->outlineRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070319

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->outlineStroke:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070316

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->fillPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f070317

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->fillRadius:I

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->openMenuAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p6}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p6}, Landroid/widget/Button;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    invoke-virtual {v2, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p6}, Landroid/widget/Button;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    invoke-virtual {v3, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p6}, Landroid/widget/Button;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    invoke-virtual {v4, p6}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0, v0}, Landroid/widget/Button;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p3, p0, v0}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final activateSnapOption(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapButtonsLayout:Landroid/view/View;

    const v1, 0x7f08074b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget v1, v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget v1, v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeStrokeColor:I

    iget v3, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->outlineStroke:I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapLeftButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    if-nez v0, :cond_2

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeSnapSideColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapRightButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    iget-object p0, v2, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->semiActiveSnapSideColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapRightButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    if-nez v0, :cond_5

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeSnapSideColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapLeftButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    move-object v2, p0

    :goto_1
    iget-object p0, v2, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->semiActiveSnapSideColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_2
    return-void
.end method

.method public final createMaximizeButtonDrawable(IILjava/lang/Integer;)Landroid/graphics/drawable/LayerDrawable;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    const/16 v2, 0x8

    new-array v3, v2, [F

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->outlineRadius:I

    if-ge v5, v2, :cond_0

    int-to-float v6, v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v7, 0x0

    invoke-direct {v5, v3, v7, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    new-array v3, v2, [F

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_1

    int-to-float v8, v6

    aput v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v5, v3, v7, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    new-array v1, v2, [F

    move v3, v4

    :goto_2
    if-ge v3, v2, :cond_3

    int-to-float v5, v6

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v1, v7, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    new-array p3, v2, [F

    move v1, v4

    :goto_3
    if-ge v1, v2, :cond_4

    iget v3, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->fillRadius:I

    int-to-float v3, v3

    aput v3, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, p3, v7, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    new-array p2, v4, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_7

    const/4 p3, 0x4

    if-ne p2, p3, :cond_6

    const/4 p2, 0x1

    const/4 p3, 0x2

    filled-new-array {p2, p3}, [I

    move-result-object p2

    :goto_4
    if-ge v4, p3, :cond_5

    aget v6, p2, v4

    iget v10, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->outlineStroke:I

    move-object v5, p1

    move v7, v10

    move v8, v10

    move v9, v10

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x3

    iget v10, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->fillPadding:I

    move-object v5, p1

    move v7, v10

    move v8, v10

    move v9, v10

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected number of layers: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const/4 v6, 0x1

    iget v10, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->outlineStroke:I

    move-object v5, p1

    move v7, v10

    move v8, v10

    move v9, v10

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v6, 0x2

    iget v10, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->fillPadding:I

    move-object v5, p1

    move v7, v10

    move v8, v10

    move v9, v10

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :goto_5
    return-object p1
.end method

.method public final updateSplitSnapSelection(Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;)V
    .locals 6

    sget-object v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->activateSnapOption(Z)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->activateSnapOption(Z)V

    goto/16 :goto_4

    :cond_2
    new-instance p1, Landroid/content/res/ColorStateList;

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    const v2, 0x101009c

    filled-new-array {v2}, [I

    move-result-object v2

    const v3, 0x10100a1

    filled-new-array {v3}, [I

    move-result-object v3

    new-array v0, v0, [I

    filled-new-array {v1, v2, v3, v0}, [[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_0
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget v3, v3, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeSnapSideColor:I

    if-nez v1, :cond_4

    move-object v4, v2

    goto :goto_1

    :cond_4
    move-object v4, v1

    :goto_1
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget v4, v4, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeSnapSideColor:I

    if-nez v1, :cond_5

    move-object v5, v2

    goto :goto_2

    :cond_5
    move-object v5, v1

    :goto_2
    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget v5, v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->activeSnapSideColor:I

    if-nez v1, :cond_6

    move-object v1, v2

    :cond_6
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget v1, v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveSnapSideColor:I

    filled-new-array {v3, v4, v5, v1}, [I

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapButtonsLayout:Landroid/view/View;

    const v0, 0x7f08074a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    if-nez v0, :cond_9

    move-object v0, v2

    :cond_9
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    move-object v2, v0

    :goto_3
    iget-object v0, v2, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->snapOptions:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;->inactiveStrokeColor:I

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->outlineStroke:I

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_4
    return-void
.end method
