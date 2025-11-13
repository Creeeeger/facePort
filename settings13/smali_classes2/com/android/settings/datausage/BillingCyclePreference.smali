.class public Lcom/android/settings/datausage/BillingCyclePreference;
.super Landroidx/preference/SecPreference;
.source "BillingCyclePreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field private mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public static synthetic $r8$lambda$60ikxwnorGFdXSR0n465vkCGlkM(Lcom/android/settings/datausage/BillingCyclePreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/BillingCyclePreference;->lambda$setTemplate$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance p2, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mListener:Lcom/android/settings/network/MobileDataEnabledListener;

    .line 67
    iput-object p1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$setTemplate$0(Landroidx/preference/Preference;)Z
    .locals 2

    .line 104
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v1, "network_template"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    iget v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    const-string/jumbo v1, "subscriptionid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    .line 109
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->billing_cycle:I

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method private updateEnabled()V
    .locals 3

    const/4 v0, 0x0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    .line 131
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    .line 132
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 130
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 140
    :catch_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v2, "network_template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 148
    iget v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    const-string/jumbo v2, "subscriptionid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    .line 150
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->billing_cycle:I

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public onAttached()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mListener:Lcom/android/settings/network/MobileDataEnabledListener;

    iget p0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 80
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->updateEnabled()V

    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 87
    iput p2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    .line 88
    iput-object p3, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .line 90
    iget-object p2, p3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 95
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$array;->data_usage_billing_cycle_summary:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    .line 96
    aget-object p1, p2, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0, p3}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    new-instance p1, Lcom/android/settings/datausage/BillingCyclePreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/BillingCyclePreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datausage/BillingCyclePreference;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->updateEnabled()V

    return-void
.end method
