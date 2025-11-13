.class public Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public adapter:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

.field public context:Landroidx/fragment/app/FragmentActivity;

.field public decorationRect:Landroid/graphics/Rect;

.field public mHorizontalPadding:I

.field public mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

.field public mRoundedDecoration:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$RoundedDecoration;

.field public settingsBaseActivity:Lcom/android/settings/core/SettingsBaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const p0, 0xeb14

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->context:Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->context:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->mHorizontalPadding:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->decorationRect:Landroid/graphics/Rect;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "There is no looper in the calling thread."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f1409ba

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->context:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/GalaxySystemAppsInfoManager;->getActiveApexList(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const p2, 0x7f0d08c0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/core/SettingsBaseActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->settingsBaseActivity:Lcom/android/settings/core/SettingsBaseActivity;

    const p2, 0x7f0a0412

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060738

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    iget v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->mHorizontalPadding:I

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->semSetRoundedCornerOffset(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->settingsBaseActivity:Lcom/android/settings/core/SettingsBaseActivity;

    instance-of v1, p2, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f0a0cc6

    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->mHorizontalPadding:I

    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xc

    invoke-virtual {p2, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->context:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p2, v3}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/GalaxySystemAppsInfoManager;->getActiveApexList(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object p2

    const v1, 0x7f0a0ffe

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a06c1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_4

    iget v4, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->mHorizontalPadding:I

    invoke-virtual {v2, v4, v3, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/high16 v4, 0x2000000

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollBarStyle(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillHorizontalPaddingEnabled(Z)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x8

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    if-nez v5, :cond_1

    new-instance v5, Landroidx/appcompat/util/SeslRoundedCorner;

    iget-object v7, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->context:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v5, v7}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v5, v0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->mRoundedDecoration:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$RoundedDecoration;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$RoundedDecoration;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$RoundedDecoration;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->mRoundedDecoration:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$RoundedDecoration;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->mRoundedDecoration:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$RoundedDecoration;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p3, v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;

    iput-object p2, v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->searchData:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->adapter:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-direct {p3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p3, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->adapter:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

    new-instance v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;Ljava/util/ArrayList;)V

    iput-object v0, p3, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_1
    return-object p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->showDeleteActivity(Ljava/lang/String;)V

    return v0
.end method

.method public final showDeleteActivity(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "pkg_name"

    invoke-static {v1, p1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const p0, 0x7f141056

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const p0, 0xeb14

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
