.class public Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;
.super Lcom/samsung/android/settings/usefulfeature/controller/SecMotionAndGestureBaseController;
.source "OneHandedModePreferenceController.java"


# static fields
.field private static final MODE_ON:I = 0x1


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mPreference:Landroidx/preference/SecSwitchPreferenceScreen;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdismissAllDialog(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->dismissAllDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOneHandOperation(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->setOneHandOperation(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/controller/SecMotionAndGestureBaseController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private dismissAllDialog()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private makeOneHandOperationDisablePopup()V
    .locals 5

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->dismissAllDialog()V

    .line 163
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x1030132

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v1, "layout_inflater"

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 165
    sget v1, Lcom/android/settings/R$layout;->sec_accessibility_exclusive_popup:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 166
    sget v1, Lcom/android/settings/R$id;->dialog_desc_string:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 167
    sget v2, Lcom/android/settings/R$id;->dialog_list_desc_string:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 168
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->onehand_settings_dialog_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->oneHandOperationDisablepopupMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->onehand_settings_dialog_title:I

    .line 172
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->ok:I

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$3;-><init>(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;)V

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$2;-><init>(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;)V

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController$1;-><init>(Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;)V

    .line 187
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private setOneHandOperation(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 205
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "any_screen_enabled"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "one_handed_op_wakeup_type"

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 209
    :goto_1
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigation_bar_gesture_while_hidden"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    .line 210
    :goto_2
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11101b5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    .line 212
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->onehand_settings_change_gesture_by_navibar_toast:I

    invoke-static {p1, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 215
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

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

    .line 216
    :cond_5
    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setOneHandModeKeyCustomizationInfo(Z)V

    return-void
.end method

.method private updatePreferenceSummary()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_handed_op_wakeup_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 153
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v2, :cond_1

    sget v0, Lcom/android/settings/R$string;->onehand_settings_using_button:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/settings/R$string;->onehand_settings_using_gesture:I

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 155
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isVisibleOneHandOperation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 97
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    const/16 v0, 0x4d

    if-ne p0, v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 122
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    .line 123
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x1100

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->onehand_settings_title:I

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v0, 0x10008000

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 46
    sget p0, Lcom/android/settings/R$string;->menu_key_advanced_features:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUriListRequiringObservation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "any_screen_enabled"

    .line 144
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "any_screen_enabled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-ne p1, v1, :cond_3

    .line 65
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 67
    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 72
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 73
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->onehand_settings_cover_toast:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isReadyOneHandedOperationStatusEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->makeOneHandOperationDisablePopup()V

    return v2

    .line 79
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->setOneHandOperation(I)V

    goto :goto_1

    .line 82
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->setOneHandOperation(I)V

    goto :goto_1

    .line 86
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->setOneHandOperation(I)V

    :goto_1
    return v1
.end method

.method public updatePreference()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/OneHandedModePreferenceController;->updatePreferenceSummary()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
