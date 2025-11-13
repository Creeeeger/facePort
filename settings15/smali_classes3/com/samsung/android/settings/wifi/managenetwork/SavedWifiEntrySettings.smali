.class public Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$SavedNetworkTrackerCallback;
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public mActionBar:Landroidx/appcompat/app/ActionBar;

.field public mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

.field public mBottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

.field public mContext:Landroid/content/Context;

.field public mDeleteMenu:Landroid/view/MenuItem;

.field public mDragStartPosition:I

.field public mEmptyView:Landroid/widget/TextView;

.field public mIsAdmin:Z

.field public mIsRestricted:Z

.field public mMode:I

.field public final mOnBackPressedCallback:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$1;

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

.field public mSelectAll:Landroid/widget/CheckBox;

.field public mSelectedCount:Landroid/widget/TextView;

.field public mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mDragStartPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mIsAdmin:Z

    iput v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    new-instance v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$1;-><init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mOnBackPressedCallback:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$1;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo p0, "wifi_ap_state"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->setupActionBar()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->updateSelectedItemsCount()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SavedWifiEntrySettings{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v9, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$2;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v9, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    new-instance p1, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/ConnectivityManager;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v8

    sget-object v11, Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter;->MANAGE_NETWORK_COMPARATOR:Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter$LabsNetworkComparator;

    move-object v2, p1

    move-object v10, p0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$SavedNetworkTrackerCallback;Lcom/samsung/android/wifitrackerlib/SavedNetworkFilter$LabsNetworkComparator;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mIsRestricted:Z

    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mIsAdmin:Z

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mOnBackPressedCallback:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$1;

    invoke-virtual {p1, p0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    const-string p0, "WIFI_200"

    const-string p1, "1250"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0d098c

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    invoke-virtual {p3}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->getSavedWifiEntries()Ljava/util/List;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    const p3, 0x7f0a0cee

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2, p3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v0, 0x2000000

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollBarStyle(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillHorizontalPaddingEnabled(Z)V

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$4;-><init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;)V

    iput-object v0, p3, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryDividerItemDecoration;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-direct {v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$3;-><init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    iput-object p0, p3, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mIsAdmin:Z

    iput-boolean v0, p3, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mIsAdmin:Z

    const p3, 0x7f0a0a8b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mEmptyView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p3, 0x7f0a038f

    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0a0102

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p3, Landroid/app/ProgressDialog;

    invoke-direct {p3, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {p3, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1434d7    # 1.970001E38f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p3, 0x7f0a0299

    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mIsAdmin:Z

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    const v0, 0x7f0d0a93

    invoke-virtual {p3, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mBottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;)V

    iput-object v0, p3, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->reselectedListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mBottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    const p3, 0x7f0a0cef

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mDeleteMenu:Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->setupActionBar()V

    return-object p2
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mOnBackPressedCallback:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$1;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->remove()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSelectedCount:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final onSavedWifiEntriesChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    invoke-virtual {p0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->getSavedWifiEntries()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->updateAllWifiEntries(Ljava/util/Collection;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->onSavedWifiEntriesChanged()V

    return-void
.end method

.method public final onWifiStateChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->updateWifiEntries$1()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setMode$2(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->isAutoSelectAllEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->setRemoveAllState(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->updateWifiEntries$1()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    iget v1, v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mMode:I

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    iput p1, v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mMode:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->setupActionBar()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->updateComponentsStatus(I)V

    return-void
.end method

.method public final setupActionBar()V
    .locals 6

    iget v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const v3, 0x800013

    invoke-direct {v0, v3}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d098b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0d98

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSelectAll:Landroid/widget/CheckBox;

    new-instance v5, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a0da5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSelectedCount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v4, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p0, v3, v0}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v2, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const v1, 0x7f1435b9

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateComponentsStatus(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mIsAdmin:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mDeleteMenu:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->getCheckedCount$1()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mDeleteMenu:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->updateSelectedItemsCount()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateSelectedItemsCount()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->getCheckedCount$1()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f12006a

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f143689

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSelectedCount:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSelectAll:Landroid/widget/CheckBox;

    if-lez v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->getRemovableEntriesCount()I

    move-result p0

    if-ne v0, p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    return-void
.end method

.method public final updateWifiEntries$1()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSavedNetworkTracker:Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;

    invoke-virtual {v0}, Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker;->getSavedWifiEntries()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->updateAllWifiEntries(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iput v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mDragStartPosition:I

    iget v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->updateComponentsStatus(I)V

    return-void
.end method
