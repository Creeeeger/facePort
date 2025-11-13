.class public Lcom/android/settings/datausage/DataUsagePreference;
.super Landroidx/preference/SecPreference;
.source "DataUsagePreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# static fields
.field private static sfTotalBytes:J


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

.field private mIsRoaming:Z

.field private mSubId:I

.field private mSummaryDescription:Ljava/lang/String;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTitleRes:I


# direct methods
.method public static synthetic $r8$lambda$TcUDHQKFPIjbG7dYWL2HGujnQxQ(Lcom/android/settings/datausage/DataUsagePreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsagePreference;->lambda$setTemplate$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/datausage/DataUsagePreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetSummaryAndDescription(Lcom/android/settings/datausage/DataUsagePreference;Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsagePreference;->setSummaryAndDescription(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsfTotalBytes(J)V
    .locals 0

    sput-wide p0, Lcom/android/settings/datausage/DataUsagePreference;->sfTotalBytes:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 85
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mIsRoaming:Z

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10101e1

    aput v2, v1, v0

    .line 86
    sget v2, Landroidx/preference/R$attr;->preferenceStyle:I

    const v3, 0x101008e

    .line 88
    invoke-static {p1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v2

    .line 86
    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 91
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    .line 92
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "wifi_data_usage"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 96
    sget p2, Lcom/android/settings/R$string;->wifi_data_usage:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    .line 100
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$setTemplate$0(Landroidx/preference/Preference;)Z
    .locals 4

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v2, "network_template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    iget v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mSubId:I

    const-string/jumbo v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mIsRoaming:Z

    const-string v2, "is_roaming"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string/jumbo v3, "network_type"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 191
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 192
    iget-boolean p1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mIsRoaming:Z

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->roaming_datauage_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->app_cellular_data_usage:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    :cond_2
    :goto_1
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsagePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/datausage/DataUsageList;

    .line 199
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 200
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    .line 201
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x155

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v2
.end method

.method private setSummaryAndDescription(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 14

    .line 258
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const-string v1, "DataUsagePreference"

    if-eqz v0, :cond_0

    .line 259
    sget-wide v2, Lcom/android/settings/datausage/DataUsagePreference;->sfTotalBytes:J

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Knox Usage is - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_0
    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 268
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usageLevel: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->data_usage_template:I

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    iget-object v6, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v8, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    invoke-static {v1, v8, v9, v8, v9}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v8, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    const-wide/16 v10, 0x1

    sub-long v12, v8, v10

    sub-long/2addr v8, v10

    invoke-static {v4, v12, v13, v8, v9}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v5

    .line 282
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v8, Lcom/android/settings/R$string;->sec_data_usage_summary_preference_cycle_label_tts:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object p1, v3, v7

    invoke-virtual {v0, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v7

    .line 281
    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mSummaryDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getDataUsageController()Lcom/android/settingslib/net/DataUsageController;
    .locals 1

    .line 251
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 5

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v2, "network_template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 221
    iget v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mSubId:I

    const-string/jumbo v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mIsRoaming:Z

    const-string v2, "is_roaming"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 226
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string/jumbo v4, "network_type"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/datausage/DataUsageList;

    .line 231
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 232
    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 235
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mIsRoaming:Z

    if-eqz v1, :cond_1

    .line 236
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->roaming_datauage_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    goto :goto_1

    .line 238
    :cond_1
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->app_cellular_data_usage:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    goto :goto_1

    .line 244
    :cond_2
    iget p0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 246
    :goto_1
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 287
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 288
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mSummaryDescription:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 2

    .line 106
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 107
    iput p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mSubId:I

    .line 110
    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    :try_start_0
    check-cast p1, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-virtual {p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getRoaming()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mIsRoaming:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "DataUsagePreference"

    const-string p2, "ClassCastException in DataUsagePreference"

    .line 116
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getDataUsageController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p1

    .line 125
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 126
    new-instance p2, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    .line 127
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->setStartTime(J)Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;

    move-result-object p2

    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    .line 128
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->setEndTime(J)Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 129
    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->setNetworkTemplate(Landroid/net/NetworkTemplate;)Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;

    move-result-object p2

    .line 130
    new-instance v0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;

    new-instance v1, Lcom/android/settings/datausage/DataUsagePreference$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/datausage/DataUsagePreference$1;-><init>(Lcom/android/settings/datausage/DataUsagePreference;Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;-><init>(Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;)V

    new-array p2, p3, [Landroid/net/NetworkTemplate;

    .line 140
    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 145
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsagePreference;->setSummaryAndDescription(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    .line 150
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 152
    iget-boolean p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mIsRoaming:Z

    if-eqz p2, :cond_3

    .line 153
    sget p2, Lcom/android/settings/R$string;->roaming_datauage_title:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_2

    .line 155
    :cond_3
    sget p2, Lcom/android/settings/R$string;->app_cellular_data_usage:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_2

    .line 163
    :cond_4
    iget p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 173
    :goto_2
    iget-wide p1, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_5

    .line 182
    new-instance p1, Lcom/android/settings/datausage/DataUsagePreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/DataUsagePreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datausage/DataUsagePreference;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 211
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 212
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_3
    return-void
.end method
