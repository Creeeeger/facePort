.class public Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;
.super Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;
.source "SecInputMethodPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mHasPriorityInSorting:Z

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

.field private final mIsAllowedByOrganization:Z

.field private final mOnSaveListener:Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;

.field private final mUserId:I

.field private mWidgetFrameVisible:Z


# direct methods
.method public static synthetic $r8$lambda$3688991sM6xYol-eU3KuEnSt1P8(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->lambda$showSecurityWarnDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$H7OcjclDf46JtnB5ZeHVncgUNlk(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->lambda$showSecurityWarnDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R02uUSZfDqpih19aSK-NRDcQ7eA(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->lambda$showDirectBootWarnDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$b9TcyuhPxMm-NVFW635wE6yEfBI(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->lambda$showDirectBootWarnDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fFvSuY8_H5ASFZ_g3U7qGfw9uK0(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->lambda$showSecurityWarnDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;ZLcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;I)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 116
    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 117
    iput-boolean p4, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mIsAllowedByOrganization:Z

    .line 118
    iput-object p5, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mOnSaveListener:Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;

    if-nez p5, :cond_0

    .line 121
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 124
    :cond_0
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p3

    .line 127
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 128
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :cond_1
    new-instance p4, Landroid/content/Intent;

    const-string p5, "android.intent.action.MAIN"

    invoke-direct {p4, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "from_settings"

    .line 134
    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 140
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    if-ne p6, p3, :cond_2

    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    .line 142
    :goto_1
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 143
    iput p6, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mUserId:I

    .line 144
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 145
    invoke-static {p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->isValidNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mHasPriorityInSorting:Z

    .line 146
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZLcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;I)V
    .locals 8

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;ZLcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;I)V

    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 303
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 3

    .line 307
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 310
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 309
    invoke-static {v0, v1, p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isTv()Z
    .locals 1

    .line 354
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showDirectBootWarnDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 366
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private synthetic lambda$showDirectBootWarnDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 368
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private synthetic lambda$showSecurityWarnDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 335
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->isTv()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 336
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->setCheckedInternal(Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$showSecurityWarnDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 343
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private synthetic lambda$showSecurityWarnDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 347
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private setCheckedInternal(Z)V
    .locals 0

    .line 314
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 315
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mOnSaveListener:Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;)V

    .line 316
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method private setWidgetFrameVisible(Z)V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    if-eq v0, p1, :cond_0

    .line 157
    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    .line 158
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method private shouldAlwaysCheckIME(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 2

    .line 295
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 296
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.accessibility.talkback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showDirectBootWarnDialog()V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 363
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 364
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 365
    sget v2, Lcom/android/settingslib/R$string;->direct_boot_unaware_dialog_message:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 366
    new-instance v2, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 367
    new-instance v2, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 369
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 370
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSecurityWarnDialog()V
    .locals 6

    .line 320
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 323
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 324
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 325
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x1040014

    .line 326
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 327
    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 328
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 327
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 329
    sget v4, Lcom/android/settingslib/R$string;->ime_security_warning:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 330
    new-instance v2, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 341
    new-instance v2, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 345
    new-instance v0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 349
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 350
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 165
    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020040

    .line 167
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 168
    sget v1, Lcom/android/settingslib/R$id;->switch_divider_normal:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020010

    .line 169
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 171
    iget-boolean v4, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mOnSaveListener:Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v1, :cond_3

    .line 174
    iget-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mOnSaveListener:Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_4

    const/4 p0, 0x5

    .line 177
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_4
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mOnSaveListener:Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 215
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 217
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->setCheckedInternal(Z)V

    return p2

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 225
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->isTv()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 227
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->isTv()Z

    move-result p1

    if-nez p1, :cond_5

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 226
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->setCheckedInternal(Z)V

    goto :goto_1

    .line 233
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->showSecurityWarnDialog()V

    :cond_5
    :goto_1
    return p2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 242
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    .line 244
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
    iget v2, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 250
    sget-object v2, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->TAG:Ljava/lang/String;

    const-string v3, "IME\'s Settings Activity Not Found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    sget v1, Lcom/android/settingslib/R$string;->failed_to_open_app_settings_toast:I

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v2, v3

    .line 251
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 254
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return v0
.end method

.method public updatePreferenceViews()V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 267
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->shouldAlwaysCheckIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mIsAllowedByOrganization:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 277
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mUserId:I

    .line 276
    invoke-static {v0, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 278
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 279
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->setWidgetFrameVisible(Z)V

    goto :goto_1

    .line 284
    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->setWidgetFrameVisible(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 v0, 0x0

    .line 272
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->setWidgetFrameVisible(Z)V

    .line 287
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
