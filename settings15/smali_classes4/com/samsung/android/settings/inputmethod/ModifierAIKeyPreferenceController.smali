.class public Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field private static final ACTION_INTENT_AI_HOT:Ljava/lang/String; = "com.samsung.android.intent.action.AI_ASSIST"

.field private static final AI_INSETCATEGORY_KEY:Ljava/lang/String; = "ai_key_inset_category"

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static final TAG:Ljava/lang/String; = "ModifierAIKeyPreferenceController"


# instance fields
.field private mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

.field private mAIKeyInsetCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIm:Landroid/hardware/input/InputManager;

.field mModifierKeyAI:[Ljava/lang/CharSequence;

.field private mParent:Landroidx/fragment/app/Fragment;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    const-class p2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method

.method private createEntries()[Ljava/lang/CharSequence;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAppList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f14183a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v1, v2

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    const-string v1, "ModifierAIKeyPreferenceController"

    const-string v3, "createEntries: label not found"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f141844

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p0, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private getPreferredApp()Landroid/content/pm/ActivityInfo;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :goto_0
    return-object p0
.end method

.method private getPreferredAppPkgName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->getPreferredApp()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->getPreferredApp()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private refreshUi()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->getPreferredApp()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    const v1, 0x7f141844

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ai_key_disable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "android"

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f14183a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setAIKeyIntent(Landroid/content/pm/ResolveInfo;Landroid/content/IntentFilter;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->getPreferredAppPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget p1, p1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method private updatePreferenceState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIKeyInsetCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    const-string v0, "ai_key_inset_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIKeyInsetCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->createEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mModifierKeyAI:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mModifierKeyAI:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mModifierKeyAI:[Ljava/lang/CharSequence;

    iput-object v0, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAIDropDownPref:Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;

    iput-boolean v0, p1, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;->mIconVisible:Z

    const v0, 0x7f080923

    iput v0, p1, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;->mLeft:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;->mTop:I

    iput v0, p1, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;->mRight:I

    iput v0, p1, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;->mBottom:I

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->refreshUi()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 9

    const/4 v0, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAppList:Ljava/util/List;

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/inputmethod/InputMethodUtils;->HOME_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "input"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v1, v5

    invoke-virtual {p0, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/InputDevice;->getVendorId()I

    move-result v7

    const/16 v8, 0x4e8

    if-ne v7, v8, :cond_1

    invoke-virtual {v6}, Landroid/view/InputDevice;->getProductId()I

    move-result v6

    const v7, 0xa035

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v5, v0

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    const-string p0, "connected"

    goto :goto_2

    :cond_3
    const-string/jumbo p0, "not connected"

    :goto_2
    const-string v1, "POGO Keyboard is "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "InputMethodUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    return v3

    :cond_5
    :goto_4
    return v2
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->updatePreferenceState()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->updatePreferenceState()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->updatePreferenceState()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "0"

    if-nez v0, :cond_4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ai_key_disable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    const/16 v6, 0x450

    invoke-virtual {v3, v6, v6}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f14183a

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->getPreferredAppPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f141844

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v6, v5}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    const-string v2, "2"

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAppList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mAppList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    goto :goto_2

    :catch_0
    move-object v3, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_1
    :goto_1
    const-string v4, "ModifierAIKeyPreferenceController"

    const-string v5, "createEntries: label not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->setAIKeyIntent(Landroid/content/pm/ResolveInfo;Landroid/content/IntentFilter;)V

    :cond_4
    :goto_3
    const p0, 0x106f1

    const v0, 0x106ee

    invoke-static {p0, v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return v1
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->updatePreferenceState()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/ModifierAIKeyPreferenceController;->refreshUi()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
