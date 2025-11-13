.class public Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;
.super Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecurityDashboardSamsungAccountSecurityPreferenceController"


# direct methods
.method public static synthetic $r8$lambda$nVySx8K-Ii0N4D923-9Tcv8Ts1k(Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;->lambda$updateMenuStatus$1(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nnyFxb3_FhnLyOkB-uE_www7C-U(Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;->lambda$updateMenuStatus$0(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    sput-object p2, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isChinaModel()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isGoogleServiceEnabled(Landroid/content/Context;)Z

    move-result p2

    :goto_0
    sput-boolean p2, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mIsGoogleAccountSupported:Z

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isSamsungAccountSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mIsSamsungAccountSupported:Z

    return-void
.end method

.method private synthetic lambda$updateMenuStatus$0(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;->setSamsungAccountSecuritySummary(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method private synthetic lambda$updateMenuStatus$1(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V
    .locals 1

    sput-object p2, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private launchSamsungAccountIntent(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 6

    iget-object p1, p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "com.osp.app.signin"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isAccountSignedIn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    sget-object v3, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string/jumbo v4, "true"

    const-string v5, "from_settings"

    if-eq p1, v3, :cond_2

    sget-object v3, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-nez v1, :cond_0

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v3, :cond_1

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p1, v1, :cond_3

    :cond_1
    const-string p1, "com.samsung.android.samsungaccount.action.OPEN_SECURITY_AND_PRIVACY"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f140a25

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f140a24

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_1
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Samsung Account Activity Not Found"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecurityDashboardSamsungAccountSecurityPreferenceController"

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private setSamsungAccountSecuritySummary(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0607b7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f142967

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0607b8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

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

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14296a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateMenuStatus(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->FMM_SUPPORT_URI:Landroid/net/Uri;

    new-instance p0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroidx/core/util/Consumer;)V

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->mIsSamsungAccountSupported:Z

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

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->getBackupKeys()Ljava/util/List;

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

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->getLaunchIntent()Landroid/content/Intent;

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

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_samsung_account_security"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2348

    const v1, 0xdae2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;->launchSamsungAccountIntent(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

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

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->isControllable()Z

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

    invoke-super {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isSamsungAccountSupported(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "key_samsung_account_security"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAccountsSecurityPreferenceController;->updateState(Landroidx/preference/Preference;)V

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;->updateMenuStatus(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
