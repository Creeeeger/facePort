.class public Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "WifiP2pDividerItemDecorator.java"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mInsetLeft:I

.field private mInsetRight:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mInsetLeft:I

    .line 20
    iput v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mInsetRight:I

    .line 21
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mDividerHeight:I

    return-void
.end method


# virtual methods
.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 41
    iget p0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mDividerHeight:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 26
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    iget v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mInsetLeft:I

    add-int/2addr p3, v0

    .line 27
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mInsetRight:I

    sub-int/2addr v0, v1

    .line 28
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_0

    .line 30
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 33
    iget v5, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mDividerHeight:I

    add-int/2addr v5, v4

    .line 34
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p3, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 45
    iput p2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mInsetLeft:I

    .line 46
    iput p3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mInsetRight:I

    .line 47
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->mDividerHeight:I

    return-void
.end method
