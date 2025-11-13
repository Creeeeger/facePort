.class public final Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;
.super Landroidx/apppickerview/widget/CustomListAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroid/content/Context;Landroidx/apppickerview/widget/AppPickerIconLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Landroidx/apppickerview/widget/CustomListAdapter;-><init>(Landroid/content/Context;ILandroidx/apppickerview/widget/AppPickerIconLoader;)V

    return-void
.end method


# virtual methods
.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    .locals 3

    const/16 v0, -0xa

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-boolean p2, p2, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0249

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0248

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    const p2, 0x7f0a06bd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f060738

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_1
    const p2, 0x7f0a06bb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142723

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, " "

    invoke-static {v0, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1420d4

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/apppickerview/widget/ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method
