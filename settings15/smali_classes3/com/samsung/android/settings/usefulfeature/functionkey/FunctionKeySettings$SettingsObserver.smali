.class public final Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final FUNC_KEY_DOUBLE_PRESS_OPEN_APP_TYPE:Landroid/net/Uri;

.field public final FUNC_KEY_DOUBLE_PRESS_SWITCH:Landroid/net/Uri;

.field public final FUNC_KEY_DOUBLE_PRESS_TYPE:Landroid/net/Uri;

.field public final FUNC_KEY_LONG_PRESS_TYPE:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "function_key_config_doublepress"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;->FUNC_KEY_DOUBLE_PRESS_SWITCH:Landroid/net/Uri;

    const-string p1, "function_key_config_doublepress_type"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;->FUNC_KEY_DOUBLE_PRESS_TYPE:Landroid/net/Uri;

    const-string p1, "function_key_config_doublepress_value"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;->FUNC_KEY_DOUBLE_PRESS_OPEN_APP_TYPE:Landroid/net/Uri;

    const-string p1, "function_key_config_longpress_type"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;->FUNC_KEY_LONG_PRESS_TYPE:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;

    sget-object p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;->FUNC_KEY_DOUBLE_PRESS_SWITCH:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;->FUNC_KEY_DOUBLE_PRESS_TYPE:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;->FUNC_KEY_DOUBLE_PRESS_OPEN_APP_TYPE:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeySettings$SettingsObserver;->FUNC_KEY_LONG_PRESS_TYPE:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
