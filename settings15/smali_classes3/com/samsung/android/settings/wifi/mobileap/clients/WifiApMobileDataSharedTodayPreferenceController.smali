.class public Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field public static final ACTION_WIFI_AP_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field private static final INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final TAG:Ljava/lang/String; = "WifiApMobileDataSharedTodayPreferenceController"


# instance fields
.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClientsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mClientsRecyclerViewAdapter:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;

.field private mConnectedClientsSummaryTextView:Landroid/widget/TextView;

.field mConnectedDeviceCount:I

.field private mContainerLinearLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDataLimitAlertImageView:Landroid/widget/ImageView;

.field private mDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

.field private mDataLimitLayout:Landroid/widget/LinearLayout;

.field private mDataLimitTextView:Landroid/widget/TextView;

.field private mDataLimitWarningTextView:Landroid/widget/TextView;

.field private mDataUsageTextView:Landroid/widget/TextView;

.field private mIsAnimateProgressBarRequired:Z

.field private mIsClientsListViewVisible:Z

.field private mIsDataLimitAlertIconToBeShown:Z

.field private mIsLockUnlockNetworkButtonToBeShown:Z

.field private mIsPreferenceClickEnabled:Z

.field private mIsSetOrEditButtonViewVisible:Z

.field private mIsTop10ColorsToBeShown:Z

.field private mLockNetworkDialog:Landroid/app/AlertDialog;

.field private mMaxNumberOfClientsRequired:I

.field private mMaxPositionToIncludeDisconnectedInList:I

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSetOrEditLimitButton:Landroid/widget/Button;

.field private mSetOrEditLimitFrameLayout:Landroid/widget/FrameLayout;

.field private mStackProgressbar:Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;

.field private mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mWifiApClientsManageMobileHotspot:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

.field private mWifiApLockUnlockButton:Landroid/widget/Button;

.field private mWifiApLockUnlockFrameLayout:Landroid/widget/FrameLayout;

.field private mWifiApLockedImageView:Landroid/widget/ImageView;

