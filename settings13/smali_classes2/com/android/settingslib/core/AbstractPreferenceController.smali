.class public abstract Lcom/android/settingslib/core/AbstractPreferenceController;
.super Ljava/lang/Object;
.source "AbstractPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractPrefController"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public static synthetic $r8$lambda$Onhuvg_nQKK6yy72gGIfpueik60(Lcom/android/settingslib/core/AbstractPreferenceController;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->lambda$replaceEnterpriseStringTitle$2(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k-rORTAGh0E66U3dCTSQ1d90nMQ(Lcom/android/settingslib/core/AbstractPreferenceController;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->lambda$replaceEnterpriseStringSummary$3(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p0BM-NiJsbnyKQ7CeKoycK3G8UI(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->lambda$refreshSummary$0(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tr7t8GH1M6BVwBTzpH7pNodv_BE(Lcom/android/settingslib/core/AbstractPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->lambda$refreshSummary$1(Landroidx/preference/Preference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method private findAndRemovePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5

    .line 184
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 186
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 187
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 189
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 193
    :cond_0
    instance-of v4, v3, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    .line 194
    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->findAndRemovePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static synthetic lambda$refreshSummary$0(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$refreshSummary$1(Landroidx/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 82
    new-instance v0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda1;-><init>(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$replaceEnterpriseStringSummary$3(I)Ljava/lang/String;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$replaceEnterpriseStringTitle$2(I)Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping displayPreference because key is empty:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AbstractPrefController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 51
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 52
    instance-of v1, p0, Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v1, :cond_2

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 57
    check-cast p0, Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract getPreferenceKey()Ljava/lang/String;
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSummaryOnBackground()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isAvailable()Z
.end method

.method protected refreshSummary(Landroidx/preference/Preference;)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummaryOnBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/core/AbstractPreferenceController;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 97
    :cond_2
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected final removePreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->findAndRemovePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void
.end method

.method protected replaceEnterpriseStringSummary(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 162
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not find enterprise preference "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AbstractPrefController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 172
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 173
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    new-instance v0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p4}, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/core/AbstractPreferenceController;I)V

    invoke-virtual {p2, p3, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected replaceEnterpriseStringTitle(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 144
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not find enterprise preference "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AbstractPrefController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 155
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    new-instance v0, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p4}, Lcom/android/settingslib/core/AbstractPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settingslib/core/AbstractPreferenceController;I)V

    invoke-virtual {p2, p3, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected final setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .locals 0

    .line 127
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method
