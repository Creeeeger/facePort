.class public Lcom/android/settings/notification/zen/LifeStyleZenModeEnableNowPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "LifeStyleZenModeEnableNowPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mFragment:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string/jumbo v0, "zen_mode_settings_category_behavior"

    .line 20
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 21
    iput-object p3, p0, Lcom/android/settings/notification/zen/LifeStyleZenModeEnableNowPreferenceController;->mFragment:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_mode_settings_category_behavior"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
