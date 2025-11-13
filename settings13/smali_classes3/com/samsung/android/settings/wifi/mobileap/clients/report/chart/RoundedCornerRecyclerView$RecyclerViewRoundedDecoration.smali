.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RoundedCornerRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewRoundedDecoration"
.end annotation


# instance fields
.field mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 77
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_2

    .line 78
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result p3

    .line 79
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    .line 81
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sesl_list_divider_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 82
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_2

    .line 85
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 86
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-gez v5, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v5

    if-nez v5, :cond_1

    .line 93
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 94
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v1

    .line 95
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p3, v5, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    .line 104
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 105
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_4

    .line 107
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 108
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 110
    instance-of v4, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerViewHolder;

    if-eqz v4, :cond_3

    .line 111
    check-cast v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerViewHolder;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerViewHolder;->getRoundMode()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    const/16 v4, 0xf

    if-eq v3, v4, :cond_0

    .line 127
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->-$$Nest$fgetmSeslItemRoundedCorner(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    goto :goto_1

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->-$$Nest$fgetmSeslItemRoundedCorner(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    goto :goto_1

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->-$$Nest$fgetmSeslItemRoundedCorner(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 122
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->-$$Nest$fgetmSeslItemRoundedCorner(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;

    .line 123
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$color;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 122
    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    goto :goto_1

    .line 116
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->-$$Nest$fgetmSeslItemRoundedCorner(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 117
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->-$$Nest$fgetmSeslItemRoundedCorner(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;

    .line 118
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$color;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 117
    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 130
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->-$$Nest$fgetmSeslItemRoundedCorner(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 133
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->-$$Nest$fgetmSeslListRoundedCorner(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
