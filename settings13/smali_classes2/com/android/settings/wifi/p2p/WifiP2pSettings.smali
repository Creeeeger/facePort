.class public Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private static mCurFontScale:F

.field private static mIdleStartCnt:I

.field static mInvited:Z

.field private static mMaxFontScale:F

.field private static mPeers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# instance fields
.field private customScreenView:Landroid/view/View;

.field mActivity:Landroid/app/Activity;

.field private mAutoFinish:Z

.field private mAvailablePeers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mContext:Landroid/content/Context;

.field private mDefaultDivider:Landroid/graphics/drawable/Drawable;

.field private mDeviceDescriptionViewText:Ljava/lang/String;

.field mFullScanTimer:Landroid/os/CountDownTimer;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field mHandler:Landroid/os/Handler;

.field mIdleTimer:Landroid/os/CountDownTimer;

.field final mIntentFilter:Landroid/content/IntentFilter;

.field mIsP2pConnected:Z

.field mIsP2pEnabled:Z

.field private mIsResume:Z

.field private mIsTablet:Z

.field private mItemDecoration:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;

.field private mListenTimer:Landroid/os/CountDownTimer;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoDevicesPreference:Landroidx/preference/Preference;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mPassCreate:Z

.field private mPeersGroup:Landroidx/preference/PreferenceGroup;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReceivedStickyEnabled:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSavedDeviceName:Ljava/lang/String;

.field mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mTalkback:Z

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mThisDeviceDescription:Landroidx/preference/Preference;

.field private mThisDeviceDescriptionView:Landroid/widget/TextView;

.field mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field needToEnableP2p:Z

