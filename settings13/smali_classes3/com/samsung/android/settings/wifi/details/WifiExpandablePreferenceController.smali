.class public Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiExpandablePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;
    }
.end annotation


# instance fields
.field private mAdvancedPref:Landroidx/preference/PreferenceCategory;

.field private mExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

.field private mExpanded:Z

.field private mExpanderPref:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;

.field private final mSAScreenId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanded:Z

    .line 52
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanderPref:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;

    .line 59
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "advanced"

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mAdvancedPref:Landroidx/preference/PreferenceCategory;

    .line 62
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanded:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "expander"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanded:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 77
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v0, "1025"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanded:Z

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanderPref:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;

    xor-int v1, p1, p1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mAdvancedPref:Landroidx/preference/PreferenceCategory;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanded:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    if-eqz p0, :cond_0

    .line 84
    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;->onSpread()V

    :cond_0
    return p1
.end method

.method public setOnWifiExpandListener(Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    return-void
.end method
