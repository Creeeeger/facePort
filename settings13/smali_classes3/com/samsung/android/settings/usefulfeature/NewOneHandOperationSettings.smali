.class public Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static SETTINGS_ADVANCEDFEATURE_ONEHANDOPERATION:I

.field private static final SETTINGS_URIS:[Landroid/net/Uri;


# instance fields
.field private mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mDoubleTapNum:I

.field private mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field mShowHardkey:Z

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreduceSizeBroadcast(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOneHandOperation(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->setOneHandOperation(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSwitchAndPreferenceState(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->updateSwitchAndPreferenceState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "any_screen_enabled"

    .line 102
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "navigation_bar_gesture_while_hidden"

    .line 103
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->SETTINGS_URIS:[Landroid/net/Uri;

    .line 411
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 106
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private SetImage()V
    .locals 3

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_handed_op_wakeup_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "onehandedmode_doubletap_dark.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "onehandedmode_doubletap.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "onehandedmode_swipe_dark.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "onehandedmode_swipe.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private initPreference()V
    .locals 3

    .line 202
    sget v0, Lcom/android/settings/R$xml;->sec_new_one_hand_operation_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    const-string v0, "onehand_mode_preview"

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    .line 206
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->onehand_settings_text_1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setDescText(Ljava/lang/String;)V

    const-string v0, "gesture_type"

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v0, "button_type"

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    sget v1, Lcom/android/settings/R$string;->onehand_settings_using_gesture_summary:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mShowHardkey:Z

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tab_launch"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mDoubleTapNum:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    sget v2, Lcom/android/settings/R$string;->onehand_settings_using_button_summary_doubletap:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 217
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mShowHardkey:Z

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    sget v2, Lcom/android/settings/R$string;->onehand_settings_using_button_summary:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    sget v2, Lcom/android/settings/R$string;->onehand_settings_using_button_summary_hardkey:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 225
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method private reduceSizeBroadcast(I)V
    .locals 2

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "is_enabled"

    .line 367
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private reduceSizeDisablePopup()V
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 327
    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 329
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    const v3, 0x1030132

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v2, "layout_inflater"

    .line 330
    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 331
    sget v2, Lcom/android/settings/R$layout;->sec_accessibility_exclusive_popup:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 332
    sget v1, Lcom/android/settings/R$id;->dialog_desc_string:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 333
    sget v2, Lcom/android/settings/R$id;->dialog_list_desc_string:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 334
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->onehand_settings_dialog_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->oneHandOperationDisablepopupMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->onehand_settings_dialog_title:I

    .line 338
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 339
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->ok:I

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V

    .line 340
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V

    .line 349
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V

    .line 355
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private setOneHandOperation(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 373
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "any_screen_enabled"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
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

    .line 377
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

    .line 378
    :goto_2
    iget-boolean v5, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mShowHardkey:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    .line 381
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->onehand_settings_change_gesture_by_navibar_toast:I

    invoke-static {p1, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 383
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_4

    move p0, v1

    goto :goto_3

    :cond_4
    move p0, v0

    :goto_3
    if-eqz p0, :cond_5

    if-eqz v2, :cond_5

    move v0, v1

    .line 384
    :cond_5
    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setOneHandModeKeyCustomizationInfo(Z)V

    return-void
.end method

.method private updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 5

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_handed_op_wakeup_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 252
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    .line 253
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 254
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setOneHandModeKeyCustomizationInfo(Z)V

    goto :goto_1

    .line 259
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-ne p1, v3, :cond_2

    .line 260
    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 261
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eq v0, v2, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "any_screen_enabled"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 265
    :goto_0
    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setOneHandModeKeyCustomizationInfo(Z)V

    .line 268
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->SetImage()V

    return-void
.end method

.method private updateSwitchAndPreferenceState()V
    .locals 4

    .line 229
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

    .line 230
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v3, :cond_4

    .line 231
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    move v0, v2

    goto :goto_1

    .line 235
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 237
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 238
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 240
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 242
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    .line 243
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "navigation_bar_gesture_while_hidden"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    .line 247
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "one_handed_op_wakeup_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 123
    sget p0, Lcom/android/settings/R$string;->onehand_settings_title:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 128
    const-class p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1100

    .line 117
    sput p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->SETTINGS_ADVANCEDFEATURE_ONEHANDOPERATION:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_advanced_features"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 146
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 147
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->initPreference()V

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->updateSwitchAndPreferenceState()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->initPreference()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 389
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 390
    sget v1, Lcom/android/settings/R$string;->help_title:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 391
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 393
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 186
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 189
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 398
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 400
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "helphub:section"

    const-string v2, "one_handed_operation"

    .line 401
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 405
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 408
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 176
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 1

    .line 320
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getMetricsCategory()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1000"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const/16 p1, 0x1102

    invoke-static {v0, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 164
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->updateSwitchAndPreferenceState()V

    .line 169
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->SETTINGS_URIS:[Landroid/net/Uri;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 170
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v4, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    .line 293
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 296
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 298
    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v0, v1, :cond_1

    .line 299
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "any_screen_enabled"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->onehand_settings_cover_toast:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 304
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isReadyOneHandedOperationStatusEnable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->reduceSizeDisablePopup()V

    goto :goto_0

    .line 307
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->setOneHandOperation(I)V

    .line 308
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    goto :goto_0

    .line 311
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->setOneHandOperation(I)V

    .line 312
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1101

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 152
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_end:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 157
    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    .line 159
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
