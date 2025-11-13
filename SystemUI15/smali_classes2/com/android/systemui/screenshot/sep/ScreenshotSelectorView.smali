.class public Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBlackDashedLine:Landroid/graphics/Paint;

.field public final mPaintBackground:Landroid/graphics/Paint;

.field public final mPaintSelection:Landroid/graphics/Paint;

.field public mSelectionRect:Landroid/graphics/Rect;

.field public mStartPoint:Landroid/graphics/Point;

.field public final mWhiteDashedLine:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mPaintBackground:Landroid/graphics/Paint;

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mPaintSelection:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702ba

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0702b9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0702bb

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v2, -0x1

    invoke-static {v2, v0, v1, p1}, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->createDashedLine(IIII)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mWhiteDashedLine:Landroid/graphics/Paint;

    invoke-static {p2, v0, v1, p1}, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->createDashedLine(IIII)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mBlackDashedLine:Landroid/graphics/Paint;

    return-void
.end method

.method public static createDashedLine(IIII)Landroid/graphics/Paint;
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/DashPathEffect;

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 p2, 0x1

    aput p3, v2, p2

    const/4 p3, 0x0

    invoke-direct {v1, v2, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p0, p1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v2, v0

    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v3, v0

    iget v0, p0, Landroid/view/View;->mRight:I

    int-to-float v4, v0

    iget v0, p0, Landroid/view/View;->mBottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mPaintBackground:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mPaintSelection:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mBlackDashedLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mWhiteDashedLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
