.class public Lcom/android/settings/datausage/BillingCycleSettings;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataUsageEditController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
    }
.end annotation


# static fields
.field static final KEY_SET_DATA_LIMIT:Ljava/lang/String; = "set_data_limit"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mAnchorView:Landroidx/preference/SecPreference;

.field private static sSetBillingCycle:I


# instance fields
.field private mBillingCycle:Landroidx/preference/SecPreference;

.field private mDataLimit:Landroidx/preference/SecPreference;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataWarning:Landroidx/preference/SecPreference;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEnableDataLimit:Landroidx/preference/SecSwitchPreference;

.field private mEnableDataWarning:Landroidx/preference/SecSwitchPreference;

.field private mIsSPR:Z

.field private mIsTMB:Z

.field private mIsVZW:Z

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNetworkTemplate(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetmAnchorView()Landroidx/preference/SecPreference;
    .locals 1

    sget-object v0, Lcom/android/settings/datausage/BillingCycleSettings;->mAnchorView:Landroidx/preference/SecPreference;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsSetBillingCycle()I
    .locals 1

    sget v0, Lcom/android/settings/datausage/BillingCycleSettings;->sSetBillingCycle:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputsSetBillingCycle(I)V
    .locals 0

    sput p0, Lcom/android/settings/datausage/BillingCycleSettings;->sSetBillingCycle:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smupdateDialogAnchorView(Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 970
    new-instance v0, Lcom/android/settings/datausage/BillingCycleSettings$1;

    sget v1, Lcom/android/settings/R$xml;->billing_cycle:I

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/datausage/BillingCycleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    .line 160
    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    .line 161
    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsTMB:Z

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 172
    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    return-void
.end method

.method private getDefaultWarningBytes()J
    .locals 4

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "carrier_config"

    .line 287
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    const-wide/32 v0, 0x77359400

    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v2, "data_warning_threshold_bytes_long"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 292
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultWarningBytes:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "BillingCycleSettings"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private setPolicyWarningBytes(J)V
    .locals 2

    const-string v0, "BillingCycleSettings"

    const-string/jumbo v1, "setPolicyWarningBytes()"

    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method private static updateDialogAnchorView(Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 443
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 444
    iget p0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p0, v1

    .line 445
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 446
    invoke-virtual {p1, p0, v0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BillingCycleSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x156

    return p0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object p0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 396
    sget p0, Lcom/android/settings/R$xml;->billing_cycle:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 177
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 180
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v0, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "network_template"

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    if-nez v0, :cond_0

    .line 186
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    .line 185
    invoke-static {p1, v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    :cond_0
    const-string v0, "billing_cycle"

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroidx/preference/SecPreference;

    const/4 v1, 0x1

    .line 191
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v0, "set_data_warning"

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroidx/preference/SecSwitchPreference;

    .line 193
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "data_warning"

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroidx/preference/SecPreference;

    .line 195
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v0, "set_data_limit"

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroidx/preference/SecSwitchPreference;

    .line 197
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "data_limit"

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroidx/preference/SecPreference;

    .line 199
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 201
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VZW"

    .line 202
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VPP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    .line 203
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    :cond_3
    const-string v2, "TMB"

    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "TMK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iput-boolean v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsTMB:Z

    .line 206
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroidx/preference/SecSwitchPreference;

    sget v1, Lcom/android/settings/R$string;->data_usage_disable_mobile_limit_vzw:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 207
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroidx/preference/SecSwitchPreference;

    sget v1, Lcom/android/settings/R$string;->data_usage_limit_summary:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    :cond_8
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_9

    .line 221
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 223
    :cond_9
    iget-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz p1, :cond_a

    .line 224
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    :cond_a
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 329
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    if-ne v0, p1, :cond_4

    .line 330
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 p2, 0x1bd3

    if-nez p1, :cond_0

    .line 332
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getMetricsCategory()I

    move-result p0

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return v4

    .line 340
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-eqz v0, :cond_1

    .line 341
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getMetricsCategory()I

    move-result p0

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return v4

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 348
    :cond_2
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-double v0, v0

    const-wide v5, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v0, v5

    double-to-long v0, v0

    .line 351
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "carrier_config"

    .line 352
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CarrierConfigManager;

    if-eqz v5, :cond_3

    .line 354
    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v6

    if-eqz v6, :cond_3

    const-wide v2, 0x12a05f200L

    .line 355
    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v5

    const-string v6, "data_limit_threshold_bytes_long"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 358
    :cond_3
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultLimitBytes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BillingCycleSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getMetricsCategory()I

    move-result p0

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return v4

    .line 370
    :cond_4
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroidx/preference/SecSwitchPreference;

    if-ne v0, p1, :cond_6

    .line 371
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 374
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getDefaultWarningBytes()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    goto :goto_0

    .line 379
    :cond_5
    invoke-direct {p0, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    .line 382
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getMetricsCategory()I

    move-result p0

    const/16 p2, 0x1c17

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return v4

    :cond_6
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroidx/preference/SecPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 301
    sput-object v0, Lcom/android/settings/datausage/BillingCycleSettings;->mAnchorView:Landroidx/preference/SecPreference;

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getMetricsCategory()I

    move-result v0

    const/16 v2, 0x1bd1

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    .line 305
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    return v1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroidx/preference/SecPreference;

    if-ne p1, v0, :cond_1

    .line 309
    sput-object v0, Lcom/android/settings/datausage/BillingCycleSettings;->mAnchorView:Landroidx/preference/SecPreference;

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getMetricsCategory()I

    move-result v0

    const/16 v2, 0x1bd2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    const/4 p1, 0x0

    .line 313
    invoke-static {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;Z)Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    return v1

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroidx/preference/SecPreference;

    if-ne p1, v0, :cond_2

    .line 317
    sput-object v0, Lcom/android/settings/datausage/BillingCycleSettings;->mAnchorView:Landroidx/preference/SecPreference;

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getMetricsCategory()I

    move-result v0

    const/16 v2, 0x1bd4

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    .line 321
    invoke-static {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;Z)Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    return v1

    .line 324
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 232
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method setPolicyLimitBytes(J)V
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPolicyLimitBytes() limitBytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingCycleSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method setUpForTest(Lcom/android/settingslib/NetworkPolicyEditor;Landroidx/preference/SecPreference;Landroidx/preference/SecPreference;Landroidx/preference/SecPreference;Landroidx/preference/SecSwitchPreference;Landroidx/preference/SecSwitchPreference;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iput-object p1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 152
    iput-object p2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroidx/preference/SecPreference;

    .line 153
    iput-object p3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroidx/preference/SecPreference;

    .line 154
    iput-object p4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroidx/preference/SecPreference;

    .line 155
    iput-object p5, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroidx/preference/SecSwitchPreference;

    .line 156
    iput-object p6, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroidx/preference/SecSwitchPreference;

    return-void
.end method

.method public updateDataUsage()V
    .locals 0

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method updatePrefs()V
    .locals 9

    .line 239
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->data_usage_billing_cycle_summary:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 243
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroidx/preference/SecPreference;

    sub-int/2addr v0, v2

    aget-object v0, v3, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroidx/preference/SecPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 261
    :goto_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v7

    :goto_2
    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 267
    iget-object p0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroidx/preference/SecPreference;

    invoke-virtual {p0, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroidx/preference/SecPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 275
    iget-object p0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 279
    iget-object p0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    return-void
.end method
