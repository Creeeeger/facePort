.class public Lcom/android/settings/datetime/TimeZonePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimeZonePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mAutoTimeZonePreferenceController:Lcom/android/settings/datetime/AutoTimeZonePreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/AutoTimeZonePreferenceController;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mAutoTimeZonePreferenceController:Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "timezone"

    return-object p0
.end method

.method getTimeZoneOffsetAndName()Ljava/lang/CharSequence;
    .locals 2

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 81
    invoke-static {p0, v1, v0}, Lcom/android/settingslib/datetime/ZoneGetter;->getTimeZoneOffsetAndName(Landroid/content/Context;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mAutoTimeZonePreferenceController:Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 49
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datetime/TimeZonePreferenceController;->getTimeZoneOffsetAndName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->applyEDMDateTimeChangePolicy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mAutoTimeZonePreferenceController:Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->isEnabled()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/datetime/TimeZonePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