.field private mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method public static synthetic $r8$lambda$YekQSWe0coaGwMrpa5FCL-kSpoQ(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->lambda$displayPreference$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetdismissListener(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataLimitDialog(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Lcom/samsung/android/wifi/SemWifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThisLayoutPreference(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Lcom/android/settingslib/widget/LayoutPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDataLimitDialog(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsPreferenceClickEnabled:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsAnimateProgressBarRequired:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsClientsListViewVisible:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsSetOrEditButtonViewVisible:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsDataLimitAlertIconToBeShown:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsLockUnlockNetworkButtonToBeShown:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mMaxPositionToIncludeDisconnectedInList:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mMaxNumberOfClientsRequired:I

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsTop10ColorsToBeShown:Z

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mConnectedDeviceCount:I

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;I)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method private lambda$displayPreference$0(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isHotspotNetworkLocked(Lcom/samsung/android/wifi/SemWifiManager;)Z

    move-result p1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "Lock/Unlock Button clicked, Current lock state: "

    invoke-static {v1, v0, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "8095"

    const-string v2, "TETH_013"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string/jumbo v3, "setHotspotNetworkLocked : false"

    const-string v4, "WifiApFrameworkUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setSmartMHSLocked(I)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const-wide/16 p0, 0x1

    invoke-static {p0, p1, v2, v1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mConnectedDeviceCount:I

    if-lez p1, :cond_1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v2, v1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->showLockNetworkDialog()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataUsageTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mConnectedClientsSummaryTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0493

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a048c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitAlertImageView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0491

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0494

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitWarningTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a048e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mSetOrEditLimitFrameLayout:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a1181

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockedImageView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a08f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockUnlockButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a08f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockUnlockFrameLayout:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a048d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mSetOrEditLimitButton:Landroid/widget/Button;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0985

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mStackProgressbar:Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsTop10ColorsToBeShown:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setIsTop3ColorsToBeShown - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StackProgressbar"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p1, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mIsTop10ColorsToBeShown:Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0bd4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mClientsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;->mContext:Landroid/content/Context;

    iput-object v2, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;->mTopHotspotWifiApClientConfigList:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060b77

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;->mWarningColor:I

    const v2, 0x1010036

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getColorFromAttribute(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;->mSummaryColor:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mClientsRecyclerViewAdapter:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mClientsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mClientsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0413

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContainerLinearLayout:Landroid/widget/LinearLayout;

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsPreferenceClickEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x101030e

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x1010130

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContainerLinearLayout:Landroid/widget/LinearLayout;

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsSetOrEditButtonViewVisible:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mSetOrEditLimitFrameLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mSetOrEditLimitFrameLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockUnlockButton:Landroid/widget/Button;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsPreferenceClickEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "TETH_010"

    const-string v2, "8070"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xd48

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsAnimateProgressBarRequired:Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mThisLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mLockNetworkDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mLockNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsPreferenceClickEnabled:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsClientsListViewVisible:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsSetOrEditButtonViewVisible:Z

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifiApLockNetworkSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsLockUnlockNetworkButtonToBeShown:Z

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mMaxPositionToIncludeDisconnectedInList:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mMaxNumberOfClientsRequired:I

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsTop10ColorsToBeShown:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsDataLimitAlertIconToBeShown:Z

    return-void
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApClientsManageMobileHotspot:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsPreferenceClickEnabled:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsClientsListViewVisible:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsSetOrEditButtonViewVisible:Z

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifiApLockNetworkSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsLockUnlockNetworkButtonToBeShown:Z

    :cond_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mMaxPositionToIncludeDisconnectedInList:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mMaxNumberOfClientsRequired:I

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsTop10ColorsToBeShown:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsDataLimitAlertIconToBeShown:Z

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public showLockNetworkDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    sget-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f143390

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;-><init>(ILjava/lang/Object;)V

    const v2, 0x7f14338f

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$5;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const v2, 0x7f1408bf

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f143392

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mLockNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mMaxPositionToIncludeDisconnectedInList:I

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mMaxNumberOfClientsRequired:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTopHotspotClientConfigListToday - topConnectedAndDisconnected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxListLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiApConnectedDeviceUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->getTopHotspotClientsToday(II)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getTopHotspotClientConfigListToday(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApTodayTotalDataUsage(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->updateState(Ljava/util/List;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;)V

    return-void
.end method

.method public updateState(Ljava/util/List;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;",
            ">;",
            "Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v7, v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    const/4 v8, 0x0

    if-lez v7, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApStaListDetail()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    iput v11, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mConnectedDeviceCount:I

    :cond_1
    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataUsageTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x8

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mSetOrEditLimitButton:Landroid/widget/Button;

    const v11, 0x7f14331f

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setText(I)V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v6

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v11

    div-double/2addr v6, v11

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v11

    double-to-int v6, v6

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mSetOrEditLimitButton:Landroid/widget/Button;

    const v7, 0x7f1433e9

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v6, v8

    :goto_1
    const/16 v7, 0x64

    if-lt v6, v7, :cond_3

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitWarningTextView:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    const v12, 0x7f143301

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsDataLimitAlertIconToBeShown:Z

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/16 v7, 0x5a

    if-lt v6, v7, :cond_4

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitWarningTextView:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    const v12, 0x7f1432fd

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsDataLimitAlertIconToBeShown:Z

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_2
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mDataLimitAlertImageView:Landroid/widget/ImageView;

    new-instance v11, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$7;

    invoke-direct {v11, v0, v6}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;I)V

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mConnectedDeviceCount:I

    if-nez v6, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v6

    cmpg-double v6, v6, v9

    if-gtz v6, :cond_7

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f14330c

    invoke-static {v7}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_7
    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f1433ae

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_8
    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mConnectedDeviceCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const v12, 0x7f120063

    invoke-virtual {v6, v12, v7, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mConnectedClientsSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->TAG:Ljava/lang/String;

    const-string v11, "hotspotClientList.size(): "

    invoke-static {v6, v11, v7}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v11, v7, [F

    move v12, v8

    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_9

    new-instance v13, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;

    iget-wide v14, v14, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mDataUsageForTodayInBytes:J

    invoke-direct {v13, v14, v15}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    invoke-virtual {v13}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v13

    double-to-float v13, v13

    aput v13, v11, v12

    add-int/2addr v12, v2

    goto :goto_4

    :cond_9
    move v13, v8

    const/4 v14, 0x0

    :goto_5
    if-ge v13, v7, :cond_a

    aget v15, v11, v13

    add-float/2addr v14, v15

    add-int/2addr v13, v2

    goto :goto_5

    :cond_a
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v7

    iget-wide v12, v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v12, v12

    cmpl-double v7, v12, v9

    if-lez v7, :cond_b

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v12

    sub-double/2addr v9, v12

    double-to-float v12, v9

    goto :goto_6

    :cond_b
    const/4 v12, 0x0

    :goto_6
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mStackProgressbar:Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;

    add-float/2addr v14, v12

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsAnimateProgressBarRequired:Z

    invoke-virtual {v3, v11, v14, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->setProgressbar([FFZ)V

    iput-boolean v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsAnimateProgressBarRequired:Z

    iget-boolean v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsClientsListViewVisible:Z

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mClientsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mClientsRecyclerViewAdapter:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;

    iput-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsRecyclerViewAdapter;->mTopHotspotWifiApClientConfigList:Ljava/util/List;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mClientsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    if-lez v6, :cond_c

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mClientsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_7

    :cond_c
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mClientsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_7

    :cond_d
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mClientsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_7
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifiApLockNetworkSupported()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isHotspotNetworkLocked(Lcom/samsung/android/wifi/SemWifiManager;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsLockUnlockNetworkButtonToBeShown:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockUnlockButton:Landroid/widget/Button;

    const v2, 0x7f143411

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockUnlockFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_8

    :cond_e
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockUnlockFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_8

    :cond_f
    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mConnectedDeviceCount:I

    if-lez v1, :cond_11

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mIsLockUnlockNetworkButtonToBeShown:Z

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockUnlockButton:Landroid/widget/Button;

    const v2, 0x7f143391

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockUnlockFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_8

    :cond_10
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockUnlockFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_8

    :cond_11
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockedImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->mWifiApLockUnlockFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_12
    :goto_8
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
