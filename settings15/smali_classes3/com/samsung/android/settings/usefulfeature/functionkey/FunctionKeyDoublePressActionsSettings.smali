.class public Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressActionsSettings;
.super Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressActionsSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mSelectedKey:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->onCheckedChanged(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "function_key_config_doublepress_selected_actions"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressActionsSettings$1;

    invoke-direct {v1}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mApplicationKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mControllersHandler:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mSelectedKey:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->updateStates(Z)V

    :cond_1
    return-void
.end method
