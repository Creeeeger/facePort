.class public final Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final arrowDirection$delegate:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$1;

.field public final arrowPosition$delegate:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$2;

.field public final config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

.field public final paint:Landroid/graphics/Paint;

.field public final path:Landroid/graphics/Path;

.field public shouldUpdatePath:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;

    const-string v2, "arrowDirection"

    const-string v3, "getArrowDirection()Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowDirection;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;

    const-string v5, "arrowPosition"

    const-string v6, "getArrowPosition()Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition;"

    invoke-direct {v2, v3, v5, v6, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0, v2}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    sget-object v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowDirection;->UP:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowDirection;

    new-instance v1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$1;

    invoke-direct {v1, v0, p0}, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;)V

    iput-object v1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->arrowDirection$delegate:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$1;

    sget-object v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition$Center;->INSTANCE:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition$Center;

    new-instance v1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$2;

    invoke-direct {v1, v0, p0}, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;)V

    iput-object v1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->arrowPosition$delegate:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$2;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->shouldUpdatePath:Z

    iget p0, p1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->color:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final addRoundedArrowPositioned(Landroid/graphics/Path;Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition;)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    move-object/from16 v1, p2

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    instance-of v2, v1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition$Start;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition$Center;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition$End;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition$Custom;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition$Custom;

    iget v1, v1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition$Custom;->value:F

    :goto_0
    iget-object v2, v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget v5, v2, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowWidth:F

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v1, v5

    iget v2, v2, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->cornerRadius:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget v8, v7, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->cornerRadius:F

    sub-float/2addr v5, v8

    iget v7, v7, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowWidth:F

    sub-float/2addr v5, v7

    invoke-static {v1, v2, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v10, v1, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {p1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget v2, v1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowWidth:F

    iget v1, v1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowHeight:F

    mul-float/2addr v1, v3

    div-float/2addr v2, v1

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    double-to-float v1, v7

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    double-to-float v1, v11

    iget-object v5, v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget v5, v5, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowRadius:F

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    div-float/2addr v5, v11

    iget-object v11, v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget v11, v11, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowRadius:F

    div-float/2addr v11, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v2, v12

    mul-float/2addr v2, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v11, v7

    iget-object v7, v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget v8, v7, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowWidth:F

    div-float/2addr v8, v3

    iget v3, v7, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowHeight:F

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v3, v8, v11

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget v2, v2, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowRadius:F

    sub-float v3, v8, v2

    sub-float v4, v5, v2

    add-float v7, v8, v2

    add-float/2addr v5, v2

    const/16 v2, 0xb4

    int-to-float v2, v2

    add-float v8, v2, v1

    mul-float/2addr v6, v1

    sub-float v11, v2, v6

    const/4 v12, 0x0

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v7

    move v6, v8

    move v7, v11

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v0, v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget v1, v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowWidth:F

    iget v0, v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowHeight:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    invoke-virtual {v10, v10}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->updatePathIfNeeded()V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getOpacity()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->updatePathIfNeeded()V

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget v0, v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->contentPadding:I

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->arrowDirection$delegate:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$1;

    sget-object v1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v0, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowDirection;

    sget-object v1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget p0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowHeight:F

    float-to-int p0, p0

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget p0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowHeight:F

    float-to-int p0, p0

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    return v1
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->shouldUpdatePath:Z

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final updatePathIfNeeded()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->shouldUpdatePath:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->arrowDirection$delegate:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$1;

    sget-object v3, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v4, v3, v1

    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    check-cast v2, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowDirection;

    sget-object v4, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v2, v6, v8, v5, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v5, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->arrowPosition$delegate:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$2;

    aget-object v3, v3, v4

    iget-object v3, v6, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    check-cast v3, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition;

    invoke-virtual {p0, v5, v3}, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->addRoundedArrowPositioned(Landroid/graphics/Path;Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition;)V

    invoke-virtual {v2, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v3, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget v3, v3, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowHeight:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->arrowPosition$delegate:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$2;

    aget-object v3, v3, v4

    iget-object v3, v5, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    check-cast v3, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition;

    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->addRoundedArrowPositioned(Landroid/graphics/Path;Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowPosition;)V

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget v3, v3, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->arrowHeight:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->config:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    iget v3, v3, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;->cornerRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v0, v3, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :goto_1
    iput-boolean v1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->shouldUpdatePath:Z

    :cond_3
    return-void
.end method
