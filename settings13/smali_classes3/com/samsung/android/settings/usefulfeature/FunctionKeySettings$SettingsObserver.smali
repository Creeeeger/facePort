.class final Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "FunctionKeySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final FUNC_KEY_DOUBLE_PRESS_OPEN_APP_TYPE:Landroid/net/Uri;

.field private final FUNC_KEY_DOUBLE_PRESS_SWITCH:Landroid/net/Uri;

.field private final FUNC_KEY_DOUBLE_PRESS_TYPE:Landroid/net/Uri;

.field private final FUNC_KEY_LONG_PRESS_TYPE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;Landroid/os/Handler;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    .line 620
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "function_key_config_doublepress"

    .line 614
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->FUNC_KEY_DOUBLE_PRESS_SWITCH:Landroid/net/Uri;

    const-string p1, "function_key_config_doublepress_type"

    .line 615
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->FUNC_KEY_DOUBLE_PRESS_TYPE:Landroid/net/Uri;

    const-string p1, "function_key_config_doublepress_value"

    .line 616
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->FUNC_KEY_DOUBLE_PRESS_OPEN_APP_TYPE:Landroid/net/Uri;

    const-string p1, "function_key_config_longpress_type"

    .line 617
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->FUNC_KEY_LONG_PRESS_TYPE:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 625
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->-$$Nest$mupdateFuncKeyDoublePressPreferences(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)V

    .line 626
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->-$$Nest$mupdateFuncKeyDoublePressTypePreferences(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)V

    .line 627
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->-$$Nest$mupdateFuncKeyLongPressTypePreferences(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->access$200(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 633
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->FUNC_KEY_DOUBLE_PRESS_SWITCH:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 634
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->FUNC_KEY_DOUBLE_PRESS_TYPE:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 635
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->FUNC_KEY_DOUBLE_PRESS_OPEN_APP_TYPE:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 636
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$SettingsObserver;->FUNC_KEY_LONG_PRESS_TYPE:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 638
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
