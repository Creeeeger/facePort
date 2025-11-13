.class public interface abstract Lcom/android/systemui/qs/dagger/QSFlagsModule;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static isPMLiteEnabled(Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/flags/Flags;->POWER_MENU_LITE:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "sysui_pm_lite"

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isReduceBrightColorsAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
