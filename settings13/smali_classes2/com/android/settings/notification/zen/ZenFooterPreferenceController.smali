.class public Lcom/android/settings/notification/zen/ZenFooterPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenFooterPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->secAreAnyScreenOffEffectsSuppressed(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 51
    invoke-static {p0}, Landroid/app/NotificationManager$Policy;->secAreAnyScreenOnEffectsSuppressed(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 52
    sget p0, Lcom/android/settings/R$string;->zen_mode_restrict_notifications_mute_footer:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 54
    :cond_0
    sget p0, Lcom/android/settings/R$string;->zen_mode_blocked_effects_footer:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_0
    return-void
.end method
