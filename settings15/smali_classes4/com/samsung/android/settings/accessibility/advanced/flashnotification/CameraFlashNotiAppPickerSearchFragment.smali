.class public Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field public appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

.field public context:Landroid/content/Context;

.field public final installedAppSet:Ljava/util/Set;

.field public loadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field public searchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->installedAppSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1779

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7f0f0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0d28

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p2, 0xa

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->onSearchClicked()V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    const p2, 0x7fffffff

    iput p2, p1, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance p2, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;)V

    iput-object p2, p1, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    const v1, 0x7f0a0c68

    invoke-virtual {p3, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    const v1, 0x7f0d0165

    const/4 v3, 0x0

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x102003f

    invoke-virtual {p3, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p2

    const v1, 0x7f0a011b

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslAppPickerListView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {v1, v2}, Landroidx/picker/widget/SeslAppPickerView;->setAppListOrder(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {v0, p2, v3, p2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const p2, 0x7f0a08de

    invoke-virtual {p3, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x1020004

    invoke-virtual {p3, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f141a2b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/android/settings/widget/LoadingViewController;

    invoke-direct {v1, p2, p1, v0}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->loadingViewController:Lcom/android/settings/widget/LoadingViewController;

    return-object p3
.end method

.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;->loadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZZ)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/CameraFlashNotiAppPickerSearchFragment;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
