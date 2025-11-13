.class public Lcom/android/settings/datausage/TemplatePreferenceCategory;
.super Landroidx/preference/SecPreferenceCategory;
.source "TemplatePreferenceCategory.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field private mIsPrimary:Z

.field private mIsRoaming:Z

.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsPrimary:Z

    .line 45
    iput-boolean p1, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsRoaming:Z

    return-void
.end method

.method private updateMDOPreferenceStatus(Z)V
    .locals 2

    const-string/jumbo v0, "mobile_data_only"

    .line 139
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    move-result-object v1

    if-nez p1, :cond_0

    .line 142
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->isMDODimmed(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 143
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_datausage_mdo_summary:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/Preference;)Z
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public getRoaming()Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsRoaming:Z

    return p0
.end method

.method public pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 4

    const/4 v0, 0x0

    .line 77
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 79
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/datausage/TemplatePreference;

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/TemplatePreference;

    iget-object v2, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    iget v3, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mSubId:I

    invoke-interface {v1, v2, v3, p1}, Lcom/android/settings/datausage/TemplatePreference;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeMobileDataPreference()V
    .locals 1

    const-string v0, "data_usage_enable"

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string v0, "confirm_at_boot"

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    return-void
.end method

.method public removePreference(Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public setPrimary(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsPrimary:Z

    return-void
.end method

.method public setRoaming(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsRoaming:Z

    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    .line 57
    iput p2, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mSubId:I

    return-void
.end method

.method public setVolteCallState(Z)V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsPrimary:Z

    if-eqz v0, :cond_0

    const-string v0, "data_usage_enable"

    .line 127
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/CellDataPreference;

    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setVolteCallState(Z)V

    :cond_0
    return-void
.end method

.method public updateMobileCategory()V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsPrimary:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removeMobileDataPreference()V

    const-string/jumbo v0, "mobile_data_only"

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateMobileCategoryUI(Z)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMDOPreferenceStatus(Z)V

    return-void
.end method
