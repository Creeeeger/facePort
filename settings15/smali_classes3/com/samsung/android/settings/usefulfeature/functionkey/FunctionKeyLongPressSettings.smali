.class public Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings;
.super Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final FUNC_KEY_LONG_PRESS_TYPE:Landroid/net/Uri;

.field public mIsFOTASetUpWizard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings;->mIsFOTASetUpWizard:Z

    const-string v0, "function_key_config_longpress_type"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings;->FUNC_KEY_LONG_PRESS_TYPE:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9

    invoke-super {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "fota_suw"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings;->mIsFOTASetUpWizard:Z

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAiAgentPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/AiAgentAppAction;->create(Landroid/content/Context;)Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    move-result-object v6

    iget-boolean v8, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings;->mIsFOTASetUpWizard:Z

    const-string v5, "long_press_ai_agent_app"

    move-object v3, v1

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAiAgentPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;Landroidx/fragment/app/Fragment;Z)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1dcc

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "pressType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public final onCheckedChanged(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mSelectedKey:Ljava/lang/String;

    const-string v2, "function_key_config_longpress_selected_item"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mFunctionKeyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;

    instance-of v1, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    const-string v3, "LongPress"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "long_press_ai_agent_app"

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "DigitalAssistantApp"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings;->mIsFOTASetUpWizard:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "LP003"

    const-string v3, "LP0003"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1dcc

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;IZ)V

    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->onCheckedChanged(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "fota_suw"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings;->mIsFOTASetUpWizard:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings;->mIsFOTASetUpWizard:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->enableAutoFlowLogging(Z)V

    const-string v0, "LP003"

    invoke-static {v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    const/16 v2, 0x2328

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f142440

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mControllersHandler:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "function_key_config_longpress_selected_item"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->updateStates(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyLongPressSettings;->FUNC_KEY_LONG_PRESS_TYPE:Landroid/net/Uri;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;->mUris:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mControllersHandler:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "function_key_config_longpress_selected_item"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mSelectedKey:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->updateStates(Z)V

    return-void
.end method
