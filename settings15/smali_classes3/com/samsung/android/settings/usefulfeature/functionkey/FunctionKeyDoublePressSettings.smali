.class public Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;
.super Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final FUNC_KEY_DOUBLE_PRESS_OPEN_APP_TYPE:Landroid/net/Uri;

.field public final FUNC_KEY_DOUBLE_PRESS_SWITCH:Landroid/net/Uri;

.field public final FUNC_KEY_DOUBLE_PRESS_TYPE:Landroid/net/Uri;

.field public mAllDisabledDialog:Landroid/app/AlertDialog;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;-><init>()V

    const-string v0, "function_key_config_doublepress"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->FUNC_KEY_DOUBLE_PRESS_SWITCH:Landroid/net/Uri;

    const-string v0, "function_key_config_doublepress_type"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->FUNC_KEY_DOUBLE_PRESS_TYPE:Landroid/net/Uri;

    const-string v0, "function_key_config_doublepress_value"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->FUNC_KEY_DOUBLE_PRESS_OPEN_APP_TYPE:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1dc4

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "function_key_config_doublepress"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    :cond_1
    return-void
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

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 p1, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "pwrkey_owner_status"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lcd_curtain"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    if-nez p2, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->setFuncKeyDoublePress(Z)V

    goto/16 :goto_4

    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_5

    move p1, v1

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f142fd5

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f142fe7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f140b40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f14243e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;Z)V

    const p1, 0x7f142fd0    # 1.96974E38f

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;)V

    const v0, 0x7f1408bf

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance p2, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_4

    :cond_7
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->setFuncKeyDoublePress(Z)V

    :goto_4
    return-void
.end method

.method public final onCheckedChanged(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mSelectedKey:Ljava/lang/String;

    const-string v2, "function_key_config_doublepress_selected_item"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mFunctionKeyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;

    if-eqz v0, :cond_0

    const/16 v1, 0x1dc4

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    invoke-static {v1, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    :cond_0
    instance-of v1, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils;->getFunctionKeyAction(Landroid/content/Context;Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyApplication;)Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;IZ)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->onCheckedChanged(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f14243d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mControllersHandler:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "function_key_config_doublepress_selected_item"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mSelectedKey:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->updateStates(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->FUNC_KEY_DOUBLE_PRESS_SWITCH:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;->mUris:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->FUNC_KEY_DOUBLE_PRESS_TYPE:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;->mUris:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->FUNC_KEY_DOUBLE_PRESS_OPEN_APP_TYPE:Landroid/net/Uri;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;->mUris:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mControllersHandler:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "function_key_config_doublepress_selected_item"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mSelectedKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->updateStates(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->updateUI$2()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public final setFuncKeyDoublePress(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "function_key_config_doublepress"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->updateUI$2()V

    const/16 p0, 0x1dc4

    const/16 v0, 0x1dbe

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method

.method public final updateUI$2()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const-string v1, "function_key_config_doublepress"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/16 v4, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
