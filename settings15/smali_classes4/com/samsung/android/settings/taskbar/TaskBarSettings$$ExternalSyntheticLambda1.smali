.class public final synthetic Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/taskbar/TaskBarSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/taskbar/TaskBarSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/taskbar/TaskBarSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    sget-object p1, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/taskbar/TaskBarSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Recent app Switch is clicked to -> "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TaskBarSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "taskbar_recent_apps_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->recentAppSwitch:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->updateRecentAppsPreferenceSummary(Landroidx/preference/SecSwitchPreferenceScreen;)V

    const/4 p0, 0x1

    return p0
.end method
