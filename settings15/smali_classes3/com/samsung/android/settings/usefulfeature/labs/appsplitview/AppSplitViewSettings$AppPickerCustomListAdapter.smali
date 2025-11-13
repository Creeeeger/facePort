.class public final Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppPickerCustomListAdapter;
.super Landroidx/apppickerview/widget/CustomListAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;Landroid/content/Context;Landroidx/apppickerview/widget/AppPickerIconLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppPickerCustomListAdapter;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    const/4 p1, 0x5

    invoke-direct {p0, p2, p1, p3}, Landroidx/apppickerview/widget/CustomListAdapter;-><init>(Landroid/content/Context;ILandroidx/apppickerview/widget/AppPickerIconLoader;)V

    return-void
.end method


# virtual methods
.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    .locals 2

    const/16 v0, -0xa

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d08e2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$CustomViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppPickerCustomListAdapter;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    invoke-direct {p2, p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a04df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1420ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string v1, "\n\n"

    invoke-static {v0, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1420cf

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/apppickerview/widget/ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppPickerCustomListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method
