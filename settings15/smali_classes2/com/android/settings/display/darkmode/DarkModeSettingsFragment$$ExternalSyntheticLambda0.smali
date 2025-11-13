.class public final synthetic Lcom/android/settings/display/darkmode/DarkModeSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;

    sget-object v0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->mCustomStartController:Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->mCustomEndController:Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
