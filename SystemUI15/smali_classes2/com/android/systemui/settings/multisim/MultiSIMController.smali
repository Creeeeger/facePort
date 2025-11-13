.class public final Lcom/android/systemui/settings/multisim/MultiSIMController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INTERNAL_URI:Landroid/net/Uri;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAirplaneModeObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$6;

.field public final mChangNetModeObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$3;

.field public final mContext:Landroid/content/Context;

.field public mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

.field public final mDataCallbacks:Ljava/util/ArrayList;

.field public final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field public final mDataNotified:Lcom/android/systemui/settings/multisim/MultiSIMData;

.field public final mDefaultIdUpdateList:Ljava/util/ArrayList;

.field public mHasOpportunisticESim:Z

.field public final mInitDone:Z

.field public final mIntentReceiver:Lcom/android/systemui/settings/multisim/MultiSIMController$10;

.field public mInvalidSimInfo:Ljava/lang/String;

.field public mIsLoadedMultiSim:Z

.field public mIsSlotReversed:Z

.field public final mMaxSimIconNumber:I

.field public final mMobileDataObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$7;

.field public final mMultiSimDataCrossSlotObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$5;

.field public mNeedCheckOpportunisticESim:Z

.field public mNetworkNameDefault:Ljava/lang/String;

.field public final mNotifyDataToCallbackRunnable:Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;

.field public final mNotifyVisToCallbackRunnable:Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;

.field public final mOnSubscriptionsChangeListener:Lcom/android/systemui/settings/multisim/MultiSIMController$2;

.field public final mPreferedVoiceObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$4;

.field public final mSIMInfoIconManagerFactory:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;

.field public final mSatelliteModeObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$9;

.field public mSimCardCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$14;

.field public mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

.field public final mSimIconAndNameObserver:Lcom/android/systemui/settings/multisim/MultiSIMController$8;

.field public final mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

.field public mUIVisible:Z

.field public mUnknownPhoneNumber:Ljava/lang/String;

