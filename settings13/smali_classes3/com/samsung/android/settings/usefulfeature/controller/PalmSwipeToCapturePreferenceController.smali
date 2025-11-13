.class public Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;
.super Lcom/samsung/android/settings/usefulfeature/controller/SecMotionAndGestureBaseController;
.source "PalmSwipeToCapturePreferenceController.java"


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mPreference:Landroidx/preference/SecSwitchPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdismissAllDialog(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->dismissAllDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetParmSwipeToCapture(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->setParmSwipeToCapture(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/controller/SecMotionAndGestureBaseController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private dismissAllDialog()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private isScreenCaptureEnabled()Z
    .locals 5

    .line 144
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "false"

    .line 146
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isScreenCaptureEnabled"

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 153
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "access_control_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 162
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 165
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    .line 166
    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 168
    iget p0, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne p0, v2, :cond_2

    .line 169
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 173
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private makeTalkBackDisablePopup()V
    .locals 7

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->dismissAllDialog()V

    .line 214
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->palm_swipe_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->turn_off_va_dialog_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 218
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->change_popup_msg:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    aput-object v1, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 221
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->turn_off_button:I

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$5;-><init>(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)V

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$4;-><init>(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)V

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 235
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$6;-><init>(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 245
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private maketurnOffUniversalPopup()V
    .locals 7

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->dismissAllDialog()V

    .line 179
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->palm_swipe_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->turn_off_va_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->accessibility_toggle_universal_input_preference_title:I

    .line 181
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 180
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->change_popup_msg:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 182
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 185
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->turn_off_button:I

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$2;-><init>(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)V

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$1;-><init>(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)V

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 199
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$3;-><init>(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 209
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private setParmSwipeToCapture(Z)V
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "surface_palm_swipe"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 p0, 0x1db4

    const/16 v0, 0x1112

    .line 83
    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 92
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISABLED_MENU_K05"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->isScreenCaptureEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    return v3
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
    .locals 3

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    .line 122
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v1, 0x1db4

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->motion_and_gesture_title:I

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

    .line 259
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "access_control_enabled"

    .line 261
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "surface_palm_swipe"

    .line 262
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
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->isScreenCaptureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "surface_palm_swipe"

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

    .line 103
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

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->maketurnOffUniversalPopup()V

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x18894

    if-ge v1, v2, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->makeTalkBackDisablePopup()V

    return v0

    .line 70
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->setParmSwipeToCapture(Z)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->setParmSwipeToCapture(Z)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updatePreference()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->isScreenCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
