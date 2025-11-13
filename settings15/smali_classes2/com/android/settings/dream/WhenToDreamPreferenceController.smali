.class public final Lcom/android/settings/dream/WhenToDreamPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public final mBackend:Lcom/android/settingslib/dream/DreamBackend;

.field public final mDreamsDisabledByAmbientModeSuppression:Z

.field public final mDreamsEnabledOnBattery:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    iput-boolean p2, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mDreamsDisabledByAmbientModeSuppression:Z

    iput-boolean p3, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mDreamsEnabledOnBattery:Z

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "when_to_start"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-boolean v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mDreamsDisabledByAmbientModeSuppression:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->isAodSuppressedByBedtime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f142047

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->getWhenToDreamSetting()I

    move-result v0

    sget-object v1, Lcom/android/settings/dream/DreamSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const p0, 0x7f142040

    goto :goto_0

    :cond_1
    const p0, 0x7f14203f

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;->mDreamsEnabledOnBattery:Z

    if-eqz p0, :cond_3

    const p0, 0x7f14203d

    goto :goto_0

    :cond_3
    const p0, 0x7f14203e

    goto :goto_0

    :cond_4
    const p0, 0x7f142043

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    return-void
.end method
