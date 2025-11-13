.class public Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;
.super Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private mAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field protected mExecutorService:Ljava/util/concurrent/ExecutorService;

.field protected mHandler:Landroid/os/Handler;

.field private mIsAccountsMenuSupported:Z

.field private mIsSamsungAccountSignedIn:Z

.field protected mIsSamsungAccountSupported:Z

.field private mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;


# direct methods
.method public static synthetic $r8$lambda$o53F-5caKzXDwbZhzDLflT50NSc(Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->lambda$prepareAccountsMenuStatus$0(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$twBiorW8ZKyFi8FqiDPvAJNXG5I(Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->lambda$setAccountsMenuStatus$1(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mHandler:Landroid/os/Handler;

    sget-object p2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    sput-object p2, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isChinaModel()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isGoogleServiceEnabled(Landroid/content/Context;)Z

    move-result p2

    :goto_0
    sput-boolean p2, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mIsGoogleAccountSupported:Z

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isSamsungAccountSupported(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mIsSamsungAccountSupported:Z

    invoke-static {p1}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mIsGoogleAccountSupported:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mIsSamsungAccountSupported:Z

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mIsAccountsMenuSupported:Z

    return-void
.end method

.method private getStatusForAccountsMenu()Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 1

    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-eq p0, v0, :cond_2

    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private synthetic lambda$prepareAccountsMenuStatus$0(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V
    .locals 0

    sput-object p2, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->setAccountsMenuStatus(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method private synthetic lambda$setAccountsMenuStatus$1(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->setAccountSecuritySummary(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->updateStatusAndCardViews()V

    return-void
.end method

.method private prepareAccountsMenuStatus(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.osp.app.signin"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isAccountSignedIn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mIsSamsungAccountSignedIn:Z

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    new-instance p0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroidx/core/util/Consumer;)V

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setAccountSecuritySummary(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0607b7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->seslSetSummaryColor(IZ)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14291f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0607b8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->seslSetSummaryColor(IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mIsSamsungAccountSupported:Z

    const v1, 0x7f142957

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->FMM_SUPPORT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f142968

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14296a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setAccountsMenuStatus(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->getStatusForAccountsMenu()Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateMenuStatus()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_accounts_security"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.google"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isAccountSignedIn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-boolean v1, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mIsGoogleAccountSupported:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_0
    sput-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mIsSamsungAccountSupported:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->prepareAccountsMenuStatus(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    const-string v0, "GA"

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v2, "key_google_account_security"

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setMenuStatus(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateMenuStatusWithValues()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_accounts_security"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mIsSamsungAccountSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->setAccountsMenuStatus(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    const-string v0, "GA"

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v2, "key_google_account_security"

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setMenuStatus(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateStatusAndCardViews()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    const-string v1, "GA"

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v3, "key_google_account_security"

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setMenuStatus(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    const-string v1, "SA"

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v3, "key_samsung_account_security"

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setMenuStatus(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setupStatus(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "security_dashboard_status"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->updateMenuStatus()V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockSettingsBlockonDexMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsDividerVisible:Z

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mIsAccountsMenuSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mIsSamsungAccountSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142969

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mIsGoogleAccountSupported:Z

    if-eqz v1, :cond_2

    const v1, 0x7f142956

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1409b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_accounts_security"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2348

    const v1, 0xdae1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->isControllable()Z

    move-result p0

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

    invoke-super {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setDefaultSummary()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mIsSamsungAccountSupported:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f142969

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-boolean v1, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mIsGoogleAccountSupported:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1409b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f142956

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0607b7

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->seslSetSummaryColor(IZ)V

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mIsAccountsMenuSupported:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->updateMenuStatusWithValues()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
