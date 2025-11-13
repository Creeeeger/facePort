.class public Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;
.implements Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;,
        Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;,
        Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;,
        Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$RoundedDecoration;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mActionBar:Landroidx/appcompat/app/ActionBar;

.field private mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mBottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDeleteMenu:Landroid/view/MenuItem;

.field private mDividerCellDecoration:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHandler:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;

.field private mHasSavedData:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsDevelopmentMode:Z

.field private mIsRemoveMode:Z

.field private mIsRestricted:Z

.field private mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRoundedDecoration:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$RoundedDecoration;

.field mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

.field private final mScreenId:Ljava/lang/String;

.field private mSelectAll:Landroid/widget/CheckBox;

.field private mSelectedCount:Landroid/widget/TextView;

.field private mSkipUpdate:Z

.field private mUiHandler:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;

.field mWifiEntrySavedState:Landroid/os/Bundle;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$5-njNJLwHx5Os20foCfaSNAh2nA(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Landroid/view/MenuItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->lambda$initBottomButtonBar$0(Landroid/view/MenuItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ppAktYwDuFHOtC38EzZyCV4yy8I(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->lambda$setupActionBarMenus$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mHandler:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRemoveMode(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemRoundedCorner(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroidx/appcompat/util/SeslRoundedCorner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressDialog(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectAll(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSelectAll:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkipUpdate(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSkipUpdate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUiHandler(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mUiHandler:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveAllPendingMessages(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->removeAllPendingMessages()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupActionBarMenus(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setupActionBarMenus(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectedItemsCount(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateSelectedItemsCount()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSkipStatus(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateSkipStatus(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiEntries(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateWifiEntries()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 92
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_wifi"

    .line 179
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSkipUpdate:Z

    const-string v0, "WIFI_220"

    .line 147
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mScreenId:Ljava/lang/String;

    .line 149
    new-instance v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$1;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private exitAcitivity()V
    .locals 0

    .line 578
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 2

    .line 436
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 437
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    .line 438
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 440
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->wifi_deleting_networks:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 439
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getSeslLongPressMultiSelectionListener()Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;
    .locals 1

    .line 592
    new-instance v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V

    return-object v0
.end method

.method private initBottomButtonBar()V
    .locals 4

    .line 406
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 409
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 410
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 411
    sget v3, Lcom/android/settings/R$layout;->sec_wifi_saved_access_points_bottom:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mBottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 412
    new-instance v3, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;)V

    .line 430
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mBottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 431
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mBottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v2, Lcom/android/settings/R$id;->saved_access_points_bottom:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mDeleteMenu:Landroid/view/MenuItem;

    .line 432
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private synthetic lambda$initBottomButtonBar$0(Landroid/view/MenuItem;)V
    .locals 2

    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->saved_access_points_bottom:I

    if-ne p1, v0, :cond_2

    .line 415
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Click bottom button removeMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SavedAccessPointsWifiSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 417
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setRemoveMode(Z)V

    .line 418
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mUiHandler:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 419
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mHandler:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "WIFI_220"

    const-string v1, "1263"

    .line 421
    invoke-static {p1, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setRemoveMode(Z)V

    .line 423
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getRemovableEntriesNumber()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 424
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->setRemoveAllState(Z)V

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateSelectedItemsCount()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$setupActionBarMenus$1(Landroid/view/View;)V
    .locals 1

    .line 455
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->setRemoveAllState(Z)V

    .line 456
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateSelectedItemsCount()V

    return-void
.end method

.method private removeAllPendingMessages()V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mHandler:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;->removePendingMessages()V

    .line 583
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mUiHandler:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->removePendingMessages()V

    return-void
.end method

.method private setAppBarTitle(Ljava/lang/String;)V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setRemoveMode(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mUiHandler:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->removePendingMessages()V

    const/4 v0, 0x1

    .line 525
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateSkipStatus(Z)V

    goto :goto_0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_manage_network_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setAppBarTitle(Ljava/lang/String;)V

    .line 529
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    .line 530
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->setRemoveMode(Z)V

    .line 531
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setupActionBarMenus(Z)V

    return-void
.end method

.method private setupActionBarMenus(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 446
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 447
    new-instance p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const v2, 0x800013

    const/4 v3, -0x1

    invoke-direct {p1, v3, v3, v2}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(III)V

    .line 451
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->sec_saved_access_points_custom_action_bar:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 453
    sget v3, Lcom/android/settings/R$id;->select_all_checkbox:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSelectAll:Landroid/widget/CheckBox;

    .line 454
    new-instance v4, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    sget v3, Lcom/android/settings/R$id;->selected_items_count:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSelectedCount:Landroid/widget/TextView;

    .line 460
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v3, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 461
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p0, v2, p1}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    .line 463
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 464
    invoke-virtual {p0, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    goto :goto_1

    .line 466
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 467
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 468
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    sget v2, Lcom/android/settings/R$string;->wifi_manage_network_title:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 469
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setAppBarTitle(Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mDeleteMenu:Landroid/view/MenuItem;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getRemovableEntriesNumber()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    return-void
.end method

.method private updateEmptyView(Z)V
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateSelectedItemsCount()V
    .locals 7

    .line 535
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    if-nez v0, :cond_0

    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getCheckedCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 537
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->wifi_select_item_network:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 538
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->wifi_select_item_network_zero:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 540
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSelectedCount:Landroid/widget/TextView;

    if-nez v4, :cond_2

    return-void

    .line 543
    :cond_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setAppBarTitle(Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mDeleteMenu:Landroid/view/MenuItem;

    if-eqz v3, :cond_4

    if-lez v0, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_4
    if-nez v0, :cond_5

    .line 549
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 550
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 552
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSelectAll:Landroid/widget/CheckBox;

    if-lez v0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getRemovableEntriesNumber()I

    move-result p0

    if-ne v0, p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    return-void
.end method

.method private updateSkipStatus(Z)V
    .locals 0

    .line 587
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSkipUpdate:Z

    .line 588
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->changeUpdateStatus(Z)V

    return-void
.end method

.method private updateWifiEntries()V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->getSavedWifiEntries()Ljava/util/List;

    move-result-object v0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get new WifiEntries "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SavedAccessPointsWifiSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->updateAllAccessPoints(Ljava/util/Collection;)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateEmptyView(Z)V

    .line 402
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setupActionBarMenus(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 235
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "wifi_ap_state"

    .line 242
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mWifiEntrySavedState:Landroid/os/Bundle;

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 388
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRestricted:Z

    return-void
.end method

.method public onBackKey()V
    .locals 2

    .line 485
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    if-eqz v0, :cond_0

    const-string v0, "WIFI_220"

    const-string v1, "1265"

    .line 486
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 488
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->setRemoveAllState(Z)V

    .line 489
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 490
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setRemoveMode(Z)V

    .line 491
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateSkipStatus(Z)V

    .line 492
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateWifiEntries()V

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;)V

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->exitAcitivity()V

    :goto_0
    return-void
.end method

.method public onCheckedChange()V
    .locals 0

    .line 501
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateSelectedItemsCount()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 379
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 380
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSelectAll:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    .line 381
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setupActionBarMenus(Z)V

    .line 382
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateSelectedItemsCount()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    .line 189
    invoke-super/range {p0 .. p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mContext:Landroid/content/Context;

    .line 193
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SavedAccessPointsWifiSettings{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    .line 196
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 197
    new-instance v11, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$2;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v11, v0, v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$2;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Ljava/time/ZoneId;)V

    .line 203
    new-instance v1, Lcom/android/wifitrackerlib/SavedNetworkTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    .line 204
    invoke-virtual {v6, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/net/wifi/WifiManager;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    .line 205
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/net/ConnectivityManager;

    new-instance v9, Landroid/os/Handler;

    .line 206
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    .line 207
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v10

    const-wide/16 v12, 0x3a98

    const-wide/16 v14, 0x2710

    const/16 v16, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lcom/android/wifitrackerlib/SavedNetworkTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

    .line 213
    new-instance v1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mHandler:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;

    .line 214
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 217
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.WIFI_CONNECTIVITY_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const-string v3, "development_mode"

    .line 224
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsDevelopmentMode:Z

    .line 227
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mUiHandler:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRestricted:Z

    const-string v0, "WIFI_200"

    const-string v1, "1250"

    .line 230
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const-string v0, "SavedAccessPointsWifiSettings"

    const-string v1, "onCreateView"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 253
    sget v0, Lcom/android/settings/R$layout;->sec_saved_access_points_list:I

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->getSavedWifiEntries()Ljava/util/List;

    move-result-object v3

    .line 256
    new-instance v0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsDevelopmentMode:Z

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/net/wifi/WifiManager;ZLandroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    .line 258
    sget v0, Lcom/android/settings/R$id;->saved_access_point_recycle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 259
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheQuality(I)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->getSeslLongPressMultiSelectionListener()Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->setOnSavedAccessPointsListener(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$OnSavedAccessPointsListener;)V

    .line 270
    sget v0, Lcom/android/settings/R$id;->no_saved_ap_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 271
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateEmptyView(Z)V

    .line 274
    new-instance p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mDividerCellDecoration:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$DividerCellDecoration;

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 277
    new-instance p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$RoundedDecoration;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$RoundedDecoration;-><init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRoundedDecoration:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$RoundedDecoration;

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 280
    new-instance p1, Landroidx/appcompat/util/SeslRoundedCorner;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->collapsing_app_bar:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 285
    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->initBottomButtonBar()V

    if-eqz p3, :cond_3

    .line 292
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mHasSavedData:Z

    const-string p1, "remove_mode_state"

    .line 293
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    .line 295
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setRemoveMode(Z)V

    .line 297
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    if-eqz p1, :cond_3

    const-string p1, "remove_item_num"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setupActionBarMenus(Z)V

    .line 299
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    move p3, v4

    .line 300
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getItemCount()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    aget-boolean v1, p1, p3

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->setChecked(IZ)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 303
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateSelectedItemsCount()V

    .line 307
    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsDevelopmentMode:Z

    if-eqz p1, :cond_5

    .line 308
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getRecommendedWifiEntries()[Z

    move-result-object p1

    .line 309
    array-length p3, p1

    if-eqz p3, :cond_5

    .line 310
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    .line 311
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setRemoveMode(Z)V

    .line 312
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setupActionBarMenus(Z)V

    .line 313
    :goto_2
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {p3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getItemCount()I

    move-result p3

    if-ge v4, p3, :cond_4

    .line 314
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    aget-boolean v0, p1, v4

    invoke-virtual {p3, v4, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->setChecked(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 316
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateSelectedItemsCount()V

    :cond_5
    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 368
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->removeAllPendingMessages()V

    .line 374
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 519
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mHandler:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onLaunchDetailsFragment()V
    .locals 0

    .line 506
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->removeAllPendingMessages()V

    return-void
.end method

.method public onLongClick()V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getRemovableEntriesNumber()I

    move-result v0

    if-lez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    const/4 v0, 0x1

    .line 513
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setRemoveMode(Z)V

    :cond_0
    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 476
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    .line 477
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 478
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSelectedCount:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 479
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 360
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;)V

    .line 362
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 345
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    const-string v0, "SavedAccessPointsWifiSettings"

    const-string v1, "onResume"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WIFI_220"

    .line 347
    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;)V

    .line 350
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSkipUpdate:Z

    if-nez v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->updateWifiEntries()V

    goto :goto_0

    .line 353
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mHasSavedData:Z

    if-nez v0, :cond_1

    .line 354
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->setupActionBarMenus(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 325
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 326
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    if-eqz v0, :cond_1

    .line 327
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRemoveMode:Z

    const-string v1, "remove_mode_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getItemCount()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 329
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mAdapter:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getSavedWifiEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->isChecked()Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "remove_item_num"

    .line 332
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mHasSavedData:Z

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 339
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 1

    .line 557
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return-void

    .line 563
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->exitAcitivity()V

    return-void
.end method
