.class public Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;
.super Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDialog:Landroid/app/AlertDialog;

.field public final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field public final mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

.field public final mIsAllowedByOrganization:Z

.field public final mOnSaveListener:Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;

.field public final mUserId:I

.field public mWidgetFrameVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;ZLcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->setPersistent()V

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iput-boolean p4, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mIsAllowedByOrganization:Z

    iput-object p5, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mOnSaveListener:Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;

    const/4 p4, 0x0

    if-nez p5, :cond_0

    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string p5, "android.intent.action.MAIN"

    invoke-direct {p1, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "from_settings"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-ne p6, p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    :goto_1
    new-instance p1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iput p6, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mUserId:I

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->isValidNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p1

    :cond_3
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZLcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;I)V
    .locals 8

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


# virtual methods
.method public final isTv()Z
    .locals 1

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

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0f9c

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mOnSaveListener:Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mOnSaveListener:Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_4

    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_4
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mOnSaveListener:Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->setCheckedInternal(Z)V

    return p2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->isTv()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->isTv()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->setCheckedInternal(Z)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v0, 0x1040014

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f1411f4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;I)V

    const v0, 0x104000a

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;I)V

    const/high16 v0, 0x1040000

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_6
    :goto_1
    return p2
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SecInputMethodPreference"

    const-string v3, "IME\'s Settings Activity Not Found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f140f58

    invoke-static {p1, v1, p0, p1, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return v0
.end method

.method public final setCheckedInternal(Z)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mOnSaveListener:Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$OnSavePreferenceListener;

    check-cast p1, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mUserAwareContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget v3, p1, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mUserId:I

    invoke-static {p1, v1, v2, v0, v3}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtilCompat;->saveInputMethodSubtypeListForUserInternal(Landroidx/preference/PreferenceFragmentCompat;Landroid/content/ContentResolver;Ljava/util/List;ZI)V

    iget-object v0, p1, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->updatePreferenceViews()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final showDirectBootWarnDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f140cdb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;I)V

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;I)V

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final updatePreferenceViews()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.accessibility.talkback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android"

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mUserId:I

    invoke-static {v0, v3, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfInputMethodDisallowed(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    if-eq v0, v1, :cond_5

    iput-boolean v1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    if-eq v0, v1, :cond_5

    iput-boolean v1, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mWidgetFrameVisible:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean v0, v0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method
