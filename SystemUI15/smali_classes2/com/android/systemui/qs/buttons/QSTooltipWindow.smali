.class public final Lcom/android/systemui/qs/buttons/QSTooltipWindow;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sInstance:Lcom/android/systemui/qs/buttons/QSTooltipWindow;


# instance fields
.field public final handler:Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;

.field public final mContentView:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public final mTipWindow:Landroid/widget/PopupWindow;

.field public mToolTipString:I

.field public final mTooltipText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;-><init>(Lcom/android/systemui/qs/buttons/QSTooltipWindow;)V

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->handler:Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v1, 0x7f0d03b9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0d54

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTooltipText:Landroid/widget/TextView;

    const/4 p0, -0x2

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    const p0, 0x7f140041

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/qs/buttons/QSTooltipWindow;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->sInstance:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->sInstance:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->sInstance:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    return-object p0
.end method


# virtual methods
.method public final hideToolTip()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->isTooltipShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final isTooltipShown()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showToolTip(Landroid/view/View;I)V
    .locals 7

    iput p2, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mToolTipString:I

    iget-object p2, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTooltipText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mToolTipString:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTooltipText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f060a96

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0810a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x2

    new-array v0, p2, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v1, v3, v5, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mContentView:Landroid/view/View;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0710d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0710d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    add-int/2addr v5, v0

    sub-int/2addr v6, v5

    add-int/2addr v6, v4

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, p2

    sub-int/2addr v0, v1

    div-int/2addr v3, p2

    add-int/2addr v3, v0

    iget-object p2, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1, v2, v6, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->handler:Lcom/android/systemui/qs/buttons/QSTooltipWindow$1;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
