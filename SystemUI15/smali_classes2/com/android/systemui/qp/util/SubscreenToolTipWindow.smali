.class public final Lcom/android/systemui/qp/util/SubscreenToolTipWindow;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final handler:Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;

.field public final mContentView:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public final mTipWindow:Landroid/widget/PopupWindow;

.field public final mToolTipString:I

.field public final mTooltipText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;-><init>(Lcom/android/systemui/qp/util/SubscreenToolTipWindow;)V

    iput-object v0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->handler:Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;

    iput-object p1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d03b9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0a0d54

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTooltipText:Landroid/widget/TextView;

    iput p2, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mToolTipString:I

    const/4 p0, -0x2

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070de1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setElevation(F)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public final showToolTip(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTooltipText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mToolTipString:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTooltipText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f060a96

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0810a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v4

    aget v1, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-direct {v2, v4, v6, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mContentView:Landroid/view/View;

    const/4 v4, -0x2

    invoke-virtual {v1, v4, v4}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070e26

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    div-int/2addr v4, v0

    sub-int/2addr v5, v4

    sub-int/2addr v5, v1

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v0

    sub-int/2addr v4, v2

    div-int/2addr v1, v0

    add-int/2addr v1, v4

    iget-object v0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, v3, v5, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->handler:Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