.field public final mUpdateDataHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVisCallbacks:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.app.telephonyui.internal"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/samsung/android/ims/SemImsRegistrationListener;

    new-array v3, v2, [Lcom/samsung/android/ims/SemImsManager;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$14;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDefaultIdUpdateList:Ljava/util/ArrayList;

    iput-boolean v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsLoadedMultiSim:Z

    iput-boolean v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNeedCheckOpportunisticESim:Z

    iput-boolean v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    iput-boolean v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInitDone:Z

    new-instance v5, Lcom/android/systemui/settings/multisim/MultiSIMController$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController$1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v6, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;I)V

    iput-object v6, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyDataToCallbackRunnable:Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;

    new-instance v6, Lcom/android/systemui/settings/multisim/MultiSIMController$2;

    invoke-direct {v6, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController$2;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    new-instance v7, Lcom/android/systemui/settings/multisim/MultiSIMController$3;

    sget-object v8, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v9, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v9, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Handler;

    invoke-direct {v7, v0, v9}, Lcom/android/systemui/settings/multisim/MultiSIMController$3;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    new-instance v9, Lcom/android/systemui/settings/multisim/MultiSIMController$4;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v9, v0, v10}, Lcom/android/systemui/settings/multisim/MultiSIMController$4;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    new-instance v10, Lcom/android/systemui/settings/multisim/MultiSIMController$5;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-direct {v10, v0, v11}, Lcom/android/systemui/settings/multisim/MultiSIMController$5;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    new-instance v11, Lcom/android/systemui/settings/multisim/MultiSIMController$6;

    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    invoke-direct {v11, v0, v12}, Lcom/android/systemui/settings/multisim/MultiSIMController$6;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    new-instance v12, Lcom/android/systemui/settings/multisim/MultiSIMController$7;

    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/settings/multisim/MultiSIMController$7;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    new-instance v13, Lcom/android/systemui/settings/multisim/MultiSIMController$8;

    sget-object v14, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v14, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Handler;

    invoke-direct {v13, v0, v8}, Lcom/android/systemui/settings/multisim/MultiSIMController$8;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    new-instance v8, Lcom/android/systemui/settings/multisim/MultiSIMController$9;

    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, v0, v14}, Lcom/android/systemui/settings/multisim/MultiSIMController$9;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V

    new-instance v14, Lcom/android/systemui/settings/multisim/MultiSIMController$10;

    invoke-direct {v14, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController$10;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    new-instance v15, Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    invoke-direct {v15, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController$12;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    iput-object v15, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUpdateDataHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    new-instance v15, Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    invoke-direct {v15, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController$13;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    iput-object v15, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;

    const/4 v4, 0x2

    invoke-direct {v2, v0, v4}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;I)V

    iput-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyVisToCallbackRunnable:Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;

    iput-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSIMInfoIconManagerFactory:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.telecom.action.DEFAULT_OUTGOING_PHONE_ACCOUNT_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.samsung.action.ACTION_NETWORK_SLOT_CHANGING_FINISH"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.softsim.ServiceStatus"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.knox.intent.action.KNOX_RESTRICTIONS_CHANGED_INTERNAL"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v4, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v3, v2, v14}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    if-eqz p2, :cond_0

    move-object/from16 v2, p2

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iput-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    :cond_0
    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {v2}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataNotified:Lcom/android/systemui/settings/multisim/MultiSIMData;

    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {v2}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInitDone:Z

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    iput v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_icon_1"

    const/4 v14, 0x0

    invoke-static {v3, v4, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v14

    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget v2, v2, v14

    const-string v3, "MultiSIMController"

    if-ltz v2, :cond_2

    iget v14, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    if-lt v2, v14, :cond_1

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "MultiSIMPreferredSlotBar SimImageIdx[0] = "

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v14, v14, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    const/16 v16, 0x0

    aget v14, v14, v16

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aput v16, v2, v16

    :goto_1
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v1, "select_name_1"

    invoke-static {v14, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v16

    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v17, v5

    const-string/jumbo v5, "select_icon_2"

    move-object/from16 v18, v15

    const/4 v15, 0x1

    invoke-static {v14, v5, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    aput v14, v2, v15

    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget v2, v2, v15

    if-ltz v2, :cond_4

    iget v14, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mMaxSimIconNumber:I

    if-lt v2, v14, :cond_3

    goto :goto_2

    :cond_3
    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "MultiSIMPreferredSlotBar SimImageIdx[1] = "

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v14, v14, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aput v15, v2, v15

    :goto_3
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 p2, v3

    const-string/jumbo v3, "select_name_2"

    invoke-static {v14, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v14, 0x0

    invoke-virtual {v2, v4, v14, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v14, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v14, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v14, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prefered_voice_call"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v14, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v14, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v14, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_datacross_slot"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v14, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "set_network_mode_by_quick_panel"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v14, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v14, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    move v2, v14

    :goto_4
    iput-boolean v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "satellite_mode_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v14, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSatelliteMode:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSRoamingVirtualSlot()I

    move-result v1

    if-ne v1, v3, :cond_7

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iput-boolean v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    :cond_7
    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateSimSlotType()V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isRestrictionsForMmsUse()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateMultiSimReadyState(Z)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/DeviceState;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_7

    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSubId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSubId(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Check Call SIM1 : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", SIM2 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v5, :cond_a

    const/4 v6, 0x2

    if-eq v2, v6, :cond_a

    if-eq v4, v5, :cond_a

    if-ne v4, v6, :cond_9

    goto :goto_6

    :cond_9
    move v2, v3

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v2, 0x1

    :goto_7
    iput-boolean v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCarrierNameAndPhoneNumber(Z)V

    new-instance v1, Landroid/os/HandlerExecutor;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object/from16 v2, p3

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    move-object/from16 v4, v17

    invoke-virtual {v2, v4, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v3, 0x1

    :cond_b
    iput-boolean v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/util/DeviceState;->isSubInfoReversed(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInitDone:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    return-void
.end method

.method public static getSRoamingStatus(Ljava/lang/String;)I
    .locals 1

    const-string v0, "activating"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "activated"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "deactivating"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "deactivated"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x9

    goto :goto_2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public static getSubId(I)I
    .locals 1

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0

    :cond_0
    const-string p0, "MultiSIMController"

    const-string v0, "getSubId: no valid subs"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static isBlockedAllMultiSimBar()Z
    .locals 3

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_XNX_BRANDING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ril.lockpolicy"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isUserMobileDataRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public final getCurrentVoiceSlotByMethodCall()I
    .locals 7

    const-string v0, "MultiSIMController"

    const-string v1, "getCurrentVoiceCall, "

    const-string v2, "getCurrentVoiceCall"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v5, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v2, v6, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "bundle is null : getCurrentVoiceCall"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "success"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v4, "result"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final getSRoamingVirtualSlot()I
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.globalroaming"

    const-string v1, "MultiSIMController"

    const/16 v2, 0x9

    if-nez p0, :cond_0

    const-string p0, "context is null : com.samsung.android.globalroaming"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "has sroaming package"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "persist.sys.softsim.status"

    const/4 v0, 0x0

    const-string v3, "default"

    invoke-static {p0, v0, v3}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v5, v3}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSRoamingStatus(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSRoamingStatus(Ljava/lang/String;)I

    move-result p0

    if-eq v3, v5, :cond_2

    if-ne p0, v5, :cond_1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_3

    if-nez p0, :cond_3

    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v5

    :cond_3
    :goto_1
    const-string/jumbo p0, "sroaming status : "

    invoke-static {v2, p0, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    const-string p0, "Package not found : com.samsung.android.globalroaming"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2
.end method

.method public final isDataBlocked(I)Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    if-eqz v0, :cond_0

    rsub-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    const/4 v1, 0x0

    const-string v2, "MultiSIMController"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isDefaultDataSlotAllowed(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Caught exception from isDataBlocked"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    if-eqz v0, :cond_3

    const-string v0, "isDataBlocked : isDefaultDataSlotAllowedByMethodCall"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "isDefaultDataSlotAllowed, "

    const-string v3, "isDefaultDataSlotAllowed"

    :try_start_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "selectItem"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v5, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v3, v6, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "bundle is null : isDefaultDataSlotAllowed"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "success"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, p1

    goto :goto_1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    xor-int/lit8 p1, v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    return p1

    :cond_3
    const-string p0, "isDataBlocked : mSimCardManagerService is null."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final isDataEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMultiSimAvailable()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isLDUSKU()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isLDUOLDModel()Z

    move-result v0

    :goto_0
    const-string v2, "isLDUModel = "

    const-string v3, " isSecondaryUser = "

    invoke-static {v2, v3, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    const-string v4, "MultiSIMController"

    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public final isRestrictionsForMmsUse()Z
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isQcomChipType()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_datacross_slot"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "isMMSuse ="

    const-string v2, "MultiSIMController"

    invoke-static {p0, v0, v2}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final launchSimManager()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isBlockedAllMultiSimBar()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "MultiSIMController"

    const-string v2, "onClick()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "com.samsung.android.app.telephonyui"

    const-string v3, "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.SimCardMgrActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "activity not found"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final notifyDataToCallback()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInitDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyDataToCallbackRunnable:Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final registerCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_2
    return-void
.end method

.method public final reverseSlotIfNeed(Lcom/android/systemui/settings/multisim/MultiSIMData;)V
    .locals 11

    iget-boolean p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    if-eqz p0, :cond_2

    iget p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    const/4 v0, 0x1

    rsub-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    iget p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    rsub-int/lit8 p0, p0, 0x3

    iput p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    :cond_1
    iget p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    rsub-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    iget-object p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    const/4 v1, 0x0

    aget v2, p0, v1

    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    aget-object v4, v3, v1

    iget-object v5, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    aget-object v6, v5, v1

    iget-object v7, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    aget-object v8, v7, v1

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    aget-boolean v9, p1, v1

    aget v10, p0, v0

    aput v10, p0, v1

    aget-object v10, v3, v0

    aput-object v10, v3, v1

    aget-object v10, v5, v0

    aput-object v10, v5, v1

    aget-object v10, v7, v0

    aput-object v10, v7, v1

    aget-boolean v10, p1, v0

    aput-boolean v10, p1, v1

    aput v2, p0, v0

    aput-object v4, v3, v0

    aput-object v6, v5, v0

    aput-object v8, v7, v0

    aput-boolean v9, p1, v0

    :cond_2
    return-void
.end method

.method public final setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v0, v3, :cond_0

    iget-boolean v6, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    if-eqz v6, :cond_2

    rsub-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eq v2, v4, :cond_1

    if-ne v2, v5, :cond_2

    :cond_1
    iget-boolean v6, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    if-eqz v6, :cond_2

    rsub-int/lit8 v2, v2, 0x3

    :cond_2
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setDefaultSlot : type = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", slotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MultiSIMController"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne v0, v6, :cond_3

    iget-object v8, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v9, v8, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    if-eq v2, v9, :cond_3

    iput-boolean v4, v8, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    :cond_3
    iget-object v8, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    move-result v8

    const-string/jumbo v9, "success"

    const-string v10, "bundle is null : quickpanel_simcard_change"

    const-string/jumbo v12, "selectItem"

    const-string v13, "PREFERRED_MOBILE_DATA"

    const-string v14, "PREFERRED_TEXT_MESSAGES"

    const-string v15, "PREFERRED_VOICE_CALLS"

    const-string v11, "changeType"

    const-string v5, "quickpanel_simcard_change"

    if-eqz v8, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->getIndex()I

    move-result v0

    const-string v1, "SimCardManagerServiceProvider"

    const-string/jumbo v3, "setChangeSimCardManagerSlot : mIsRemainCallbackCall = "

    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    if-nez v0, :cond_4

    invoke-virtual {v6, v11, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    if-ne v0, v4, :cond_5

    invoke-virtual {v6, v11, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v7, 0x2

    if-ne v0, v7, :cond_6

    invoke-virtual {v6, v11, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mIsRemainCallbackCall:Z

    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mIsRemainCallbackCall:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v12, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->INTERNAL_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v5, v3, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_8
    const-string/jumbo v4, "setDefaultSlotByMethodCall"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "quickpanel_simcard_change, "

    if-ne v0, v3, :cond_9

    move-object v13, v15

    goto :goto_3

    :cond_9
    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne v0, v3, :cond_a

    move-object v13, v14

    goto :goto_3

    :cond_a
    if-ne v0, v6, :cond_b

    goto :goto_3

    :cond_b
    const/4 v13, 0x0

    :goto_3
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v11, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_c
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "error"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    :goto_6
    return-void
.end method

.method public final updateCarrierNameAndPhoneNumber(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    const v0, 0x1040740

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNetworkNameDefault:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    const v0, 0x7f130e76

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUnknownPhoneNumber:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    const v0, 0x7f130e72

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInvalidSimInfo:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNetworkNameDefault:Ljava/lang/String;

    :goto_1
    aput-object v0, v1, p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updatePhoneNumberWhenNeeded()V

    return-void
.end method

.method public final updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V
    .locals 4

    const-string/jumbo v0, "updateCurrentDefaultSlot : voice = "

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    const-string v2, "MultiSIMController"

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDefaultIdUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDefaultIdUpdateList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateCurrentDefaultSlot later type = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateCurrentDefaultSlot : data = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    invoke-static {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateCurrentDefaultSlot : sms = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    invoke-static {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    invoke-virtual {v1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->GetCurrentVoiceCall()I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getCurrentVoiceSlotByMethodCall()I

    move-result v1

    :goto_1
    iput v1, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v0, "Caught exception from updateCurrentDefaultSlot"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    return-void
.end method

.method public final updateMultiSimReadyState(Z)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getLoadedSimCount(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsLoadedMultiSim:Z

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsLoadedMultiSim:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNeedCheckOpportunisticESim:Z

    if-eqz p1, :cond_4

    iput-boolean v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNeedCheckOpportunisticESim:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateMultiSimReadyState: mHasOpportunisticESim = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    const-string v3, "MultiSIMController"

    invoke-static {p1, v0, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsLoadedMultiSim:Z

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mHasOpportunisticESim:Z

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    iput-boolean v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    return-void
.end method

.method public final updatePhoneNumberWhenNeeded()V
    .locals 15

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;->isPhoneNumberNeeded()Z

    move-result v4

    if-eqz v4, :cond_8

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_7

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v5

    const-string v6, "CarrierFeature_RIL_DisablePhoneNumberSource"

    const-string v7, ""

    invoke-virtual {v5, v3, v6, v7, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v6, v6, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {}, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;->values()[Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_2
    const-string v9, "MultiSIMController"

    if-ge v8, v7, :cond_2

    aget-object v10, v6, v8

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v11, v11, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSubId(I)I

    move-result v12

    invoke-virtual {v10}, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;->getValue()I

    move-result v10

    iget-object v13, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    const-class v14, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionManager;

    if-eqz v13, :cond_0

    :try_start_0
    invoke-virtual {v13, v12, v10}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(II)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "failed to get SubscriptionManager.getPhoneNumber: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v10, 0x0

    :goto_3
    aput-object v10, v11, v3

    iget-object v10, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v10, v10, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_4

    :cond_1
    add-int/2addr v8, v1

    goto :goto_2

    :cond_2
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v5, v5, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "ro.csc.sales_code"

    const-string/jumbo v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AIS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "gsm.sim.state"

    const-string v6, "NOT_READY"

    invoke-static {v5, v2, v6}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v2, v6}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "NETWORK_LOCKED"

    if-nez v3, :cond_3

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "sim1 Network Lock!!"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3
    if-ne v3, v1, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "sim2 Network Lock!!"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v5, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v5, v5, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mInvalidSimInfo:Ljava/lang/String;

    aput-object v6, v5, v3

    goto :goto_6

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v5, v5, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUnknownPhoneNumber:Ljava/lang/String;

    aput-object v6, v5, v3

    :cond_5
    :goto_6
    iget-object v5, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v5, v5, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;->values()[Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v4, v4, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-string v5, "+82"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v4, v4, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v6, v6, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    :cond_6
    add-int/2addr v3, v1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    goto :goto_7

    :cond_8
    add-int/2addr v3, v1

    goto/16 :goto_0

    :cond_9
    :goto_7
    return-void
.end method

.method public final updateSimSlotType()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/systemui/util/DeviceState;->isESIM(Landroid/content/Context;I)Z

    move-result v2

    aput-boolean v2, v1, v0

    const-string/jumbo v1, "updateSimSlotType() - sim slot "

    const-string v2, " is eSim: "

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiSIMController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
