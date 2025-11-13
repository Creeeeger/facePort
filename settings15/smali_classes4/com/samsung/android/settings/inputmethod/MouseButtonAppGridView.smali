.class public Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# instance fields
.field public mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

.field public mContext:Landroid/content/Context;

.field public mLoading:Landroid/view/ViewGroup;

.field public mMouseButtonType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getListViewWithSpacing()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;-><init>(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "mouseButtonType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mMouseButtonType:I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0d0800

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroidx/picker/widget/SeslAppPickerGridView;

    iget-object p3, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroidx/picker/widget/SeslAppPickerGridView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const p2, 0x7f0a0131

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/picker/widget/SeslAppPickerGridView;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/16 v1, 0xf

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060738

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    new-instance p3, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)V

    invoke-virtual {p2, p3}, Landroidx/picker/widget/SeslAppPickerView;->setOnItemClickEventListener(Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;)V

    const p2, 0x7f0a08df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mLoading:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p3, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mLoading:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public final onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public final onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public final onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public final onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public final onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public final onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method
