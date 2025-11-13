.class public Lcom/android/settingslib/inputmethod/InputMethodPreference;
.super Lcom/android/settingslib/PrimarySwitchPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;
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

.field private final mOnSaveListener:Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$0_9zEqRVJVEplw5TXPGT29nOWT4(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->lambda$showSecurityWarnDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8LqlIWHaJG25N3e0c20FnMxZOOU(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->lambda$showSecurityWarnDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J1GSVJvm4EodF9Wjvn5GTBrt6jA(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/widget/Switch;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->lambda$onBindViewHolder$0(Landroid/widget/Switch;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MGIj0pZiIoTBNPi_fOC_4CtEYv8(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->lambda$showSecurityWarnDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Wuz9oK1nsHGm46H2OTC7v2VkrY(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->lambda$showDirectBootWarnDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$siVeSOlubA-0vIkEJyqooYg3vwk(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->lambda$showDirectBootWarnDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;ZLcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 112
    iput-object p2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 113
    iput-boolean p4, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    .line 114
    iput-object p5, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .line 115
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p3

    .line 118
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 p5, 0x1

    if-eqz p4, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_0
    new-instance p4, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "from_settings"

    .line 125
    invoke-virtual {p4, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 131
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    if-ne p6, p3, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    .line 133
    :goto_1
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 134
    iput p6, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mUserId:I

    .line 135
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 136
    invoke-static {p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->isValidNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, p5

    :cond_2
    iput-boolean v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    .line 137
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 138
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZLcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;I)V
    .locals 8

    .line 102
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

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;ZLcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;I)V

    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 259
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

    .line 263
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 265
    invoke-static {v0, v1, p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isTv()Z
    .locals 1

    .line 310
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

.method private synthetic lambda$onBindViewHolder$0(Landroid/widget/Switch;Landroid/view/View;)V
    .locals 1

    .line 152
    invoke-virtual {p1}, Landroid/widget/Switch;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/PrimarySwitchPreference;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 157
    invoke-virtual {p0}, Lcom/android/settingslib/PrimarySwitchPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 158
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$showDirectBootWarnDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 322
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private synthetic lambda$showDirectBootWarnDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 324
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private synthetic lambda$showSecurityWarnDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 291
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 292
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$showSecurityWarnDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 299
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private synthetic lambda$showSecurityWarnDialog$3(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 303
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private setCheckedInternal(Z)V
    .locals 0

    .line 270
    invoke-super {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    .line 271
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {p1, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    .line 272
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method private shouldAlwaysCheckIME(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1

    .line 252
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 253
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
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

    .line 315
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 318
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 319
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 320
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 321
    sget v2, Lcom/android/settingslib/R$string;->direct_boot_unaware_dialog_message:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 322
    new-instance v2, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 323
    new-instance v2, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSecurityWarnDialog()V
    .locals 6

    .line 276
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 279
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 280
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 281
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x1040014

    .line 282
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 283
    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 284
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 283
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 285
    sget v4, Lcom/android/settingslib/R$string;->ime_security_warning:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 286
    new-instance v2, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda3;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 297
    new-instance v2, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda4;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    new-instance v0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda5;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 305
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 306
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settingslib/inputmethod/InputMethodPreference;Ljava/text/Collator;)I
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 333
    :cond_0
    iget-boolean v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    iget-boolean v2, p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    const/4 v3, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 337
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    .line 338
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 339
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 342
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    if-eqz v1, :cond_4

    move p0, v3

    goto :goto_1

    :cond_4
    move p0, v0

    :goto_1
    if-eqz v2, :cond_5

    move v0, v3

    :cond_5
    sub-int/2addr p0, v0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settingslib/PrimarySwitchPreference;->getSwitch()Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/widget/Switch;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 162
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settingslib/R$dimen;->secondary_app_icon_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-eqz p1, :cond_1

    if-lez p0, :cond_1

    .line 165
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 166
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 168
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 176
    invoke-virtual {p0}, Lcom/android/settingslib/PrimarySwitchPreference;->isChecked()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 178
    invoke-direct {p0, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    return p2

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 186
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv()Z

    move-result p1

    if-nez p1, :cond_4

    .line 189
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 187
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    goto :goto_1

    .line 194
    :cond_3
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->showSecurityWarnDialog()V

    :cond_4
    :goto_1
    return p2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 203
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    .line 205
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    iget v2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 211
    sget-object v2, Lcom/android/settingslib/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    const-string v3, "IME\'s Settings Activity Not Found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    sget v1, Lcom/android/settingslib/R$string;->failed_to_open_app_settings_toast:I

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v2, v3

    .line 212
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 215
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return v0
.end method

.method public updatePreferenceViews()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 229
    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->shouldAlwaysCheckIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez v0, :cond_1

    .line 238
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mUserId:I

    .line 237
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/settingslib/PrimarySwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/settingslib/PrimarySwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    .line 244
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
