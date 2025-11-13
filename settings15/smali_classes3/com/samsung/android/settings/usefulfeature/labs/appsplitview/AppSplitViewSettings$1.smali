.class public final Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;
.implements Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;


# instance fields
.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object v0, p2, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppRows:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "skipped unexpected package : "

    const-string p1, "AppSplitViewSettings"

    invoke-static {p0, p3, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$CustomViewHolder;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppRows:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;

    iget-object p3, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;)V

    invoke-virtual {p3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget p0, p2, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mState:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object v1, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSearchFilterCompleted(I)V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method
