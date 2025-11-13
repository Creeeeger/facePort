.class public Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SETTINGS_URIS:[Landroid/net/Uri;


# instance fields
.field public mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mDoubleTapNum:I

.field public mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

.field public final mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$1;

.field public mShowHardkey:Z

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "any_screen_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "navigation_bar_gesture_while_hidden"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->SETTINGS_URIS:[Landroid/net/Uri;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$5;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$1;

    return-void
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f141b6a

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1100

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_advanced_features"

    return-object p0
.end method

.method public final initPreference$7$1()V
    .locals 3

    const v0, 0x7f1701cd

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    const-string v0, "onehand_mode_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f141b69

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setDescText(Ljava/lang/String;)V

    const-string v0, "gesture_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v0, "button_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    iput-object p0, v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    const v0, 0x7f141b71

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v0, v1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "any_screen_enabled"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f141b65

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isReadyOneHandedOperationStatusEnable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    :cond_2
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x1030132

    invoke-direct {p1, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v1, 0x7f0d07de

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x7f0a0516

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0519

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v3, 0x7f141b66

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->oneHandOperationDisablepopupMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f141b67

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;I)V

    const v1, 0x7f141b4b

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;I)V

    const v1, 0x7f1408bf

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->setOneHandOperation(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->setOneHandOperation(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    :goto_0
    const/16 p0, 0x1101

    const/16 p1, 0x1100

    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_5
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->initPreference$7$1()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->updateSwitchAndPreferenceState$1()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->initPreference$7$1()V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f141139

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "helphub:section"

    const-string v2, "one_handed_operation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->updateRadioButtons$3(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1000"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const/16 p1, 0x1102

    const/16 v0, 0x1100

    invoke-static {v0, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->updateSwitchAndPreferenceState$1()V

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->SETTINGS_URIS:[Landroid/net/Uri;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$1;

    invoke-virtual {v5, v4, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070dd7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070dd9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p2, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070dd6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    add-float/2addr p1, p2

    float-to-int p1, p1

    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080a92

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, p1, v1, v0}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(ILandroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final reduceSizeBroadcast(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "is_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final setOneHandOperation(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "any_screen_enabled"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "one_handed_op_wakeup_type"

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigation_bar_gesture_while_hidden"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    iget-boolean v5, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mShowHardkey:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->updateRadioButtons$3(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v4, 0x7f141b64

    invoke-static {p1, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_4

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setOneHandModeKeyCustomizationInfo(Z)V

    return-void
.end method

.method public final updateRadioButtons$3(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_handed_op_wakeup_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setOneHandModeKeyCustomizationInfo(Z)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-ne p1, v3, :cond_2

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "any_screen_enabled"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setOneHandModeKeyCustomizationInfo(Z)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string p1, "onehandedmode_doubletap_dark.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string p1, "onehandedmode_doubletap.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "navigation_bar_gesture_while_hidden"

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string p1, "onehandedmode_swipe_gesture_hint_dark.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string p1, "onehandedmode_swipe_dark.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_8

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string p1, "onehandedmode_swipe_gesture_hint_light.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string p1, "onehandedmode_swipe.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final updateSwitchAndPreferenceState$1()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110226

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mShowHardkey:Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "double_tab_launch"

    const/4 v4, 0x3

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mDoubleTapNum:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "navigation_bar_gesture_while_hidden"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v4, 0x7f141b68

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mDoubleTapNum:I

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v4, 0x7f141b6d

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mShowHardkey:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v4, 0x7f141b6c

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v4, 0x7f141b6e

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "one_handed_op_wakeup_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->updateRadioButtons$3(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    return-void
.end method
