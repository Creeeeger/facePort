.class public final Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final mEffect:I

.field public final mKey:Ljava/lang/String;

.field public final mMetricsCategory:I

.field public final mParentSuppressedEffects:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mEffect:I

    iput p5, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mMetricsCategory:I

    iput-object p6, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget p0, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mEffect:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportLedIndicator()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v0, p2, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mEffect:I

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mMetricsCategory:I

    invoke-virtual {v0, v3, p0, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v1, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveVisualEffectsPolicy(IZ)V

    :cond_1
    return v2
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v1, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v2, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mEffect:I

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    if-eqz v4, :cond_2

    array-length v5, v4

    move v6, v2

    move v7, v6

    :goto_1
    if-ge v6, v5, :cond_3

    aget v8, v4, v6

    iget-object v9, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v9, v9, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1

    move v8, v3

    goto :goto_2

    :cond_1
    move v8, v2

    :goto_2
    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v7, v2

    :cond_3
    if-eqz v7, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_4
    check-cast p1, Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    return-void
.end method
