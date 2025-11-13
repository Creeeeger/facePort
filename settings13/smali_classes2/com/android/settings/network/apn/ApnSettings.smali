.class public Lcom/android/settings/network/apn/ApnSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final CARRIERS_PROJECTION:[Ljava/lang/String;

.field public static final DEBUG:Z

.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;


# instance fields
.field private isVzwB2bApnSupport:Z

.field private mAddApn:Landroid/widget/RadioButton;

.field mAddApnListener:Landroid/view/View$OnClickListener;

.field private mAddCpa:Landroid/widget/RadioButton;

.field mAddCpaListener:Landroid/view/View$OnClickListener;

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mAllowAddingApns:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mBluetoothPanLock:Ljava/lang/Object;

.field private mCPAApnKey:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCpaAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mCurrentSIMSlot:I

.field private mHidePresetApnDetails:Z

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsBtTetherOn:Z

.field private mIsEditableMode:Z

.field private mIsImsServiceConnected:Z

.field private mMccMnc:Ljava/lang/String;

.field private mMvnoCandidateMatchData:Ljava/lang/String;

.field private mMvnoCandidateType:Ljava/lang/String;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mPhoneId:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProxy:Landroid/bluetooth/BluetoothPan;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnMode:Z

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mRestoreDlg:Landroidx/appcompat/app/AlertDialog;

.field private mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubId:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mSupportLockAPNTethering:Z

.field private mTabToast:Landroid/widget/Toast;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherStateFilter:Landroid/content/IntentFilter;

.field private mUnavailable:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mVZWAPNs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothPanLock(Lcom/android/settings/network/apn/ApnSettings;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothPanLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCPAApnKey(Lcom/android/settings/network/apn/ApnSettings;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCPAApnKey:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCpaAlertDialog(Lcom/android/settings/network/apn/ApnSettings;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCpaAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSIMSlot(Lcom/android/settings/network/apn/ApnSettings;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsImsServiceConnected(Lcom/android/settings/network/apn/ApnSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsImsServiceConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMvnoMatchData(Lcom/android/settings/network/apn/ApnSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMvnoType(Lcom/android/settings/network/apn/ApnSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxy(Lcom/android/settings/network/apn/ApnSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mProxy:Landroid/bluetooth/BluetoothPan;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestoreApnUiHandler(Lcom/android/settings/network/apn/ApnSettings;)Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestoreDefaultApnMode(Lcom/android/settings/network/apn/ApnSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lcom/android/settings/network/apn/ApnSettings;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriptionInfo(Lcom/android/settings/network/apn/ApnSettings;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsBtTetherOn(Lcom/android/settings/network/apn/ApnSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsBtTetherOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsImsServiceConnected(Lcom/android/settings/network/apn/ApnSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsImsServiceConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProxy(Lcom/android/settings/network/apn/ApnSettings;Landroid/bluetooth/BluetoothPan;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mProxy:Landroid/bluetooth/BluetoothPan;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRestoreApnUiHandler(Lcom/android/settings/network/apn/ApnSettings;Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRestoreDefaultApnMode(Lcom/android/settings/network/apn/ApnSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubId(Lcom/android/settings/network/apn/ApnSettings;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubscriptionInfo(Lcom/android/settings/network/apn/ApnSettings;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mfillList(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->fillList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMccMnc(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->getMccMnc()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSimSlotNum(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->getSimSlotNum()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSubscriptionInfo(Lcom/android/settings/network/apn/ApnSettings;I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUriForCurrSubId(Lcom/android/settings/network/apn/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrestartPhoneStateListener(Lcom/android/settings/network/apn/ApnSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->restartPhoneStateListener(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestoreDefaultApn(Lcom/android/settings/network/apn/ApnSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->restoreDefaultApn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULTAPN_URI()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/network/apn/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 125
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/settings/network/apn/ApnSettings;->DEBUG:Z

    const-string v1, "_id"

    const-string/jumbo v2, "name"

    const-string v3, "apn"

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "mvno_type"

    const-string/jumbo v6, "mvno_match_data"

    const-string v7, "edited"

    const-string/jumbo v8, "user_visible"

    .line 139
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnSettings;->CARRIERS_PROJECTION:[Ljava/lang/String;

    const-string v0, "content://telephony/carriers/restore"

    .line 215
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn"

    .line 216
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const-string/jumbo v0, "no_config_mobile_networks"

    .line 242
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCpaAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 192
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsBtTetherOn:Z

    .line 195
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothPanLock:Ljava/lang/Object;

    .line 196
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSupportLockAPNTethering:Z

    .line 197
    iput v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCPAApnKey:I

    const-string v2, "Verizon Internet"

    const-string v3, "LTE - Verizon Internet"

    const-string v4, "VZW Roaming Internet"

    const-string v5, "Tracfone - Verizon"

    const-string v6, "Tracfone"

    const-string v7, "Xfinity Mobile"

    .line 200
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mVZWAPNs:Ljava/util/List;

    .line 245
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$1;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 267
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$2;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 330
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$3;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    .line 340
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$4;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/apn/ApnSettings$5;-><init>(Lcom/android/settings/network/apn/ApnSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    .line 361
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$6;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 1398
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$11;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mAddApnListener:Landroid/view/View$OnClickListener;

    .line 1415
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$12;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mAddCpaListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/apn/ApnSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/apn/ApnSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/network/apn/ApnSettings;I)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/network/apn/ApnSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private addCPAApn()V
    .locals 4

    .line 1380
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1381
    sget v1, Lcom/android/settings/R$layout;->sec_cpa_add_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1382
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1383
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1384
    sget v2, Lcom/android/settings/R$string;->common_add:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1385
    sget v2, Lcom/android/settings/R$id;->add_apn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mAddApn:Landroid/widget/RadioButton;

    .line 1386
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mAddApnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1387
    sget v2, Lcom/android/settings/R$id;->add_cpa:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mAddCpa:Landroid/widget/RadioButton;

    .line 1388
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mAddCpaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1389
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$10;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1394
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCpaAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1395
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private addNewApn()V
    .locals 4

    .line 1430
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1431
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const-string/jumbo v2, "sub_id"

    .line 1433
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 1434
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1435
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1436
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    const-string/jumbo v2, "mvno_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1437
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    const-string/jumbo v2, "mvno_match_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 v1, 0x0

    .line 1441
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1442
    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    goto :goto_1

    .line 1443
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1444
    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    goto :goto_1

    .line 1445
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1446
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {v2, v3}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1447
    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    goto :goto_1

    .line 1448
    :cond_4
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {v2, v3}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isSPRSimInserted(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1449
    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    :cond_5
    :goto_1
    const-string v2, "editable_mode"

    .line 1452
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " addNewApn start() ; Details "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApnSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private checkApnType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1099
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1102
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mMccMnc:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getMvnoTypeIntFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/telephony/TelephonyManager;->matchesCurrentSimOperator(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1104
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 1105
    iput-object p2, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1108
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoCandidateType:Ljava/lang/String;

    .line 1109
    iput-object p2, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoCandidateMatchData:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1112
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkApnType : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApnSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private connectImsManager()V
    .locals 4

    .line 626
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->disconnectService()V

    const/4 v0, 0x0

    .line 628
    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 631
    :cond_0
    new-instance v0, Lcom/sec/ims/ImsManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/apn/ApnSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/network/apn/ApnSettings$7;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iget v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 644
    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectImsManager() : slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApnSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private disconnectImsManager()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->disconnectService()V

    const/4 v0, 0x0

    .line 652
    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    const/4 v0, 0x0

    .line 653
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsImsServiceConnected:Z

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectImsManager() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsImsServiceConnected:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApnSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dualSimMPSDataLock(I)Z
    .locals 7

    .line 711
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigSimLock"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "DataLockFeature is disable"

    const-string v3, "ApnSettings"

    const/4 v4, 0x0

    if-nez v1, :cond_3

    const-string v1, ";"

    .line 714
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v1, v4

    .line 715
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_3

    .line 716
    aget-object v5, v0, v1

    const-string v6, "datalock_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 718
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    .line 719
    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 720
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v1, v4

    .line 721
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 722
    aget-object v5, v0, v1

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 723
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 727
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataLockFeature] Enable for operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", simSlot = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    :cond_3
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private fillList()V
    .locals 24

    move-object/from16 v6, p0

    .line 855
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v7, v0

    .line 857
    sget-object v0, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    .line 858
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 857
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 861
    iget-object v1, v6, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    invoke-interface {v1}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getDeviceSimSlotCnt()I

    move-result v1

    const/4 v14, 0x1

    if-le v1, v14, :cond_2

    .line 862
    iget v1, v6, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    if-ne v1, v14, :cond_1

    const-string v1, " AND current1 = 1"

    .line 863
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, " AND current = 1"

    .line 865
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/settings/network/apn/ApnSettings;->DEBUG:Z

    const/4 v15, 0x0

    if-nez v1, :cond_4

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v15

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v14

    .line 870
    :goto_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, v6, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    const-string v1, " AND type like \'%default%\' and name NOT LIKE \'%GLOBAL%\'"

    .line 871
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 872
    :cond_5
    iget-object v1, v6, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, v6, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isLraImsi(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " AND type like \'%default%\'"

    .line 873
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 874
    :cond_6
    iget-boolean v1, v6, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    if-nez v1, :cond_7

    iget-object v1, v6, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, v6, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " AND (type=\"default,dun\" or type=\"default,dun,supl\" or type=\"default,dun,supl,ia\")"

    .line 875
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_7
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ApnSettings"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "where = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnSettings;->isCallingState()Z

    move-result v1

    const-string v2, ""

    .line 882
    iput-object v2, v6, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 883
    iput-object v2, v6, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    .line 884
    iget-boolean v2, v6, Lcom/android/settings/network/apn/ApnSettings;->mSupportLockAPNTethering:Z

    if-eqz v2, :cond_a

    .line 885
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, v6, Lcom/android/settings/network/apn/ApnSettings;->mIsBtTetherOn:Z

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    move v2, v15

    goto :goto_6

    :cond_9
    :goto_5
    move v2, v14

    .line 886
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTethringOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsBtTetherOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v6, Lcom/android/settings/network/apn/ApnSettings;->mIsBtTetherOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    move v2, v15

    :goto_7
    if-nez v1, :cond_c

    if-eqz v2, :cond_b

    goto :goto_8

    :cond_b
    move/from16 v16, v15

    goto :goto_9

    :cond_c
    :goto_8
    move/from16 v16, v14

    .line 892
    :goto_9
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ConfigApnSortType"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 893
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscOrder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_d
    const-string/jumbo v1, "name ASC"

    :goto_a
    move-object v13, v1

    .line 898
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v10, Lcom/android/settings/network/apn/ApnSettings;->CARRIERS_PROJECTION:[Ljava/lang/String;

    .line 899
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 898
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 901
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnSettings;->connectImsManager()V

    if-eqz v8, :cond_20

    const-string v0, "apn_list"

    .line 903
    invoke-virtual {v6, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/preference/PreferenceGroup;

    .line 904
    invoke-virtual {v9}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 905
    invoke-static {}, Lcom/android/settings/network/apn/ApnPreference;->initPreferedAPN()V

    .line 907
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 908
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 909
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 910
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 911
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 913
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 914
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APN Count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :goto_b
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 917
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    .line 918
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 919
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    .line 920
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x6

    .line 921
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x4

    .line 922
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v4

    const/4 v4, 0x5

    .line 923
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v9

    const/4 v9, 0x7

    .line 924
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move-object/from16 v20, v12

    .line 926
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v13

    const-string/jumbo v13, "name : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", apn : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", key : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", type : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", edited : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", mvnoType : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", mvnoMatchData : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", userVisible : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-direct {v6, v15, v4}, Lcom/android/settings/network/apn/ApnSettings;->checkApnType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v15, v1

    move-object v1, v13

    move-object/from16 v22, v2

    const/4 v4, 0x2

    move-object v2, v3

    move-object/from16 v17, v10

    move-object v10, v3

    move-object v3, v15

    move-object/from16 v23, v11

    move v11, v4

    move-object/from16 v4, v22

    move-object v11, v5

    move v5, v9

    .line 931
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnSettings;->hideApnOnList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not add the list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-object v5, v11

    move-object/from16 v10, v17

    move-object/from16 v4, v18

    move-object/from16 v9, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v11, v23

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto/16 :goto_b

    .line 937
    :cond_e
    new-instance v0, Lcom/android/settings/network/apn/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/apn/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 939
    invoke-virtual {v0, v13}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v0, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 941
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 942
    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 943
    invoke-virtual {v0, v7}, Lcom/android/settings/network/apn/ApnPreference;->setSubId(I)V

    .line 944
    iget-boolean v2, v6, Lcom/android/settings/network/apn/ApnSettings;->mHidePresetApnDetails:Z

    if-eqz v2, :cond_f

    if-nez v14, :cond_f

    .line 945
    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnPreference;->setHideDetails()V

    goto :goto_c

    .line 947
    :cond_f
    invoke-virtual {v0, v15}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 949
    :goto_c
    iget-boolean v2, v6, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    invoke-virtual {v0, v2}, Lcom/android/settings/network/apn/ApnPreference;->setEditableMode(Z)V

    .line 953
    iget-boolean v2, v6, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    if-nez v2, :cond_12

    .line 954
    invoke-direct {v6, v13, v10}, Lcom/android/settings/network/apn/ApnSettings;->isApnEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v3, v22

    if-eqz v3, :cond_11

    const-string v4, "default"

    .line 955
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_d

    :cond_10
    move v4, v1

    goto :goto_e

    :cond_11
    :goto_d
    const/4 v4, 0x1

    .line 956
    :goto_e
    invoke-direct {v6, v13, v10, v15, v3}, Lcom/android/settings/network/apn/ApnSettings;->getApnSelectable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v3, v4

    goto :goto_f

    :cond_12
    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_f
    if-eqz v2, :cond_13

    if-nez v16, :cond_13

    const/4 v2, 0x1

    goto :goto_10

    :cond_13
    move v2, v1

    .line 958
    :goto_10
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 959
    invoke-virtual {v0, v3}, Lcom/android/settings/network/apn/ApnPreference;->setSelectable(Z)V

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectable : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnPreference;->getSelectable()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", enabled : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget v2, v6, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-direct {v6, v2}, Lcom/android/settings/network/apn/ApnSettings;->dualSimMPSDataLock(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 963
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move v15, v1

    move-object v5, v11

    move-object/from16 v10, v17

    move-object/from16 v4, v18

    move-object/from16 v9, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v11, v23

    const/4 v14, 0x1

    goto/16 :goto_b

    :cond_14
    const/4 v2, 0x2

    if-ne v12, v2, :cond_16

    if-eqz v3, :cond_15

    .line 969
    iget-object v2, v6, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 970
    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnPreference;->setChecked()V

    :cond_15
    move-object/from16 v2, v18

    .line 973
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v17

    move-object/from16 v10, v20

    move-object/from16 v9, v21

    move-object/from16 v4, v23

    const/4 v3, 0x1

    goto :goto_12

    :cond_16
    move-object/from16 v2, v18

    if-eqz v3, :cond_19

    .line 976
    iget-object v3, v6, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v3, :cond_17

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 977
    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnPreference;->setChecked()V

    :cond_17
    const/4 v3, 0x1

    if-ne v12, v3, :cond_18

    move-object/from16 v4, v23

    .line 980
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v17

    goto :goto_11

    :cond_18
    move-object/from16 v5, v17

    move-object/from16 v4, v23

    .line 982
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11
    move-object/from16 v10, v20

    move-object/from16 v9, v21

    goto :goto_12

    :cond_19
    move-object/from16 v5, v17

    move-object/from16 v4, v23

    const/4 v3, 0x1

    if-ne v12, v3, :cond_1a

    move-object/from16 v9, v21

    .line 986
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v20

    goto :goto_12

    :cond_1a
    move-object/from16 v10, v20

    move-object/from16 v9, v21

    .line 988
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    :goto_12
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move v15, v1

    move v14, v3

    move-object v13, v9

    move-object v12, v10

    move-object/from16 v9, v19

    move-object v10, v5

    move-object v5, v11

    move-object v11, v4

    move-object v4, v2

    goto/16 :goto_b

    :cond_1b
    move-object v2, v4

    move-object/from16 v19, v9

    move-object v4, v11

    move-object v9, v13

    move-object v11, v5

    move-object v5, v10

    move-object v10, v12

    .line 994
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 996
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_13

    :cond_1c
    move-object v12, v10

    move-object v10, v5

    goto :goto_14

    :cond_1d
    :goto_13
    const-string v0, "change mvno"

    .line 997
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v4

    move-object v12, v9

    .line 1002
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apnList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mmsApnList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    move-object/from16 v3, v19

    .line 1004
    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_15

    :cond_1e
    move-object/from16 v3, v19

    .line 1006
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 1007
    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_16

    .line 1010
    :cond_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1011
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "add candidate"

    .line 1012
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnSettings;->mMvnoCandidateType:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 1014
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnSettings;->mMvnoCandidateMatchData:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    .line 1015
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 1016
    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_17

    .line 1020
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnSettings;->disconnectImsManager()V

    return-void
.end method

.method private getApnSelectable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p3, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-static {p1, p3}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(Landroid/content/Context;I)Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1245
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget p4, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {p1, p4}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1246
    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnSettings;->isVZWApnList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move p3, v0

    goto :goto_1

    .line 1252
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1253
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget p4, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {p1, p4}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1254
    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnSettings;->isVZWApnList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_2
    const-string p1, "dun"

    .line 1260
    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1261
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "multi_sim_data_call_slot"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 1264
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p1

    const-string p2, "CarrierFeature_Setting_BlockToSelectDUNApnType"

    .line 1265
    invoke-virtual {p1, p0, p2, v0, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p0

    xor-int/2addr p3, p0

    goto :goto_1

    :cond_3
    const-string p0, "ims"

    .line 1268
    invoke-virtual {p0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "xcap"

    .line 1270
    invoke-virtual {p0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const-string/jumbo p0, "mms,xcap"

    .line 1272
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ims,xcap"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    .line 1276
    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getApnSelectable : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApnSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p3
.end method

.method private getMccMnc()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 764
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mMccMnc:Ljava/lang/String;

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MccMnc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApnSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 6

    .line 1488
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/apn/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1490
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1491
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 1492
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1494
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1495
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSelectedApnKey : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ApnSettings"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getSimSlotNum()V
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApnSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 751
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 1566
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 1568
    :goto_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private hideApnOnList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .line 775
    invoke-static {}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isSupportATTEditAPN()Z

    move-result v0

    const-string v1, "ApnSettings"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    if-eqz v0, :cond_0

    .line 776
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "hideApnOnList : isSupportATTEditAPN "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v0, "ent1"

    .line 781
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    const-string v0, "ent2"

    .line 782
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "emergency"

    .line 784
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "ims"

    .line 786
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 787
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->supportVoLTECallService()Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_0

    :cond_3
    move p4, v2

    goto :goto_1

    :cond_4
    :goto_0
    move p4, v3

    .line 793
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isAllNAVendor()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "cdma"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    move p4, v3

    .line 798
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isSupportCpa()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 799
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "kddi_cpa_added"

    invoke-static {p3, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v3, :cond_6

    move v2, v3

    :cond_6
    if-nez v2, :cond_8

    const-string p3, "Manual"

    .line 801
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 803
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCPAApnKey:I

    .line 804
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CPA KEY : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move p4, v3

    goto :goto_3

    :cond_7
    const-string p0, "Manual_for_Navi"

    .line 805
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    if-nez p5, :cond_9

    goto :goto_4

    :cond_9
    move v3, p4

    .line 816
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "hideApnOnList : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private isApnEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(Landroid/content/Context;I)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1284
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {p1, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1285
    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnSettings;->isVZWApnList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v1

    goto :goto_1

    .line 1291
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1292
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget p2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {p1, p2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isSPRSimInserted(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->isSPRNetworkUnLocked(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 1295
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1296
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {p1, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1297
    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnSettings;->isVZWApnList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 1302
    :cond_3
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isSPRSimInserted(I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    .line 1307
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isApnEnabled : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApnSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isCallingState()Z
    .locals 4

    const-string v0, "ApnSettings"

    .line 839
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 840
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCallingState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "Call Settings fail"

    .line 846
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isEditableMode(Landroid/content/Intent;)Z
    .locals 4

    const-string/jumbo v0, "vzw"

    .line 1674
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyString"

    .line 1675
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LTE_TEST"

    .line 1676
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1677
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_DisableB2BMenuItem"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/network/apn/ApnSettings;->isVzwB2bApnSupport:Z

    .line 1680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vzwExtra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sprExtra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lteTestExtra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isVzwB2bApnSupport : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/network/apn/ApnSettings;->isVzwB2bApnSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApnSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string v0, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "editable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->isVzwB2bApnSupport:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1683
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {p1, v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1685
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isSPRSimInserted(I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1688
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "editableMode : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isVZWApnList(Ljava/lang/String;)Z
    .locals 2

    .line 1226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1229
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mVZWAPNs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1230
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1238
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isVZWApnList : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", name : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApnSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private requestEnableCPAForKDI(Ljava/lang/String;)V
    .locals 5

    .line 1502
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kddi_cpa_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "Manual"

    .line 1503
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Manual_for_Navi"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_1
    move v2, v3

    .line 1511
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestEnableCPAForKDI : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApnSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/high16 p1, 0x1000000

    if-eqz v2, :cond_4

    .line 1516
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kddi.android.cpa.CPA_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1518
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 1520
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kddi.android.cpa.CPA_DISABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1522
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1525
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kddi.android.cpa.CHANGE_MODE_CPA_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v2, :cond_5

    const-string/jumbo p1, "on"

    goto :goto_4

    :cond_5
    const-string/jumbo p1, "off"

    :goto_4
    const-string/jumbo v1, "state"

    .line 1527
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1528
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private restartPhoneStateListener(I)V
    .locals 3

    .line 381
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 386
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 389
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 392
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v0, 0x1020

    .line 396
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private restoreDefaultApn()Z
    .locals 4

    const-string v0, "ApnSettings"

    const-string/jumbo v1, "restoreDefaultApn"

    .line 1533
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/16 v0, 0x3e9

    .line 1538
    invoke-virtual {p0, v0}, Lcom/android/settings/network/apn/ApnSettings;->showDialog(I)V

    const/4 v0, 0x1

    .line 1539
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 1541
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 1542
    new-instance v1, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/apn/ApnSettings;Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler-IA;)V

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    .line 1545
    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 1546
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Restore default APN Handler: Process Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 1548
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1549
    new-instance v1, Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 1550
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/network/apn/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

    .line 1553
    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

    .line 1554
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1557
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    .line 1558
    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnSettings;->requestEnableCPAForKDI(Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 3

    .line 1477
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 1478
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1480
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1481
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    const-string v2, "apn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    sget-object v1, Lcom/android/settings/network/apn/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private showWarning()V
    .locals 3

    .line 1358
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1359
    sget v1, Lcom/android/settings/R$string;->apn_restore_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1360
    sget v1, Lcom/android/settings/R$string;->apn_restore_warning:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1361
    sget v1, Lcom/android/settings/R$string;->common_reset:I

    new-instance v2, Lcom/android/settings/network/apn/ApnSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/network/apn/ApnSettings$8;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1368
    new-instance v1, Lcom/android/settings/network/apn/ApnSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/network/apn/ApnSettings$9;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1374
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDlg:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private simTabAvailable()Z
    .locals 6

    .line 536
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x1

    const-string v2, "ApnSettings"

    if-eqz v0, :cond_1

    .line 537
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 539
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v3, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->TAB_LAYOUT_ID:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v3

    .line 542
    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    .line 544
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->sim_not_available:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v1, v5

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 545
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mTabToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 546
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTabToast:Landroid/widget/Toast;

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 550
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTabToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string/jumbo p0, "simTabAvailable : false"

    .line 551
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    const-string/jumbo p0, "simTabAvailable : true"

    .line 556
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private supportVoLTECallService()Z
    .locals 5

    .line 824
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsImsServiceConnected:Z

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    const-string/jumbo v3, "mmtel"

    .line 825
    invoke-virtual {v0, v3, v2}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v0

    .line 826
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v4}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v2

    .line 827
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {p0}, Lcom/sec/ims/ImsManager;->hasVoLteSim()Z

    move-result p0

    .line 828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoLTEVideoCallSupportedSIM hasVoLteSim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", supportVolte = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", supportVowifi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ApnSettings"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    move v1, p0

    :cond_1
    return v1
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    const/16 p0, 0x3e9

    if-ne p1, p0, :cond_0

    const/16 p0, 0x243

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .line 741
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getProcessUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    .line 743
    invoke-virtual {p0, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 745
    sget-object p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 563
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->apn_settings_not_available:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    xor-int/lit8 p1, p1, 0x1

    .line 567
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 569
    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-eqz p1, :cond_0

    const-string p1, "ApnSettings"

    const-string v0, "isUiRestricted removeAll!!!"

    .line 570
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 572
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 406
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 408
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "sub_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    .line 412
    sget p1, Lcom/android/settings/R$xml;->apn_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 413
    iget p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 414
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    .line 415
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->getSimSlotNum()V

    .line 416
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->getMccMnc()V

    .line 418
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "need_search_icon_in_action_bar"

    const/4 v1, 0x0

    .line 419
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 420
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SUB ID : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApnSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v2, "CscFeature_Setting_LockApnDuringTethering"

    invoke-virtual {p1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSupportLockAPNTethering:Z

    .line 425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLockAPNTethering : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mSupportLockAPNTethering:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->isEditableMode(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    .line 430
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-static {p1, v0}, Lcom/android/settings/network/SubscriptionUtil;->getPhoneId(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneId:I

    .line 431
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    .line 432
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.samsung.intent.action.SET_PREFERREDAPN_UPDATED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.samsung.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    .line 444
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x1

    .line 449
    invoke-virtual {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 455
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->getSimSlotNum()V

    .line 456
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->getMccMnc()V

    .line 459
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "carrier_config"

    .line 462
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 463
    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 466
    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    .line 467
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 468
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isLgSimInsert(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 469
    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    :cond_0
    const-string p1, "hide_preset_apn_details_bool"

    .line 485
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mHidePresetApnDetails:Z

    .line 486
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 1639
    new-instance p1, Lcom/android/settings/network/apn/ApnSettings$13;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/apn/ApnSettings$13;-><init>(Lcom/android/settings/network/apn/ApnSettings;Landroid/content/Context;)V

    .line 1644
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->restore_default_apn:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 1645
    invoke-virtual {p1, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 1119
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_1

    .line 1120
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->common_add:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 1121
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1126
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    const/4 v0, 0x2

    .line 1129
    sget v2, Lcom/android/settings/R$string;->configuration_messages:I

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x3

    .line 1132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->menu_restore:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1131
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    .line 1133
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1136
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 493
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 494
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->applyTabViewIfNeeded(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 693
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 696
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDlg:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDlg:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 701
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 704
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_1

    .line 705
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item select id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const v2, 0x102002c

    if-eq v0, v2, :cond_0

    .line 1342
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 1334
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v1

    .line 1328
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0xe27

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 1329
    iget p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->dualSimMPSDataLock(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1330
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->showWarning()V

    :cond_2
    return v1

    .line 1338
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->broadcastSetCp(Landroid/content/Context;)V

    return v1

    .line 1319
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "kddi_cpa_added"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_5

    move v2, v1

    .line 1320
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isSupportCpa()Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez v2, :cond_6

    iget p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mCPAApnKey:I

    if-eqz p1, :cond_6

    .line 1321
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->addCPAApn()V

    goto :goto_0

    .line 1322
    :cond_6
    iget p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->dualSimMPSDataLock(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1323
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->addNewApn()V

    :cond_7
    :goto_0
    return v1
.end method

.method public onPause()V
    .locals 3

    .line 662
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 664
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    const-string p0, "ApnSettings"

    const-string v0, "isUiRestricted return onPause"

    .line 665
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 670
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 671
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 673
    invoke-static {}, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->unregisterObserver()V

    .line 675
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 676
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/16 v0, 0x3e9

    .line 677
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 678
    iput-boolean v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 679
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSupportLockAPNTethering:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    .line 680
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mProxy:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 681
    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mProxy:Landroid/bluetooth/BluetoothPan;

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceChange(): Preference - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newValue - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newValue type - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnSettings"

    .line 1460
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1465
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1467
    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->requestEnableCPAForKDI(Ljava/lang/String;)V

    .line 1470
    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    .line 1143
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    invoke-interface {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getEnabledSimCnt()I

    move-result v0

    const/4 v1, 0x1

    .line 1145
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x3

    .line 1146
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x2

    .line 1148
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const-string v5, "ApnSettings"

    const/4 v6, 0x0

    if-eqz v2, :cond_a

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    move v3, v6

    goto/16 :goto_4

    .line 1155
    :cond_1
    iget-boolean v7, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    if-eqz v7, :cond_3

    :cond_2
    :goto_1
    move v3, v1

    goto/16 :goto_4

    .line 1157
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-static {v7, v8}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1158
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v7, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {v3, v7}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1161
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->isSPRNetworkUnLocked(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1163
    iget-object v7, p0, Lcom/android/settings/network/apn/ApnSettings;->mMccMnc:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/network/apn/ApnSettings;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v7, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {v3, v7}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isSPRSimInserted(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1169
    :cond_5
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v7, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {v3, v7}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isLraImsi(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 1171
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1172
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v7, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {v3, v7}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1175
    :cond_7
    iget-boolean v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mSupportLockAPNTethering:Z

    if-eqz v3, :cond_2

    .line 1176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsBtTetherOn:Z

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    move v3, v6

    goto :goto_3

    :cond_9
    :goto_2
    move v3, v1

    :goto_3
    if-eqz v3, :cond_2

    goto/16 :goto_0

    .line 1181
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add Option State : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_a
    if-eqz v4, :cond_15

    if-ge v0, v1, :cond_c

    :cond_b
    :goto_5
    move v1, v6

    goto/16 :goto_8

    .line 1191
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1192
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {v0, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_5

    .line 1195
    :cond_d
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {v0, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isSPRSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/android/settings/network/apn/ApnSettings;->DEBUG:Z

    if-nez v0, :cond_e

    goto :goto_5

    .line 1197
    :cond_e
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {v0, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isLraImsi(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5

    .line 1199
    :cond_f
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1200
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {v0, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-interface {v0, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isSPRSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_5

    .line 1203
    :cond_10
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->isCallingState()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5

    .line 1205
    :cond_11
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSupportLockAPNTethering:Z

    if-eqz v0, :cond_14

    .line 1206
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsBtTetherOn:Z

    if-eqz v0, :cond_12

    goto :goto_6

    :cond_12
    move v0, v6

    goto :goto_7

    :cond_13
    :goto_6
    move v0, v1

    :goto_7
    if-eqz v0, :cond_14

    goto :goto_5

    .line 1211
    :cond_14
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore Option State : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_15
    if-eqz p1, :cond_16

    .line 1217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->isAvailable(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_16
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 587
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "ApnSettings"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "onResume : Airplane mode ON"

    .line 591
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 596
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    const-string p0, "isUiRestricted return onResume"

    .line 597
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 600
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 603
    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnSettings;->restartPhoneStateListener(I)V

    .line 605
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 606
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 607
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    .line 606
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 608
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSupportLockAPNTethering:Z

    if-eqz v1, :cond_2

    .line 609
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 613
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->registerObserver(Landroidx/fragment/app/FragmentActivity;)V

    .line 616
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_3

    .line 617
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->fillList()V

    .line 620
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onTabChanged(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 513
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 514
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const-string v1, "ApnSettings"

    if-eqz v0, :cond_0

    .line 515
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    goto :goto_0

    :cond_0
    const-string v0, "SubscriptionManager.getSubId(slotId) is NULL"

    .line 517
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_0
    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnSettings;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 520
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->getSimSlotNum()V

    .line 521
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->getMccMnc()V

    .line 522
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->simTabAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 525
    :cond_1
    iput p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    .line 526
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->fillList()V

    .line 528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTabListener mCurrentSIMSlot = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mSubId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in TabListener"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0xe28

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 531
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 499
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 500
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->simTabAvailable()Z

    const/4 p1, 0x0

    .line 502
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 503
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 504
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    .line 505
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_end:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 506
    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 507
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    .line 508
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method protected showDialog(I)V
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 1655
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    if-eqz v0, :cond_0

    const-string p0, "ApnSettings"

    const-string p1, "ShowDialog : mRestoreDefaultApnMode"

    .line 1656
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1660
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method