.field private progressBarItem:Landroid/view/MenuItem;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoFinish(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvailablePeers(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannel(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenTimer(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mListenTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkInfo(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNoDevicesPreference(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceivedStickyEnabled(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiP2pManager(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextToSpeech(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNetworkInfo(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNoDevicesPreference(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroidx/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroidx/preference/Preference;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReceivedStickyEnabled(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddNoDeviceLayout(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addNoDeviceLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelFullScan(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->cancelFullScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishDueToDisabled(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->finishDueToDisabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSecuredMacAddress(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetThisDeviceWithP2pMac(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getThisDeviceWithP2pMac()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideProgressBar(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->hideProgressBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misP2pAvailable(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misP2pConnected(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misP2pEnabled(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrefreshPreferenceSreen(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->refreshPreferenceSreen()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestExternalPeers(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->requestExternalPeers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestGroupPeers(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->requestGroupPeers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselFinish(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->selFinish()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScanTimerDoNotListen(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimerDoNotListen()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScanTimerEnableScan(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimerEnableScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowProgressBar(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showProgressBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtriggerFullScan(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->triggerFullScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmIdleStartCnt()I
    .locals 1

    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmPeers()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmThisDevice()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmCreatedGroupInfo(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmThisDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 153
    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    const/4 v0, 0x0

    .line 157
    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 163
    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    const v0, 0x3f99999a    # 1.2f

    .line 164
    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxFontScale:F

    const v0, 0x3f8ccccd    # 1.1f

    .line 165
    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurFontScale:F

    .line 1357
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;

    invoke-direct {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "no_config_wifi"

    .line 387
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Ljava/util/ArrayList;

    .line 154
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mItemDecoration:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;

    .line 155
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 162
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mListenTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    .line 170
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPassCreate:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->needToEnableP2p:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsResume:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsP2pEnabled:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsP2pConnected:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 186
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    .line 194
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 421
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method private addMyDeviceDescriptionView()V
    .locals 7

    .line 987
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurFontScale:F

    .line 988
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_wifi_p2p_custom_preference_my_device:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customScreenView:Landroid/view/View;

    .line 989
    sget v1, Lcom/android/settings/R$id;->p2ptitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceDescriptionView:Landroid/widget/TextView;

    .line 990
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getMyDeviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 991
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_wifi_p2p_enabled_on_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<br/><br/>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_wifi_p2p_max_number_connectable_devices:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceDescriptionViewText:Ljava/lang/String;

    .line 992
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setDescriptionText()V

    .line 994
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurFontScale:F

    sget v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxFontScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 995
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 996
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceDescriptionView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceDescriptionView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1002
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customScreenView:Landroid/view/View;

    invoke-virtual {v0, p0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private addNoDeviceLayout()V
    .locals 3

    .line 1017
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1018
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1020
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    .line 1021
    new-instance v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroidx/preference/Preference;

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$layout;->sec_wifi_p2p_preference_noitem:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 1025
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_wifi_p2p_no_device_found:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1027
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 1029
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1030
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 1031
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private cancelConnect()V
    .locals 3

    .line 1236
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    const-string v0, "WifiP2pSettings"

    const-string v1, "cancelConnect ====> cancelConnect()"

    .line 1237
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1238
    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1239
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$17;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$17;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private cancelCountdownOfScanTimers()V
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 760
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 761
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method private cancelFullScan()V
    .locals 1

    const/4 v0, 0x0

    .line 1169
    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    .line 1170
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1171
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method private checkSemWifiP2pManager()Z
    .locals 2

    .line 1398
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string/jumbo v0, "sem_wifi_p2p"

    .line 1399
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 951
    new-instance p0, Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/util/Formatter;-><init>()V

    const/16 v0, 0xc

    const/16 v1, 0xe

    .line 953
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 954
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    xor-int/lit16 v2, v2, 0x80

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 958
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {p0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 959
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    invoke-virtual {p0}, Ljava/util/Formatter;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 961
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 963
    invoke-virtual {p0}, Ljava/util/Formatter;->close()V

    const-string v2, ""

    .line 966
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 963
    :goto_1
    invoke-virtual {p0}, Ljava/util/Formatter;->close()V

    .line 964
    throw p1
.end method

.method private endConnection()V
    .locals 5

    .line 1189
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_2

    .line 1191
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 1192
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pManager;->isGroupClientRemovalSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1194
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->removeClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/MacAddress;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1204
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " device address is wrong : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiP2pSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1207
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    if-eqz v1, :cond_2

    .line 1208
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->removeClient(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    .line 1222
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$16;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private finishDueToDisabled()V
    .locals 1

    const/4 v0, 0x0

    .line 1270
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsP2pEnabled:Z

    .line 1271
    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1273
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimerDoNotListen()V

    .line 1274
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1275
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1278
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->selFinish()V

    return-void
.end method

.method private getMyDeviceName()Ljava/lang/String;
    .locals 3

    .line 970
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 975
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 979
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 983
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u200e"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3

    .line 1088
    new-instance p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;-><init>()V

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1089
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->setDeviceAddress(Landroid/net/MacAddress;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 1090
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->enablePersistentMode(Z)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object p0

    .line 1091
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->build()Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object p0

    .line 1093
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1094
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, p1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1095
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1096
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v0, 0x2

    iput v0, p1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1097
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1098
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v0, p1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1100
    :cond_2
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, p1, Landroid/net/wifi/WpsInfo;->setup:I

    :goto_0
    return-object p0
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    .line 1176
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    const/16 v3, 0xe

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private getThisDeviceWithP2pMac()V
    .locals 3

    .line 1377
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    return-void

    .line 1379
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$19;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$19;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestDeviceInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;)V

    return-void
.end method

.method private getWifiP2pPeer(Landroid/net/wifi/p2p/WifiP2pDevice;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    .locals 1

    .line 1406
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-object v0
.end method

.method private hideProgressBar()V
    .locals 3

    .line 1254
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1256
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1257
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1258
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private isEdmWifiDirectAllowed()Z
    .locals 7

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 1292
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1293
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "isWifiDirectAllowed"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1297
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isWifiDirectAllowed"

    .line 1298
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiP2pSettings"

    const-string v1, "isEdmWifiDirectAllowed false"

    .line 1299
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 1303
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1304
    throw v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isLandscape()Z
    .locals 1

    .line 1373
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isP2pAvailable()Z
    .locals 5

    const-string/jumbo v0, "wifi"

    .line 1058
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1060
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1061
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 1062
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 1063
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    :cond_0
    return v1

    .line 1065
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.aware"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "wifiaware"

    .line 1066
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/aware/WifiAwareManager;

    if-eqz p0, :cond_2

    .line 1067
    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareManager;->isDeviceAttached()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private isP2pConnected()Z
    .locals 0

    .line 1084
    iget-boolean p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsP2pConnected:Z

    return p0
.end method

.method private isP2pEnabled()Z
    .locals 0

    .line 1054
    iget-boolean p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsP2pEnabled:Z

    return p0
.end method

.method private isWifiOn()Z
    .locals 2

    const-string/jumbo v0, "wifi"

    .line 1074
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 1076
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1077
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method private preProcessOfRequestPeers()V
    .locals 1

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    .line 369
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsP2pEnabled:Z

    .line 371
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 372
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->refreshPreferenceSreen()V

    return-void
.end method

.method private refreshPreferenceSreen()V
    .locals 1

    .line 382
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 383
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private requestExternalPeers()V
    .locals 3

    .line 351
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->preProcessOfRequestPeers()V

    .line 352
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    return-void
.end method

.method private requestGroupPeers()V
    .locals 3

    .line 341
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->preProcessOfRequestPeers()V

    .line 342
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    return-void
.end method

.method private selFinish()V
    .locals 2

    .line 1282
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 1283
    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 p0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    goto :goto_0

    .line 1285
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void
.end method

.method private sendP2pSettingsStartedBroadcast(Z)V
    .locals 3

    .line 1182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.p2p.SETTINGS_STRATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "started"

    .line 1183
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1184
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1185
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsResume:Z

    return-void
.end method

.method private setDescriptionText()V
    .locals 5

    .line 1007
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->sec_wifi_p2p_my_device_description_tablet:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1010
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->sec_wifi_p2p_my_device_description:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceDescriptionViewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceDescriptionView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 1013
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setDivider()V
    .locals 6

    const/4 v0, 0x0

    .line 1312
    invoke-super {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/preference/R$styleable;->PreferenceFragment:[I

    .line 1316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroidx/preference/R$attr;->preferenceFragmentStyle:I

    const v5, 0x1010506

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v3

    const/4 v4, 0x0

    .line 1314
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1321
    :try_start_0
    sget v2, Landroidx/preference/R$styleable;->PreferenceFragment_android_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1323
    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 1326
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mItemDecoration:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;

    if-nez v2, :cond_0

    .line 1327
    new-instance v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mItemDecoration:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;

    goto :goto_1

    .line 1329
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mItemDecoration:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1330
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mItemDecoration:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1332
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setScanTimerDoNotListen()V
    .locals 2

    const-string v0, "WifiP2pSettings"

    const-string/jumbo v1, "setScanTimer - scan : false, listen : false"

    .line 1139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showScanFinishedStatement()V

    .line 1142
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->cancelCountdownOfScanTimers()V

    return-void
.end method

.method private setScanTimerEnableScan()V
    .locals 3

    const-string v0, "WifiP2pSettings"

    const-string/jumbo v1, "setScanTimer - scan : true, listen : false"

    .line 1106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const/4 v0, 0x1

    .line 1109
    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    .line 1112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method private showProgressBar()V
    .locals 3

    .line 1262
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1264
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1265
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    sget v2, Lcom/android/settings/R$layout;->sec_wifi_p2p_progressbar:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 1266
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private showScanFinishedStatement()V
    .locals 3

    .line 1146
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    sget v1, Lcom/android/settings/R$string;->sec_wifi_scan_complete:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method private triggerFullScan()V
    .locals 3

    .line 1152
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1153
    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    .line 1154
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method private updateDivider()V
    .locals 6

    .line 1336
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mItemDecoration:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;

    if-nez v0, :cond_0

    return-void

    .line 1338
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1339
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1341
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mItemDecoration:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 1342
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$dimen;->sec_list_divider_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_wifi_p2p_list_divider_left_inset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-nez v1, :cond_2

    .line 1345
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mItemDecoration:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 1346
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->sec_list_divider_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->setDivider(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_1

    .line 1348
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mItemDecoration:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 1349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->sec_list_divider_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->setDivider(Landroid/graphics/drawable/Drawable;II)V

    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1351
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mItemDecoration:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDividerItemDecorator;->setDividerHeight(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1353
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6d

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .line 392
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 393
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x103012b

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    .line 395
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setDivider()V

    .line 396
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->updateDivider()V

    .line 398
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 400
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMyDeviceDescriptionView()V

    const-string v1, "AUTO_FINISH"

    const/4 v3, 0x0

    .line 402
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v3, :cond_0

    .line 404
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 406
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "action_bar"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 413
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 414
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 415
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 416
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 418
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1036
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1038
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceDescriptionView:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurFontScale:F

    sget v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxFontScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1039
    invoke-virtual {p1, v0, v0}, Landroid/widget/TextView;->scrollTo(II)V

    .line 1040
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1041
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceDescriptionView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 1043
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceDescriptionView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1046
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    .line 1047
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1048
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addNoDeviceLayout()V

    const-string p0, "WifiP2pSettings"

    const-string/jumbo p1, "onConfigurationChanged : nodevice found"

    .line 1049
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 450
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 451
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    .line 452
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHandler:Landroid/os/Handler;

    .line 454
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    const/4 v0, 0x0

    .line 456
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoAddFooterPreference(Z)V

    .line 458
    sget v1, Lcom/android/settings/R$xml;->sec_wifi_p2p_settings:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 460
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.action.WIFI_P2P_REQUEST_RESPONSE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v6, 0x1

    const-string v7, "WifiP2pSettings"

    if-eqz v1, :cond_0

    const-string v2, ":settings:fragment_args_key"

    .line 468
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wifi_p2p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "intent have a wifi_p2p"

    .line 470
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iput-boolean v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->needToEnableP2p:Z

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "EXTRA_TRIGGER_APP"

    .line 474
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 475
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bixby"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "intent have a bixby"

    .line 476
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iput-boolean v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->needToEnableP2p:Z

    :cond_1
    const-string/jumbo v1, "p2p_this_device"

    .line 480
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceDescription:Landroidx/preference/Preference;

    .line 481
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    const-string/jumbo v0, "p2p_peer_devices"

    .line 483
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    .line 484
    sget v1, Lcom/android/settings/R$layout;->sec_wifi_p2p_subheader_layout:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 485
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 487
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 489
    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    .line 509
    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;

    const-wide/16 v2, 0x3e8

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    .line 531
    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;

    const-wide/16 v2, 0x1388

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    const-string/jumbo v0, "wifip2p"

    .line 543
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    .line 545
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_3

    const-string v0, "Failed to set up connection with wifi p2p service"

    .line 548
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    goto :goto_0

    :cond_2
    const-string v0, "mWifiP2pManager is null !"

    .line 552
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const-string/jumbo v0, "power"

    .line 555
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 557
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->checkSemWifiP2pManager()Z

    .line 560
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mListenTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_4

    .line 561
    new-instance v7, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;

    const-wide/32 v2, 0x1f400

    const-wide/16 v4, 0x3e8

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mListenTimer:Landroid/os/CountDownTimer;

    .line 607
    :cond_4
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 787
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    const/4 v2, 0x2

    .line 788
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 789
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    sget v2, Lcom/android/settings/R$layout;->sec_wifi_p2p_progressbar:I

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 791
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsResume:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 795
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 796
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 797
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 799
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 800
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_1

    .line 792
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 793
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 440
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    .line 442
    sget p2, Lcom/android/settings/R$string;->wifi_menu_p2p:I

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    const/16 p2, 0xc

    .line 443
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 740
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    const-string v0, "WifiP2pSettings"

    const-string/jumbo v1, "onDestroy"

    .line 741
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->cancelCountdownOfScanTimers()V

    .line 744
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mListenTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 747
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->setListenOffloading(IIII)V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 752
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_1

    .line 753
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->close()V

    .line 755
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 812
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->selFinish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string v0, "WifiP2pSettings"

    const-string v1, "IllegalStateException: Can not perform this action after onSaveInstanceState"

    .line 818
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 4

    .line 766
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "WifiP2pSettings"

    const-string/jumbo v1, "onPause()"

    .line 768
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const-string v2, "SAMSUNG_P2P"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 773
    sget-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    const-string v3, "IS_INVITED"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 774
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 775
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->needToEnableP2p:Z

    .line 777
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendP2pSettingsStartedBroadcast(Z)V

    .line 779
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->refreshPreferenceSreen()V

    :cond_1
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 7

    const-string v0, "WifiP2pSettings"

    const-string/jumbo v1, "onPeersAvailable"

    .line 874
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 881
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 882
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 883
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->refreshPreferenceSreen()V

    .line 885
    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v1, "show connected devices"

    .line 908
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 911
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->hideProgressBar()V

    .line 913
    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v1, :cond_e

    .line 914
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "I am GO"

    .line 915
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 918
    iput v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 919
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getWifiP2pPeer(Landroid/net/wifi/p2p/WifiP2pDevice;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    move-result-object v1

    .line 920
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 923
    :cond_3
    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 926
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    if-nez v3, :cond_5

    const-string v3, ""

    .line 928
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_6

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I am GC, my GO addr : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", converted : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 929
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 933
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v4, :cond_8

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    iget-object v4, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 934
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 935
    :cond_9
    iput v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 936
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getWifiP2pPeer(Landroid/net/wifi/p2p/WifiP2pDevice;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    move-result-object v0

    .line 937
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 889
    :cond_a
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_b
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 890
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getWifiP2pPeer(Landroid/net/wifi/p2p/WifiP2pDevice;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    move-result-object v5

    .line 891
    iget-boolean v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    .line 892
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 893
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v3, v4, :cond_b

    move v1, v4

    goto :goto_2

    :cond_c
    if-eqz v1, :cond_d

    .line 901
    sput-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 902
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimerDoNotListen()V

    .line 903
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->hideProgressBar()V

    goto :goto_3

    .line 905
    :cond_d
    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 944
    :cond_e
    :goto_3
    sget-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 945
    sget-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_f
    :goto_4
    const-string p1, "Return, P2P is not enabled or peer list is empty"

    .line 876
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 827
    instance-of v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_2

    .line 828
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 829
    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v1, :cond_0

    .line 830
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->endConnection()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 832
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->cancelConnect()V

    goto :goto_0

    .line 841
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 842
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_2

    .line 843
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$11;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$11;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 855
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 807
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 631
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 635
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "power"

    .line 636
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 639
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 641
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v2, :cond_5

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume(), mAutoFinish : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", p2p connected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " LCD on : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiP2pSettings"

    .line 642
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wifi"

    .line 644
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    .line 647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEdmWifiDirectAllowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isEdmWifiDirectAllowed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " getWifiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " getWifiApState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mPassCreate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPassCreate:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " needToEnableP2p: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->needToEnableP2p:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPassCreate:Z

    .line 653
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isWifiOn()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-nez v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isEdmWifiDirectAllowed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 655
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->selFinish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "IllegalStateException: Recursive entry to executePendingTransactions during calling finish method to close the fragment."

    .line 658
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_6

    .line 664
    sget v2, Lcom/android/settings/R$string;->bluetooth_preference_found_devices:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 667
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getMyDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 668
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 669
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 670
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setDescriptionText()V

    :cond_7
    const/4 v0, 0x1

    .line 673
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendP2pSettingsStartedBroadcast(Z)V

    .line 674
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 676
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 677
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 678
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 680
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    :cond_8
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 864
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 865
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 612
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 614
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    :cond_0
    const-string/jumbo v0, "wifi"

    .line 617
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    .line 618
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string/jumbo v0, "sem_wifi"

    .line 619
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 621
    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    .line 624
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPassCreate:Z

    .line 625
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 626
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->needToEnableP2p:Z

    return-void
.end method

.method public onStop()V
    .locals 5

    .line 702
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 706
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "power"

    .line 707
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 710
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 712
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStop - LCD on? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiP2pSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 715
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 716
    invoke-virtual {v1, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    :cond_2
    if-eqz v0, :cond_3

    .line 720
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimerDoNotListen()V

    .line 722
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_4

    .line 723
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 724
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    goto :goto_1

    .line 726
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 727
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimerDoNotListen()V

    .line 729
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mListenTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_4

    const-string v0, "mListen Offloading or Default start"

    .line 730
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mListenTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 732
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mListenTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 735
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
