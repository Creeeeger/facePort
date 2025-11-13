.class public Lcom/android/keyguard/PinShapeNonHintingView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFirstChildVisibleRect:Landroid/graphics/Rect;

.field public final mPosition:I

.field public final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x11200b8

    invoke-static {v0, p2}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mFirstChildVisibleRect:Landroid/graphics/Rect;

    new-instance p0, Lcom/android/keyguard/PinShapeAdapter;

    invoke-direct {p0, p1}, Lcom/android/keyguard/PinShapeAdapter;-><init>(Landroid/content/Context;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mFirstChildVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p3

    iget-object p4, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mFirstChildVisibleRect:Landroid/graphics/Rect;

    iget p5, p4, Landroid/graphics/Rect;->right:I

    iget p4, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    if-ge p5, p4, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p2

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p4

    if-nez p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const p1, 0x800015

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void

    :cond_2
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method
