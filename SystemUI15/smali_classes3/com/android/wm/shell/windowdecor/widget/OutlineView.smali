.class public Lcom/android/wm/shell/windowdecor/widget/OutlineView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAlpha:F

.field public mIsClosing:Z

.field public mIsOpening:Z

.field public mRadius:I

.field public mStrokeColor:I

.field public final mStrokePaint:Landroid/graphics/Paint;

.field public final mTmpTransparentRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.debug.caption.outline"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokeColor:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mTmpTransparentRect:Landroid/graphics/Rect;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mAlpha:F

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-boolean p1, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->DEBUG:Z

    if-eqz p1, :cond_0

    const p1, 0x3300ff00

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokeColor:I

    iget v2, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mAlpha:F

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v1, v0, 0x2

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v6, v2

    iget v1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mRadius:I

    int-to-float v7, v1

    int-to-float v8, v1

    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v4

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsOpening:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsClosing:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mTmpTransparentRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mTmpTransparentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mTmpTransparentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    sget-object p0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v4, p0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
