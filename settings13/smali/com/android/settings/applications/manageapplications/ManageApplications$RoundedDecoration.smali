.class Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoundedDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    .line 466
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 468
    new-instance p3, Landroidx/appcompat/util/SeslRoundedCorner;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p3, v0, v1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    const/16 v0, 0xf

    .line 469
    invoke-virtual {p3, v0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 470
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v0, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 472
    new-instance v0, Landroidx/appcompat/util/SeslRoundedCorner;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    const/4 v2, 0x3

    .line 473
    invoke-virtual {v0, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 474
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 476
    new-instance v4, Landroidx/appcompat/util/SeslRoundedCorner;

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    const/16 v5, 0xc

    .line 477
    invoke-virtual {v4, v5}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 478
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 480
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    .line 482
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 483
    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 484
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_1

    .line 486
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v7, v7, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v7, :cond_0

    .line 487
    invoke-virtual {v4, v6, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 489
    :cond_0
    invoke-virtual {p3, v6, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    if-ne v7, v2, :cond_2

    .line 491
    iget-object v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v8, v8, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v8, :cond_2

    .line 492
    invoke-virtual {v0, v6, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 494
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v7, v7, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eqz v7, :cond_5

    .line 495
    invoke-virtual {v0, v6, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    const/4 v8, 0x6

    if-eq v7, v8, :cond_4

    if-ne v7, v1, :cond_5

    .line 498
    :cond_4
    invoke-virtual {v4, v6, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
