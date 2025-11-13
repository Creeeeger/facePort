.class public final Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    new-instance p3, Landroidx/appcompat/util/SeslRoundedCorner;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$RoundedDecoration;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xf

    invoke-virtual {p3, v0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060738

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    new-instance v0, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    new-instance v1, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v5, :cond_0

    invoke-virtual {v1, v4, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p3, v4, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_1
    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    iget v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eqz v6, :cond_2

    invoke-virtual {v0, v4, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    const/4 v6, 0x7

    if-eq v5, v6, :cond_4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const/16 v6, 0x9

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-boolean v6, v5, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mUseFooter:Z

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    invoke-virtual {v1, v4, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v1, v4, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
