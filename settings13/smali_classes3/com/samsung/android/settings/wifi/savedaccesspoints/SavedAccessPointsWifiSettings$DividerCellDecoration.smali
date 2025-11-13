.class Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;
.super Landroidx/recyclerview/widget/DividerItemDecoration;
.source "SavedAccessPointsWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerCellDecoration"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Landroid/content/Context;I)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    .line 677
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 678
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;->mContext:Landroid/content/Context;

    .line 679
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->sec_wifi_saved_access_points_list_divider:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private isLastCell(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 2

    .line 714
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 715
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    add-int/2addr p2, v1

    .line 716
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    if-ne p0, v1, :cond_0

    move p1, v1

    :cond_0
    return p1
.end method

.method private shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z
    .locals 3

    .line 708
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 710
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;->isLastCell(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 723
    invoke-direct {p0, p3, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;->shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 724
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 686
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 688
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 690
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    move v0, v1

    .line 695
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 696
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 697
    invoke-direct {p0, p2, v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;->shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 698
    invoke-virtual {p2, v3, p3}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 699
    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v4, v3

    .line 700
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int v3, v4, v3

    .line 701
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 702
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
