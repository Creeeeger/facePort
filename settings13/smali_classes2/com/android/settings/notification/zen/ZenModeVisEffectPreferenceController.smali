.class public Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeVisEffectPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field protected final mEffect:I

.field protected final mKey:Ljava/lang/String;

.field protected final mMetricsCategory:I

.field protected final mParentSuppressedEffects:[I

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 49
    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mEffect:I

    .line 51
    iput p5, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mMetricsCategory:I

    .line 52
    iput-object p6, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x8cc7

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 62
    iget p0, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mEffect:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    .line 64
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportLedIndicator()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 118
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 120
    iget-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget v0, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mEffect:I

    invoke-virtual {p2, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->isVisualEffectSuppressed(I)Z

    move-result p2

    if-eq p2, p1, :cond_0

    .line 121
    iget-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mMetricsCategory:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 122
    iget-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget v0, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mEffect:I

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveVisualEffectsPolicy(IZ)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "zen_effect_intent"

    if-ne p2, v4, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->getMetricsCategory()I

    move-result p2

    const v4, 0x8ddb

    if-eqz p1, :cond_1

    move-wide v5, v0

    goto :goto_0

    :cond_1
    move-wide v5, v2

    :goto_0
    invoke-static {p2, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v4, "zen_effect_light"

    if-ne p2, v4, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->getMetricsCategory()I

    move-result p2

    const v4, 0x8ddc

    if-eqz p1, :cond_3

    move-wide v5, v0

    goto :goto_1

    :cond_3
    move-wide v5, v2

    :goto_1
    invoke-static {p2, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 133
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v4, "zen_effect_badge"

    if-ne p2, v4, :cond_6

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->getMetricsCategory()I

    move-result p2

    const v4, 0x8ddd

    if-eqz p1, :cond_5

    move-wide v5, v0

    goto :goto_2

    :cond_5
    move-wide v5, v2

    :goto_2
    invoke-static {p2, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 136
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v4, "zen_effect_list"

    if-ne p2, v4, :cond_8

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->getMetricsCategory()I

    move-result p2

    const v4, 0x8dde

    if-eqz p1, :cond_7

    move-wide v5, v0

    goto :goto_3

    :cond_7
    move-wide v5, v2

    :goto_3
    invoke-static {p2, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 139
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v4, "zen_effect_peek"

    if-ne p2, v4, :cond_a

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->getMetricsCategory()I

    move-result p2

    const v4, 0x8ddf

    if-eqz p1, :cond_9

    move-wide v5, v0

    goto :goto_4

    :cond_9
    move-wide v5, v2

    :goto_4
    invoke-static {p2, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 142
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v4, "zen_effect_status"

    if-ne p2, v4, :cond_c

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->getMetricsCategory()I

    move-result p0

    const p2, 0x8de0

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    move-wide v0, v2

    :goto_5
    invoke-static {p0, p2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 8

    .line 86
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mEffect:I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/zen/ZenModeBackend;->isVisualEffectSuppressed(I)Z

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 90
    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    aget v6, v1, v4

    .line 91
    iget-object v7, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/zen/ZenModeBackend;->isVisualEffectSuppressed(I)Z

    move-result v6

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v5, v2

    :cond_1
    if-eqz v5, :cond_2

    .line 96
    move-object v0, p1

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 97
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 100
    :cond_2
    check-cast p1, Landroidx/preference/SecSwitchPreference;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 101
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    return-void
.end method
