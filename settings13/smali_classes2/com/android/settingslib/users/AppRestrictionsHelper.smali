.class public Lcom/android/settingslib/users/AppRestrictionsHelper;
.super Ljava/lang/Object;
.source "AppRestrictionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$AppLabelComparator;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mExcludeAppInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mExcludeDownloadableAppInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field mIncludeAppInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

.field private mLeanback:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mRelatedPackageList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestrictedProfile:Z

.field mSelectedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mSubordinateAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisibleApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 1

    .line 100
    new-instance v0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-direct {p0, v0}, Lcom/android/settingslib/users/AppRestrictionsHelper;-><init>(Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIncludeAppInfoList:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeDownloadableAppInfoList:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRelatedPackageList:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSubordinateAppList:Ljava/util/HashMap;

    .line 105
    iput-object p1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    .line 106
    invoke-virtual {p1}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p1}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 108
    invoke-virtual {p1}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    .line 109
    invoke-virtual {p1}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    .line 110
    invoke-virtual {p1}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUserManager:Landroid/os/UserManager;

    .line 111
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    .line 114
    invoke-direct {p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->makeExcludeAppList()V

    .line 115
    invoke-direct {p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->makeRelatedPackageList()V

    .line 116
    invoke-direct {p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->makeSubordinateAppList()V

    .line 117
    invoke-direct {p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->makeExcludeDownloadableAppList()V

    return-void
.end method

.method private addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2200

    .line 393
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 395
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 396
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 397
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 398
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_1

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    .line 403
    :cond_1
    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 405
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settingslib/users/AppRestrictionsHelper;->isExcludeForSamsung(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->isOnlyForOwner(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 407
    :cond_3
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    :cond_4
    const/4 v3, 0x0

    .line 411
    iget-object v4, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settingslib/users/AppRestrictionsHelper;->getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 413
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_5

    goto :goto_0

    .line 418
    :cond_5
    new-instance v2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    invoke-direct {v2}, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;-><init>()V

    .line 419
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 420
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 423
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 425
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    if-nez v1, :cond_6

    .line 426
    iget-object v1, v2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v1, v2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 428
    :cond_6
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-void
.end method

.method private addSystemImes(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 373
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 375
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settingslib/users/AppRestrictionsHelper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 489
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    int-to-long v0, p2

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isExcludeDownloadableAppForSamsung(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 234
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 236
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeDownloadableAppInfoList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isExcludeForSamsung(Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    .line 218
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 219
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.contacts.activities.PeopleActivity"

    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "com.samsung.android.contacts.contactslist.PeopleActivity"

    .line 222
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    return v1

    .line 226
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method private isOnlyForOwner(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 2

    const/16 p0, 0x80

    const/4 v0, 0x0

    .line 438
    :try_start_0
    invoke-virtual {p2, p1, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 439
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string p2, "com.samsung.android.multiuser.install_only_owner"

    .line 440
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "AppRestrictionsHelper"

    .line 441
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOnlyForOwner() true - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 474
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 475
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_0

    return v0

    .line 476
    :cond_0
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p1, p0, 0x1

    if-nez p1, :cond_1

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    return v0
.end method

.method private makeExcludeAppList()V
    .locals 4

    .line 501
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.android.documentsui"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string/jumbo v1, "wifi"

    const-string v3, "com.android.settings.Settings$WifiApSettingsActivity"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/settingslib/Utils;->getContactsPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.app.container"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.yosemite.tab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.bridge"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.knox.rcp.components"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.shortcuti"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.shortcutii"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.knox.containercore"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.shortcutsms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.switcher"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.knox.kss"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.switchknoxI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.switchknoxII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.knoxmodeswitcher"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.containeragent2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.knoxsetupwizardclient"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "Samsung KNOX apps"

    const-string v3, "com.sec.android.app.samsungapps.KnoxAppsMainActivity"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.android.stk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.game.gametools"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.game.gamehome"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.knox.securefolder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.app.spage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.authfw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.scloud"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.aremoji"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.app.routines"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.bixby.agent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.dialer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.easyMover"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.galaxycontinuity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.android.cellbroadcastreceiver"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.samsungpass"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.oneconnect"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v0, "com.samsung.android.app.tips"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeExcludeDownloadableAppList()V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeDownloadableAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.kidshome"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeDownloadableAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.easyMover"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeDownloadableAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.galaxycontinuity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeDownloadableAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.sree"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeDownloadableAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.oneconnect"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mExcludeDownloadableAppInfoList:Ljava/util/HashMap;

    const-string v0, "com.samsung.android.app.tips"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeRelatedPackageList()V
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRelatedPackageList:Ljava/util/HashMap;

    const-string v1, "com.hancom.androidpc.viewer.launcher"

    const-string v2, "com.hancom.androidpc.appwidget"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRelatedPackageList:Ljava/util/HashMap;

    const-string v1, "com.samsung.everglades.video"

    const-string v2, "com.sec.android.app.videoplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRelatedPackageList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.app.episodes"

    const-string v2, "com.samsung.android.app.storyalbumwidget"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRelatedPackageList:Ljava/util/HashMap;

    const-string v0, "com.sec.android.app.clockpackage"

    const-string v1, "com.sec.android.widgetapp.dualclockdigital"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeSubordinateAppList()V
    .locals 2

    .line 551
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSubordinateAppList:Ljava/util/HashMap;

    const-string v0, "com.sec.android.gallery3d"

    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public applyUserAppState(Ljava/lang/String;ZLcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V
    .locals 9

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 161
    :try_start_0
    iget-object p2, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    const-wide/32 v2, 0x400000

    invoke-interface {p2, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    const/high16 p3, 0x800000

    if-eqz p2, :cond_0

    .line 163
    iget-boolean v2, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    iget v2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, p3

    if-nez v2, :cond_1

    .line 165
    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/high16 v6, 0x400000

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    :cond_1
    if-eqz p2, :cond_4

    .line 172
    iget v2, p2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_4

    .line 177
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    goto :goto_0

    .line 188
    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    const-wide/16 v2, 0x0

    invoke-interface {p2, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 190
    iget-boolean p2, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    if-eqz p2, :cond_3

    .line 197
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, v1, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    goto :goto_0

    .line 203
    :cond_3
    invoke-interface {p3, p1}, Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;->onDisableUiForPackage(Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, v1, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method public applyUserAppsStates(Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V
    .locals 3

    .line 144
    iget-boolean v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string p0, "AppRestrictionsHelper"

    const-string p1, "Cannot apply application restrictions on another user!"

    .line 145
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 151
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fetchAndMergeApps()V
    .locals 8

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    .line 245
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 246
    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    .line 248
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 249
    invoke-direct {p0, v2}, Lcom/android/settingslib/users/AppRestrictionsHelper;->addSystemImes(Ljava/util/Set;)V

    .line 252
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    iget-boolean v4, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mLeanback:Z

    if-eqz v4, :cond_0

    const-string v4, "android.intent.category.LEANBACK_LAUNCHER"

    .line 254
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v4, "android.intent.category.LAUNCHER"

    .line 256
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/settingslib/users/AppRestrictionsHelper;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 261
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    iget-object v4, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/settingslib/users/AppRestrictionsHelper;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    const/high16 v2, 0x400000

    .line 264
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 266
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/high16 v4, 0x800000

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 268
    iget v6, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v6

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    and-int/lit8 v4, v6, 0x1

    if-nez v4, :cond_4

    and-int/lit16 v4, v6, 0x80

    if-nez v4, :cond_4

    .line 273
    invoke-direct {p0, v3}, Lcom/android/settingslib/users/AppRestrictionsHelper;->isExcludeDownloadableAppForSamsung(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 276
    :cond_3
    new-instance v4, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    invoke-direct {v4}, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;-><init>()V

    .line 277
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 278
    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v4, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 279
    iput-object v6, v4, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 282
    invoke-virtual {v3, v0, v5, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v4, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 284
    iget-object v3, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    :cond_4
    :try_start_0
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 291
    iget-boolean v5, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 293
    iget-object v4, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    const-wide/16 v2, 0x2000

    const/4 v6, 0x0

    .line 304
    :try_start_1
    iget-object v7, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    .line 305
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 304
    invoke-interface {v1, v2, v3, v7}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 307
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 313
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :catch_2
    :cond_6
    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_9

    .line 318
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 319
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v7, v3, v4

    if-nez v7, :cond_8

    goto :goto_3

    :cond_8
    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_7

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_7

    .line 324
    new-instance v3, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    invoke-direct {v3}, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;-><init>()V

    .line 325
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 326
    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 327
    iput-object v7, v3, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 328
    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v3, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 329
    iget-object v2, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 335
    :cond_9
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    new-instance v1, Lcom/android/settingslib/users/AppRestrictionsHelper$AppLabelComparator;

    invoke-direct {v1, v6}, Lcom/android/settingslib/users/AppRestrictionsHelper$AppLabelComparator;-><init>(Lcom/android/settingslib/users/AppRestrictionsHelper$AppLabelComparator-IA;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 338
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 339
    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_4
    if-ltz v1, :cond_b

    .line 340
    iget-object v2, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    iget-object v4, v2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v2, v2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 344
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 345
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 346
    iget-object v2, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 348
    :cond_a
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 353
    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 354
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    .line 355
    iget-object v2, v1, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 356
    iget-object v2, v1, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    iput-object v2, v1, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->primaryEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    goto :goto_6

    .line 358
    :cond_c
    iget-object v2, v1, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    return-void
.end method

.method public getVisibleApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    return-object p0
.end method

.method public isPackageSelected(Ljava/lang/String;)Z
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setPackageSelected(Ljava/lang/String;Z)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRelatedPackageList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 126
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
