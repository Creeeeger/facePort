.class public final Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCardRetriever:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;

.field mCardViewDrawable:Landroid/graphics/drawable/Drawable;

.field public final mController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

.field public mIsWalletUpdating:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mLabel:Ljava/lang/CharSequence;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public mSelectedCard:Landroid/service/quickaccesswallet/WalletCard;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/content/pm/PackageManager;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/wallet/controller/QuickAccessWalletController;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p2, 0x7f131494

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mLabel:Ljava/lang/CharSequence;

    new-instance p1, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;-><init>(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardRetriever:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mIsWalletUpdating:Z

    iput-object p13, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    iput-object p10, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p11, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p12, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    return-void
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    iget-object v0, v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getServiceLabel()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mLabel:Ljava/lang/CharSequence;

    :cond_0
    return-object v0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/animation/Expandable;->activityTransitionController(Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    move-result-object p1

    :goto_0
    new-instance v0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    sget-object v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->DEFAULT_PAYMENT_APP_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    sget-object v1, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->DEFAULT_WALLET_APP_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    filled-new-array {v0, v1}, [Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->unregisterWalletChangeObservers([Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;)V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->DEFAULT_PAYMENT_APP_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    sget-object v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->DEFAULT_WALLET_APP_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    filled-new-array {p1, v0}, [Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardRetriever:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->setupWalletChangeObservers(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;[Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;)V

    iget-object p1, v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->isWalletServiceAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->isWalletFeatureAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "QuickAccessWalletTile"

    const-string v1, "QAW service is unavailable, recreating the wallet client."

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->reCreateWalletClient()V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->queryWalletCards(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;I)V

    :cond_2
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 4

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    iget-object v0, p2, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getServiceLabel()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mLabel:Ljava/lang/CharSequence;

    :cond_0
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iget-object v0, p2, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getTileIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f080b70

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p2, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->isWalletServiceAvailable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget-object p2, p2, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->isWalletFeatureAvailable()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSelectedCard:Landroid/service/quickaccesswallet/WalletCard;

    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p2}, Landroid/service/quickaccesswallet/WalletCard;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardViewDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->sideViewCustomDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_3
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mIsWalletUpdating:Z

    if-eqz p0, :cond_4

    const p0, 0x7f131493

    goto :goto_2

    :cond_4
    const p0, 0x7f131492

    :goto_2
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->sideViewCustomDrawable:Landroid/graphics/drawable/Drawable;

    :goto_3
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_5
    const/4 p0, 0x0

    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->sideViewCustomDrawable:Landroid/graphics/drawable/Drawable;

    :goto_4
    return-void
.end method

.method public final isAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->getUserId()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "org.chromium.arc"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    iget-object v0, v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mRoleManager:Landroid/app/role/RoleManager;

    const-string v3, "android.app.role.WALLET"

    invoke-virtual {v0, v3}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.nfc.hce"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nfc_payment_default_component"

    const/4 v2, -0x2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {p0, v0, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    return-object p0
.end method
