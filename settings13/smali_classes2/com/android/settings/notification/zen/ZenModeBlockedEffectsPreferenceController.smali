.class public Lcom/android/settings/notification/zen/ZenModeBlockedEffectsPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeBlockedEffectsPreferenceController.java"


# instance fields
.field private final mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_mode_block_effects_settings"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsPreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getBlockedEffectsSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
