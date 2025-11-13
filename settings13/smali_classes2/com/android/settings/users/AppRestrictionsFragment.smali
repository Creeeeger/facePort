.class public Lcom/android/settings/users/AppRestrictionsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppList:Landroidx/preference/PreferenceGroup;

.field private mAppListChanged:Z

.field private mAppLoadingTask:Landroid/os/AsyncTask;

.field private mCustomRequestCode:I

.field private mCustomRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTime:Z

.field private mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

.field protected mIPm:Landroid/content/pm/IPackageManager;

.field private mNewUser:Z

.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageObserver:Landroid/content/BroadcastReceiver;

.field protected mRestrictedProfile:Z

.field private mSysPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mUser:Landroid/os/UserHandle;

.field private mUserBackgrounding:Landroid/content/BroadcastReceiver;

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppListChanged(Lcom/android/settings/users/AppRestrictionsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHelper(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settingslib/users/AppRestrictionsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgenerateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->generateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monPackageChanged(Lcom/android/settings/users/AppRestrictionsFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onPackageChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpopulateApps(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->populateApps()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 83
    const-class v0, Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    const/16 v0, 0x3e8

    .line 115
    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    .line 121
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    .line 135
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$2;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addLocationAppRestrictionsPreference(Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3

    .line 512
    iget-object p1, p1, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 513
    sget v0, Lcom/android/settings/R$drawable;->ic_preference_location:I

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIcon(I)V

    .line 514
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 515
    invoke-static {p1, v0}, Lcom/android/settings/users/RestrictionUtils;->getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    .line 517
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/RestrictionEntry;

    .line 518
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 519
    invoke-virtual {p2, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 520
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 522
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 523
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/16 p1, 0x64

    .line 524
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 525
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    .line 838
    :goto_0
    array-length v0, p2

    if-ge p0, v0, :cond_1

    .line 839
    aget-object v0, p2, p0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    aget-object p0, p1, p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method private generateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 2

    .line 802
    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 803
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    return p0
.end method

.method private getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "pkg_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPackageSummary(Landroid/content/pm/PackageInfo;Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;)Ljava/lang/String;
    .locals 3

    .line 493
    iget-object p2, p2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->primaryEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-eqz p2, :cond_1

    .line 494
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 495
    sget p1, Lcom/android/settings/R$string;->app_sees_restricted_accounts_and_controlled_by:I

    new-array v0, v2, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 498
    :cond_0
    sget p1, Lcom/android/settings/R$string;->user_restrictions_controlled_by:I

    new-array v0, v2, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 500
    :cond_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 501
    sget p1, Lcom/android/settings/R$string;->app_sees_restricted_accounts:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 399
    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 400
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    and-int/2addr p1, v1

    if-nez p1, :cond_1

    move p0, v1

    :cond_1
    return p0
.end method

.method private static isAppUnsupportedInRestrictedProfile(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    .line 507
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onAppSettingsIconClicked(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3

    .line 637
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 639
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    goto :goto_0

    .line 641
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 644
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {p1, p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPanelOpen(Z)V

    :cond_1
    return-void
.end method

.method private onPackageChanged(Landroid/content/Intent;)V
    .locals 1

    .line 352
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 359
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 360
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    .line 361
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .line 735
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 738
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/RestrictionEntry;

    const/4 v4, 0x0

    .line 740
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v1, :cond_4

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    goto/16 :goto_1

    .line 763
    :cond_1
    new-instance v4, Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;)V

    .line 764
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 765
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 766
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 767
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 768
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 769
    invoke-virtual {v4, v5}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 770
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 749
    :cond_2
    new-instance v4, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 750
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 751
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 753
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 755
    :cond_3
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v5}, Lcom/android/settings/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 757
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 758
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 759
    invoke-virtual {v4, v5}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 742
    :cond_4
    new-instance v4, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 743
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 744
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 745
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    if-eqz v4, :cond_0

    const/4 v5, 0x0

    .line 776
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 777
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOrder(I)V

    .line 779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 779
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 781
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 782
    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 783
    sget v3, Lcom/android/settings/R$drawable;->empty_icon:I

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setIcon(I)V

    .line 784
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->-$$Nest$fgetmChildren(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 788
    :cond_5
    invoke-virtual {p1, p2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    if-ne v2, v1, :cond_6

    .line 790
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 791
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 793
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    return-void
.end method

.method private populateApps()V
    .locals 14

    .line 407
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 410
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 411
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 414
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 417
    :cond_1
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 418
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 419
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 420
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v4}, Lcom/android/settingslib/users/AppRestrictionsHelper;->getVisibleApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    .line 421
    iget-object v8, v6, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    if-nez v8, :cond_2

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 424
    new-instance v10, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11, p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 425
    invoke-direct {p0, v1, v8}, Lcom/android/settings/users/AppRestrictionsFragment;->resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    if-eqz v9, :cond_3

    .line 427
    invoke-direct {p0, v6, v10}, Lcom/android/settings/users/AppRestrictionsFragment;->addLocationAppRestrictionsPreference(Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 429
    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v6, v8, v7}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-wide/32 v12, 0x400040

    const/4 v9, 0x0

    .line 434
    :try_start_0
    invoke-interface {v2, v8, v12, v13, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v12, v9

    :goto_1
    if-nez v12, :cond_4

    goto :goto_0

    .line 443
    :cond_4
    iget-boolean v13, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v13, :cond_5

    invoke-static {v12}, Lcom/android/settings/users/AppRestrictionsFragment;->isAppUnsupportedInRestrictedProfile(Landroid/content/pm/PackageInfo;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_0

    .line 446
    :cond_5
    iget-object v13, v6, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :cond_6
    invoke-virtual {v10, v9}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 447
    invoke-virtual {v10, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 448
    iget-object v9, v6, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v10, v9}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    invoke-direct {p0, v8}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    if-eqz v11, :cond_7

    .line 450
    iget-object v9, v6, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->primaryEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-nez v9, :cond_7

    move v9, v7

    goto :goto_2

    :cond_7
    move v9, v5

    :goto_2
    invoke-static {v10, v9}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->-$$Nest$msetSettingsEnabled(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 451
    invoke-virtual {v10, v5}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 452
    invoke-virtual {v10, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 453
    invoke-virtual {v10, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 454
    invoke-direct {p0, v12, v6}, Lcom/android/settings/users/AppRestrictionsFragment;->getPackageSummary(Landroid/content/pm/PackageInfo;Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    iget-boolean v9, v12, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    if-eqz v9, :cond_9

    .line 456
    invoke-virtual {v10, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 457
    invoke-virtual {v10, v7}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    if-nez v11, :cond_8

    goto/16 :goto_0

    .line 464
    :cond_8
    iget-object v9, v6, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->primaryEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-nez v9, :cond_a

    .line 465
    invoke-direct {p0, v8, v10, v5}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    goto :goto_3

    .line 467
    :cond_9
    iget-boolean v9, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    if-nez v9, :cond_a

    invoke-direct {p0, v12}, Lcom/android/settings/users/AppRestrictionsFragment;->isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 468
    invoke-virtual {v10, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 470
    :cond_a
    :goto_3
    iget-object v6, v6, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->primaryEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-eqz v6, :cond_b

    .line 471
    invoke-virtual {v10, v7}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 472
    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v6, v8}, Lcom/android/settingslib/users/AppRestrictionsHelper;->isPackageSelected(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v10, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 474
    :cond_b
    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x64

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setOrder(I)V

    .line 475
    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v10}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v8, v7}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    .line 476
    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    .line 478
    :cond_c
    iput-boolean v7, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 481
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    if-eqz v0, :cond_d

    .line 482
    iput-boolean v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 483
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppsStates(Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    :cond_d
    return-void
.end method

.method private removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3

    .line 630
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->-$$Nest$fgetmChildren(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 631
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 633
    :cond_0
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->-$$Nest$fgetmChildren(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 9

    .line 657
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 658
    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 659
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.restrictions_bundle"

    .line 661
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 662
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 663
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v4, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 533
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 534
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateAllEntries(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 542
    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 544
    instance-of v2, v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    .line 545
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    check-cast v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected getAppPreferenceGroup()Landroidx/preference/PreferenceGroup;
    .locals 0

    .line 366
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x61

    return p0
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "user_id"

    if-eqz p1, :cond_0

    .line 248
    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 252
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    :cond_1
    const-string/jumbo v1, "new_user"

    .line 255
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    .line 259
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    if-nez p1, :cond_3

    .line 260
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 263
    :cond_3
    new-instance p1, Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-direct {p1, v1, v2}, Lcom/android/settingslib/users/AppRestrictionsHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo p1, "package"

    .line 265
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 266
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 267
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    .line 269
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android"

    const/16 v2, 0x40

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :catch_0
    sget p1, Lcom/android/settings/R$xml;->app_restrictions:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getAppPreferenceGroup()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceGroup;

    .line 276
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 282
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 284
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 287
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 809
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 811
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-nez v0, :cond_0

    .line 813
    sget-object p0, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown requestCode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 818
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.intent.extra.restrictions_list"

    .line 820
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "android.intent.extra.restrictions_bundle"

    .line 821
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    if-eqz v1, :cond_1

    .line 824
    invoke-virtual {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 825
    iget-object p3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 826
    invoke-static {v1}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 825
    invoke-virtual {p3, p2, v0, v1}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 829
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 833
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 554
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v0, :cond_4

    .line 555
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 556
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/android/settings/R$id;->app_restrictions_settings:I

    if-ne p1, v1, :cond_0

    .line 557
    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->onAppSettingsIconClicked(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    goto/16 :goto_0

    .line 558
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 559
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 560
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 562
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 563
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->-$$Nest$fgetrestrictions(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/RestrictionEntry;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->-$$Nest$fgetrestrictions(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {p1, v0, p0}, Lcom/android/settings/users/RestrictionUtils;->setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    return-void

    .line 567
    :cond_1
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v2, p1, v4}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    .line 568
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->-$$Nest$fgethasSettings(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->-$$Nest$fgetrestrictions(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 571
    invoke-direct {p0, p1, v0, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 573
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 575
    iget-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-nez v1, :cond_3

    .line 576
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, p1, v2, p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    .line 578
    :cond_3
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 242
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->init(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDisableUiForPackage(Ljava/lang/String;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 374
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 336
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    .line 338
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    iget-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    if-eqz v1, :cond_0

    .line 341
    new-instance v1, Lcom/android/settings/users/AppRestrictionsFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/users/AppRestrictionsFragment$3;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    new-array p0, v0, [Ljava/lang/Void;

    .line 347
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 585
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, ";"

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 587
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 590
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkg_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 591
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 592
    invoke-virtual {v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getRestrictions()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 594
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/RestrictionEntry;

    .line 595
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 596
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getType()I

    move-result v6

    if-eq v6, v3, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    goto :goto_0

    .line 609
    :cond_1
    check-cast p2, Ljava/util/Set;

    .line 610
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 611
    invoke-interface {p2, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 612
    invoke-virtual {v5, p1}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_1

    .line 602
    :cond_2
    check-cast p1, Landroidx/preference/ListPreference;

    .line 603
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v5, p2}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v4

    .line 604
    invoke-direct {p0, v1, v4, p2}, Lcom/android/settings/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 606
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 598
    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v5, p1}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 617
    :goto_1
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 618
    invoke-static {v2}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 617
    invoke-virtual {p1, v0, p2, p0}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_4
    return v3

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 848
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    check-cast p1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 850
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 851
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 852
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 853
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 854
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    .line 855
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    .line 856
    iput-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 857
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {p1, v0, v2, p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 318
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 322
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 323
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 329
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 330
    :cond_0
    new-instance v1, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask-IA;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 299
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 300
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 306
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 307
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_item_padding_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 309
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_app_list_item_icon_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 310
    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    .line 312
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
