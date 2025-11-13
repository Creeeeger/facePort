.class public Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadGestureHelp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadGestureHelp;->mContext:Landroid/content/Context;

    const p2, 0x7f0d09cd

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0c67

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpListAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;

    const v2, 0x7f14241d

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f14241e

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadGestureHelp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0808df

    goto :goto_0

    :cond_0
    const v4, 0x7f0808de

    :goto_0
    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;

    const v2, 0x7f14241f

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f142420

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadGestureHelp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0808e1

    goto :goto_1

    :cond_1
    const v4, 0x7f0808e0

    :goto_1
    const/4 v6, 0x1

    invoke-direct {v1, v4, v6, v2, v3}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;

    const v2, 0x7f14241b

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f14241c

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadGestureHelp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0808dd

    goto :goto_2

    :cond_2
    const v4, 0x7f0808dc

    :goto_2
    const/4 v7, 0x2

    invoke-direct {v1, v4, v7, v2, v3}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;

    const v2, 0x7f142419

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f14241a

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadGestureHelp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0808db

    goto :goto_3

    :cond_3
    const v4, 0x7f0808da

    :goto_3
    const/4 v7, 0x3

    invoke-direct {v1, v4, v7, v2, v3}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;

    const v2, 0x7f142425

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f142426

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadGestureHelp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0808e7

    goto :goto_4

    :cond_4
    const v4, 0x7f0808e6

    :goto_4
    const/4 v7, 0x4

    invoke-direct {v1, v4, v7, v2, v3}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;

    const v2, 0x7f142427

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f142428

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadGestureHelp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f0808e9

    goto :goto_5

    :cond_5
    const v4, 0x7f0808e8

    :goto_5
    const/4 v7, 0x5

    invoke-direct {v1, v4, v7, v2, v3}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;

    const v2, 0x7f142423

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f142424

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadGestureHelp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f0808e3

    goto :goto_6

    :cond_6
    const v4, 0x7f0808e2

    :goto_6
    const/4 v7, 0x6

    invoke-direct {v1, v4, v7, v2, v3}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;

    const v2, 0x7f142421

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f142422

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadGestureHelp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f0808e5

    goto :goto_7

    :cond_7
    const v4, 0x7f0808e4

    :goto_7
    const/4 v7, 0x7

    invoke-direct {v1, v4, v7, v2, v3}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p3, v0, p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpListAdapter;-><init>(Ljava/util/ArrayList;Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadGestureHelp;)V

    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    const p3, 0x7f0a0c6a

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadGestureHelp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p3, v0, v5, v0, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/high16 v1, 0x2000000

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setScrollBarStyle(I)V

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060738

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->semSetRoundedCornerOffset(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const p3, 0x7f0a0cc6

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p3, v0, v5, v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p3, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_8
    return-object p1
.end method
