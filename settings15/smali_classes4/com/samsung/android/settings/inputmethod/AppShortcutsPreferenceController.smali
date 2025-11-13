.class public Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppShortcutsPreferenceController"


# instance fields
.field mAppInfoData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/picker/model/AppInfoData;",
            ">;"
        }
    .end annotation
.end field

.field mDialog:Landroid/app/AlertDialog;

.field private mInitialLaunch:Z

.field mIntentAppInfoData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/picker/model/AppInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPM:Landroid/content/pm/PackageManager;

.field private mParent:Landroidx/fragment/app/Fragment;

.field private mPrefCmdA:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdB:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdC:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdD:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdE:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdF:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdH:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdI:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdJ:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdK:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdM:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdP:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdR:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdS:Landroidx/preference/SecPreferenceScreen;

.field private mPrefCmdZ:Landroidx/preference/SecPreferenceScreen;

.field private mPrefList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/SecPreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mSelectedPref:Landroidx/preference/SecPreferenceScreen;


# direct methods
.method public static synthetic $r8$lambda$SIn_rfWbxGUFkFb8SHXqYbHpWY0(Landroidx/picker/model/AppInfoData;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->lambda$initAppInfoData$1(Landroidx/picker/model/AppInfoData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YDWfQIEnzmDTh7BKlgV-rQXCprY(Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;Landroid/view/View;Landroidx/picker/model/AppInfo;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->lambda$showDialog$2(Landroid/view/View;Landroidx/picker/model/AppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ms7grEr8BR7gfTPHkaeWtyTEUXU(Landroidx/picker/model/AppInfoData;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->lambda$initAppInfoData$0(Landroidx/picker/model/AppInfoData;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mInitialLaunch:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefList:Ljava/util/List;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPM:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->initAppInfoData()V

    return-void
.end method

.method private addFinder()V
    .locals 3

    const-string v0, "com.sec.android.app.launcher/com.sec.android.app.launcher.search.SearchActivity"

    const-string v1, "com.sec.android.app.launcher"

    invoke-static {v1, v0}, Landroidx/picker/model/AppInfo;->obtain(Ljava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v0

    new-instance v2, Landroidx/picker/model/AppInfoDataImpl;

    invoke-direct {v2, v0}, Landroidx/picker/model/AppInfoDataImpl;-><init>(Landroidx/picker/model/AppInfo;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->getIconForFinder(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1403b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroidx/picker/model/AppInfoDataImpl;->label:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mAppInfoData:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addHome()V
    .locals 4

    const-string v0, "com.sec.android.app.launcher"

    :try_start_0
    const-string v1, "com.sec.android.app.launcher/com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-static {v0, v1}, Landroidx/picker/model/AppInfo;->obtain(Ljava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v1

    new-instance v2, Landroidx/picker/model/AppInfoDataImpl;

    invoke-direct {v2, v1}, Landroidx/picker/model/AppInfoDataImpl;-><init>(Landroidx/picker/model/AppInfo;)V

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v2, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPM:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Landroidx/picker/model/AppInfoDataImpl;->label:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mAppInfoData:Ljava/util/List;

    invoke-interface {p0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppShortcutsPreferenceController"

    const-string v0, "failed to get launcher icon and label"

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private addNone(Landroidx/picker/helper/SeslAppInfoDataHelper;)V
    .locals 3

    const-string v0, "None"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/picker/helper/SeslAppInfoDataHelper;->getPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/model/AppInfoData;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f080794

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/picker/model/AppInfoData;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1403c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/picker/model/AppInfoData;->setLabel(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mAppInfoData:Ljava/util/List;

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private getDefaultPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, p1}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getDefaultPackageName role : "

    const-string v1, " default : "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppShortcutsPreferenceController"

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getIconForFinder(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "finder_search_icon"

    const-string/jumbo v2, "mipmap"

    invoke-virtual {p0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    :try_start_1
    const-string p0, "AppShortcutsPreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found, failed to get app icon"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method private getPackageNameForIntentCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x10000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v0, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private initAppInfoData()V
    .locals 4

    new-instance v0, Landroidx/picker/helper/SeslAppInfoDataHelper;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/picker/helper/SeslAppInfoDataHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Landroidx/picker/helper/SeslAppInfoDataHelper;->appDataListFactory:Landroidx/picker/features/scs/AppDataListSCSFactory;

    iget v2, v0, Landroidx/picker/helper/SeslAppInfoDataHelper;->mItemType:I

    invoke-virtual {v1, v2}, Landroidx/picker/features/scs/AppDataListSCSFactory;->getDataList(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPackages="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/picker/common/log/LogTagHelperKt;->info(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mAppInfoData:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mAppInfoData:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->addHome()V

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->addFinder()V

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mAppInfoData:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController$AppComparator;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->addNone(Landroidx/picker/helper/SeslAppInfoDataHelper;)V

    return-void
.end method

.method private static synthetic lambda$initAppInfoData$0(Landroidx/picker/model/AppInfoData;)Z
    .locals 1

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.apps.googleassistant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$initAppInfoData$1(Landroidx/picker/model/AppInfoData;)Z
    .locals 2

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getActivityName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lambda$showDialog$2(Landroid/view/View;Landroidx/picker/model/AppInfo;)Z
    .locals 5

    const-string p1, "com.sec.android.app.launcher"

    const-string v0, "com.sec.android.app.launcher/com.sec.android.app.launcher.search.SearchActivity"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p2, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mSelectedPref:Landroidx/preference/SecPreferenceScreen;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/settings/inputmethod/AppShortcutsConstants;->SETTINGS_LIST:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefList:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mSelectedPref:Landroidx/preference/SecPreferenceScreen;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p2, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/settings/inputmethod/AppShortcutsConstants;->SETTINGS_LIST:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefList:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mSelectedPref:Landroidx/preference/SecPreferenceScreen;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsConstants;->SETTINGS_LIST:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefList:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mSelectedPref:Landroidx/preference/SecPreferenceScreen;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p2, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->refreshUi()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "item click : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppShortcutsPreferenceController"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p2, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    const-string v0, "None"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mSelectedPref:Landroidx/preference/SecPreferenceScreen;

    const p2, 0x7f1403c4

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/settings/inputmethod/AppShortcutsConstants;->SETTINGS_LIST:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefList:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mSelectedPref:Landroidx/preference/SecPreferenceScreen;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_2
    iget-object p1, p2, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    const-string p2, "More"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mAppInfoData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->showDialog(Ljava/util/List;)V

    return v1

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return v1
.end method

.method private showDialog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/picker/model/AppInfoData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslAppPickerGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    new-instance p1, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;)V

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslAppPickerView;->setOnItemClickEventListener(Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1403c2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showIntentDialog(Landroid/content/Intent;)V
    .locals 4

    new-instance v0, Landroidx/picker/helper/SeslAppInfoDataHelper;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/picker/helper/SeslAppInfoDataHelper;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mIntentAppInfoData:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/picker/helper/SeslAppInfoDataHelper;->getPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mIntentAppInfoData:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mAppInfoData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->showDialog(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const-string p1, "More"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/picker/helper/SeslAppInfoDataHelper;->getPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/model/AppInfoData;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mIntentAppInfoData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f0804b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/picker/model/AppInfoData;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1403c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/picker/model/AppInfoData;->setLabel(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mIntentAppInfoData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->showDialog(Ljava/util/List;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->refreshUi()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mInitialLaunch:Z

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
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

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mInitialLaunch:Z

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mSelectedPref:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1403c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/settings/inputmethod/AppShortcutsConstants;->SETTINGS_LIST:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mSelectedPref:Landroidx/preference/SecPreferenceScreen;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->showIntentDialog(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mAppInfoData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->showDialog(Ljava/util/List;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public refreshUi()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_a"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdA:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_b"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdB:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_c"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdC:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_d"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdD:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_e"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdE:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_f"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdF:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_h"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdH:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_i"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdI:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_j"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdJ:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_k"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdK:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_m"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdM:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_p"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdP:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_r"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdR:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_s"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdS:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "app_shortcuts_cmd_z"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdZ:Landroidx/preference/SecPreferenceScreen;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdA:Landroidx/preference/SecPreferenceScreen;

    iget-object v3, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdB:Landroidx/preference/SecPreferenceScreen;

    iget-object v4, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdC:Landroidx/preference/SecPreferenceScreen;

    iget-object v5, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdD:Landroidx/preference/SecPreferenceScreen;

    iget-object v6, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdE:Landroidx/preference/SecPreferenceScreen;

    iget-object v7, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdF:Landroidx/preference/SecPreferenceScreen;

    iget-object v8, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdH:Landroidx/preference/SecPreferenceScreen;

    iget-object v9, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdI:Landroidx/preference/SecPreferenceScreen;

    iget-object v10, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdJ:Landroidx/preference/SecPreferenceScreen;

    iget-object v11, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdK:Landroidx/preference/SecPreferenceScreen;

    iget-object v12, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdM:Landroidx/preference/SecPreferenceScreen;

    iget-object v13, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdP:Landroidx/preference/SecPreferenceScreen;

    iget-object v14, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdR:Landroidx/preference/SecPreferenceScreen;

    iget-object v15, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdS:Landroidx/preference/SecPreferenceScreen;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdZ:Landroidx/preference/SecPreferenceScreen;

    move-object/from16 v16, v1

    filled-new-array/range {v2 .. v16}, [Landroidx/preference/SecPreferenceScreen;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/SecPreferenceScreen;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/inputmethod/AppShortcutsConstants;->SETTINGS_LIST:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/preference/SecPreferenceScreen;

    if-nez v6, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.sec.android.app.launcher/com.sec.android.app.launcher.search.SearchActivity"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v5, 0x7f1403b1

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_4
    const-string v7, "android.intent.category."

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {v0, v5}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->getPackageNameForIntentCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    const-string v7, "android.app.role."

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {v0, v5}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->getDefaultPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_6
    :goto_3
    :try_start_0
    invoke-virtual {v1, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v7, "None"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const v5, 0x7f1403c4

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_7
    const v5, 0x7f1403c1

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_8
    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mPrefCmdA:Landroidx/preference/SecPreferenceScreen;

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mParent:Landroidx/fragment/app/Fragment;

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

    iget-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->mInitialLaunch:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/AppShortcutsPreferenceController;->refreshUi()V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
