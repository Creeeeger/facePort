.class public final Lcom/android/systemui/wallet/controller/QuickAccessWalletController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final RECREATION_TIME_WINDOW:J


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mContext:Landroid/content/Context;

.field public mDefaultPaymentAppChangeEvents:I

.field public mDefaultPaymentAppObserver:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;

.field public mDefaultWalletAppChangeEvents:I

.field public mDefaultWalletAppObserver:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda0;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mQawClientCreatedTimeMillis:J

.field public mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

.field public final mRoleManager:Landroid/app/role/RoleManager;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public mWalletPreferenceChangeEvents:I

.field public mWalletPreferenceObserver:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->RECREATION_TIME_WINDOW:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/systemui/util/time/SystemClock;Landroid/app/role/RoleManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceChangeEvents:I

    iput v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppChangeEvents:I

    iput v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultWalletAppChangeEvents:I

    iput-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p7, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mRoleManager:Landroid/app/role/RoleManager;

    iput-object p5, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    iput-object p6, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p6}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQawClientCreatedTimeMillis:J

    return-void
.end method


# virtual methods
.method public final queryWalletCards(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQawClientCreatedTimeMillis:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->RECREATION_TIME_WINDOW:J

    cmp-long v0, v0, v2

    const-string v1, "QAWController"

    if-lez v0, :cond_0

    const-string v0, "Re-creating the QAW client to avoid stale."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->reCreateWalletClient()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->isWalletFeatureAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "QuickAccessWallet feature is not available."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07184e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07184d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07184a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    invoke-direct {v3, v0, v1, v2, p2}, Landroid/service/quickaccesswallet/GetWalletCardsRequest;-><init>(IIII)V

    iget-object p2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p0, v3, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    return-void
.end method

.method public final reCreateWalletClient()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;)Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQawClientCreatedTimeMillis:J

    return-void
.end method

.method public final varargs setupWalletChangeObservers(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;[Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;)V
    .locals 8

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p2, v2

    sget-object v4, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->WALLET_PREFERENCE_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    iget-object v5, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceObserver:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;

    invoke-direct {v3, p0, v7}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;-><init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceObserver:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;

    const-string v4, "lockscreen_show_wallet"

    invoke-interface {v5, v4, v1, v3, v6}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    :cond_0
    iget v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceChangeEvents:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceChangeEvents:I

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->DEFAULT_PAYMENT_APP_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppObserver:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;

    invoke-direct {v3, p0, v7, p1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;-><init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Landroid/os/Handler;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    iput-object v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppObserver:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;

    const-string v4, "nfc_payment_default_component"

    invoke-interface {v5, v4, v1, v3, v6}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    :cond_2
    iget v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppChangeEvents:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppChangeEvents:I

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->DEFAULT_WALLET_APP_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultWalletAppObserver:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda0;

    if-nez v3, :cond_4

    new-instance v3, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    iput-object v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultWalletAppObserver:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda0;

    iget-object v4, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mRoleManager:Landroid/app/role/RoleManager;

    iget-object v5, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v3, v6}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    :cond_4
    iget v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultWalletAppChangeEvents:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultWalletAppChangeEvents:I

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final varargs unregisterWalletChangeObservers([Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    sget-object v3, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->WALLET_PREFERENCE_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    iget-object v4, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceObserver:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;

    if-eqz v3, :cond_0

    iget v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceChangeEvents:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceChangeEvents:I

    if-nez v2, :cond_2

    invoke-interface {v4, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->DEFAULT_PAYMENT_APP_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppObserver:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;

    if-eqz v3, :cond_1

    iget v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppChangeEvents:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppChangeEvents:I

    if-nez v2, :cond_2

    invoke-interface {v4, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->DEFAULT_WALLET_APP_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultWalletAppObserver:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda0;

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultWalletAppChangeEvents:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultWalletAppChangeEvents:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mRoleManager:Landroid/app/role/RoleManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/app/role/RoleManager;->removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final updateWalletPreference()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->isWalletServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->isWalletFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->isWalletFeatureAvailableWhenDeviceLocked()Z

    :cond_0
    return-void
.end method
