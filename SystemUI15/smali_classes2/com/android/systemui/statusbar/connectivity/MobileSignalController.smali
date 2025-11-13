.class public final Lcom/android/systemui/statusbar/connectivity/MobileSignalController;
.super Lcom/android/systemui/statusbar/connectivity/SignalController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field public mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

.field public mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public final mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

.field mInflateSignalStrengths:Z

.field public final mMobileCallback:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

.field public final mMobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

.field public final mMobileStatusHistory:[Ljava/lang/String;

.field public mMobileStatusHistoryIndex:I

.field final mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

.field public final mNetworkNameDefault:Ljava/lang/String;

.field public final mNetworkNameSeparator:Ljava/lang/String;

.field public mNetworkToIconLookup:Ljava/util/Map;

.field public final mObserver:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;

.field public final mPhone:Landroid/telephony/TelephonyManager;

.field public final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->SSDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/mobile/MobileMappings$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;Landroid/telephony/SubscriptionInfo;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Landroid/os/Looper;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/connectivity/MobileStatusTrackerFactory;)V
    .locals 10

    move-object v6, p0

    move v7, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MobileSignalController("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p8 .. p8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/connectivity/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mInflateSignalStrengths:Z

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;-><init>(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)V

    move-object v1, p2

    iput-object v1, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-object v1, p4

    iput-object v1, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v1, p9

    iput-object v1, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    move-object/from16 v1, p8

    iput-object v1, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    iput-object v8, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

    const v2, 0x7f1312b0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    const v2, 0x1040740

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iget-object v3, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-object v4, v8

    check-cast v4, Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxyImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    iget-object v3, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v3, Lcom/android/settingslib/mobile/MobileMappings$Config;->showAtLeast3G:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_0
    iput-object v3, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual/range {p8 .. p8}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p8 .. p8}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v1, v6, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v3, v6, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput-object v2, v3, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    iput-boolean v7, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    iget-object v2, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v2, v3, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;

    new-instance v2, Landroid/os/Handler;

    move-object/from16 v3, p10

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;-><init>(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;Landroid/os/Handler;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mObserver:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker;

    iget-object v2, v9, Lcom/android/systemui/statusbar/connectivity/MobileStatusTrackerFactory;->phone:Landroid/telephony/TelephonyManager;

    iget-object v3, v9, Lcom/android/systemui/statusbar/connectivity/MobileStatusTrackerFactory;->receiverLooper:Landroid/os/Looper;

    iget-object v4, v9, Lcom/android/systemui/statusbar/connectivity/MobileStatusTrackerFactory;->info:Landroid/telephony/SubscriptionInfo;

    iget-object v5, v9, Lcom/android/systemui/statusbar/connectivity/MobileStatusTrackerFactory;->defaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object/from16 p6, v0

    invoke-direct/range {p1 .. p6}, Lcom/android/settingslib/mobile/MobileStatusTracker;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Looper;Landroid/telephony/SubscriptionInfo;Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    return-void
.end method


# virtual methods
.method public final checkDefaultData()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSubDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->getControllerWithSubId(I)Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataConnectionAllowed()Z

    move-result p0

    xor-int/lit8 v3, p0, 0x1

    :goto_0
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    return-void
.end method

.method public final cleanState()Lcom/android/systemui/statusbar/connectivity/ConnectivityState;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/MobileState;-><init>()V

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->dump(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mSubscription="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  mInflateSignalStrengths="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mInflateSignalStrengths:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  isDataDisabled="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isDataConnectionAllowed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  mNetworkToIconLookup="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mMobileStatusTracker.isListening="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    iget-boolean v1, v1, Lcom/android/settingslib/mobile/MobileStatusTracker;->mListening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  MobileStatusHistory"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    add-int/lit8 v0, v0, 0x3f

    :goto_1
    iget v4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    add-int/2addr v4, v3

    sub-int/2addr v4, v1

    if-lt v0, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  Previous MobileStatus("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    add-int/2addr v5, v3

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v0, 0x3f

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->dumpTableData(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getCurrentIconId()I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    add-int/2addr p0, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    :goto_0
    sget v0, Lcom/android/settingslib/graph/SignalDrawable;->ICON_RES:I

    shl-int/lit8 p0, p0, 0x8

    const/high16 v0, 0x30000

    or-int/2addr p0, v0

    return p0

    :cond_1
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    iget v2, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz p0, :cond_2

    add-int/2addr v2, v3

    :cond_2
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-eq v1, v5, :cond_3

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-ne v1, v5, :cond_4

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    if-eqz v1, :cond_4

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    iget v0, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v4

    :goto_2
    if-nez v1, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    move v4, v3

    :cond_7
    if-eqz p0, :cond_8

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    add-int/2addr p0, v3

    goto :goto_3

    :cond_8
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    :goto_3
    invoke-static {v2, p0, v4}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p0

    return p0

    :cond_9
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz p0, :cond_a

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    add-int/2addr p0, v3

    goto :goto_4

    :cond_a
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    :goto_4
    invoke-static {v4, p0, v3}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p0

    return p0

    :cond_b
    return v4
.end method

.method public final handleBroadcast(Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    const-string v0, "android.telephony.extra.SHOW_SPN"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "android.telephony.extra.SPN"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.telephony.extra.DATA_SPN"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.telephony.extra.SHOW_PLMN"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "android.telephony.extra.PLMN"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v5, Lcom/android/systemui/statusbar/connectivity/SignalController;->CHATTY:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateNetworkName showSpn="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " spn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dataSpn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " showPlmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " plmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "CarrierLabel"

    invoke-static {v5, p1, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v2

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v1, v2

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput-object v3, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_7

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_1

    :cond_7
    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput-object v3, v2, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    goto :goto_3

    :cond_8
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    if-ne p1, v0, :cond_9

    move v3, v1

    :cond_9
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    goto :goto_2

    :cond_a
    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    goto :goto_3

    :cond_b
    const-string p0, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "android.telephony.extra.CARRIER_ID"

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iput p0, v2, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierId:I

    :cond_c
    :goto_3
    return-void
.end method

.method public final notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    if-eqz v3, :cond_0

    iget v2, v2, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iget-object v2, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    check-cast v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getContentDescription()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget v2, v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget v5, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    if-nez v5, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    const v5, 0x7f1304ca

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v11, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    check-cast v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget v6, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierId:I

    iget-object v7, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkTypeResIdCache:Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;

    iget-object v8, v7, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;->lastCarrierId:Ljava/lang/Integer;

    const/4 v9, 0x1

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v6, :cond_3

    iget-object v8, v7, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;->lastIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_3
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;->lastCarrierId:Ljava/lang/Integer;

    iput-object v5, v7, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;->lastIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v8, v7, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;->overrides:Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;

    check-cast v8, Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl;->MAPPING:Ljava/util/Map;

    sget-object v10, Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl;->Companion:Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    iget-object v13, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl$Companion;->parseNetworkIconOverrideTypedArray(Landroid/content/res/TypedArray;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    if-lez v2, :cond_6

    iput v2, v7, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;->cachedResId:I

    iput-boolean v9, v7, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;->isOverridden:Z

    goto :goto_2

    :cond_6
    iget v2, v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    iput v2, v7, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;->cachedResId:I

    iput-boolean v4, v7, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;->isOverridden:Z

    :cond_7
    :goto_2
    iget v2, v7, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;->cachedResId:I

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_f

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    if-nez v5, :cond_8

    new-instance v5, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;

    invoke-direct {v5, v4, v6, v6}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;-><init>(ILcom/android/systemui/statusbar/connectivity/IconState;Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_8
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    if-nez v5, :cond_c

    iget-object v5, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-eq v5, v7, :cond_9

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-ne v5, v7, :cond_a

    :cond_9
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    if-eqz v5, :cond_a

    goto :goto_3

    :cond_a
    iget-object v5, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v5, v5, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    move v5, v4

    goto :goto_4

    :cond_c
    :goto_3
    move v5, v2

    :goto_4
    iget-boolean v7, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v7, :cond_d

    iget-boolean v7, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    if-nez v7, :cond_d

    move v7, v9

    goto :goto_5

    :cond_d
    move v7, v4

    :goto_5
    new-instance v8, Lcom/android/systemui/statusbar/connectivity/IconState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCurrentIconId()I

    move-result v10

    invoke-direct {v8, v7, v10, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    iget-boolean v7, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    if-nez v7, :cond_e

    iget-object v6, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    :cond_e
    move-object v7, v6

    move-object v6, v8

    goto :goto_6

    :cond_f
    move v5, v4

    move-object v7, v6

    :goto_6
    new-instance v8, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;

    invoke-direct {v8, v5, v6, v7}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;-><init>(ILcom/android/systemui/statusbar/connectivity/IconState;Ljava/lang/CharSequence;)V

    move-object v5, v8

    :goto_7
    iget-object v6, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-eq v6, v7, :cond_10

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-ne v6, v7, :cond_11

    :cond_10
    iget-boolean v6, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    if-eqz v6, :cond_11

    move v6, v9

    goto :goto_8

    :cond_11
    move v6, v4

    :goto_8
    new-instance v7, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget-boolean v8, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v8, :cond_12

    iget-boolean v8, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    if-nez v8, :cond_12

    move v8, v9

    goto :goto_9

    :cond_12
    move v8, v4

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCurrentIconId()I

    move-result v10

    invoke-direct {v7, v8, v10, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    if-eqz v3, :cond_13

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    if-nez v3, :cond_16

    :cond_13
    if-eqz v6, :cond_14

    goto :goto_a

    :cond_14
    iget-object v3, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v3, v3, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-eqz v3, :cond_15

    goto :goto_a

    :cond_15
    move v2, v4

    :cond_16
    :goto_a
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-eqz v3, :cond_17

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    if-nez v3, :cond_17

    move v3, v9

    goto :goto_b

    :cond_17
    move v3, v4

    :goto_b
    new-instance v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;

    invoke-direct {v6, v3, v2, v7}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;-><init>(ZILcom/android/systemui/statusbar/connectivity/IconState;)V

    new-instance v2, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    if-eqz v3, :cond_18

    iget-boolean v7, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    if-nez v7, :cond_18

    iget-boolean v7, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    if-eqz v7, :cond_18

    move v10, v9

    goto :goto_c

    :cond_18
    move v10, v4

    :goto_c
    if-eqz v3, :cond_19

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    if-nez v3, :cond_19

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    if-eqz v3, :cond_19

    move v3, v9

    goto :goto_d

    :cond_19
    move v3, v4

    :goto_d
    iget-object v13, v5, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->description:Ljava/lang/CharSequence;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v14

    iget-boolean v15, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->roaming:Z

    iget v7, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;->ratTypeIcon:I

    iget v8, v5, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->ratTypeIcon:I

    iget-object v0, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;->icon:Lcom/android/systemui/statusbar/connectivity/IconState;

    iget-object v1, v5, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->icon:Lcom/android/systemui/statusbar/connectivity/IconState;

    iget-boolean v9, v6, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$SbInfo;->showTriangle:Z

    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    move v0, v9

    move v9, v10

    move v10, v3

    move/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;-><init>(Lcom/android/systemui/statusbar/connectivity/IconState;Lcom/android/systemui/statusbar/connectivity/IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V

    return-void
.end method

.method public final registerListener()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusTracker:Lcom/android/settingslib/mobile/MobileStatusTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mObserver:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setActivity(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    if-eq p1, v4, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public final updateTelephony()V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->DEBUG:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateTelephonySignalStrength: hasService="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v3, v2, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    invoke-static {v3}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ss="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " displayInfo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->checkDefaultData()V

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    if-nez v2, :cond_2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v4, v4, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowCdmaRssi:Z

    if-eqz v4, :cond_3

    const-class v4, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v2, v4}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    :goto_0
    iput v2, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierId:I

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

    check-cast v4, Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxyImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v2

    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object v2, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaultIcons:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v2, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    :goto_2
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_7

    move v2, v4

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    if-eqz v2, :cond_9

    :cond_8
    move v2, v3

    goto :goto_5

    :cond_9
    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCdmaEnhancedRoamingIndicatorDisplayNumber()I

    move-result v2

    if-eq v2, v4, :cond_8

    :goto_4
    move v2, v4

    goto :goto_5

    :cond_a
    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/telephony/TelephonyDisplayInfo;->isRoaming()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :goto_5
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->roaming:Z

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataConnectionAllowed()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-boolean v1, v1, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDefaults:Lcom/android/settingslib/mobile/MobileStatusTracker$SubscriptionDefaults;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    if-eq v1, v2, :cond_c

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    goto :goto_6

    :cond_c
    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    :cond_d
    :goto_6
    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v4

    goto :goto_7

    :cond_e
    move v1, v3

    :goto_7
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    if-eq v1, v2, :cond_10

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_f

    move v3, v4

    :cond_f
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->recalculateEmergency()V

    :cond_10
    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    :cond_11
    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method
