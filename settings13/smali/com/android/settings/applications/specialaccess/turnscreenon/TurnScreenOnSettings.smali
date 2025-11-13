.class public Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TurnScreenOnSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$AppComparator;
    }
.end annotation


# static fields
.field static final IGNORE_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAsyncTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mIsViewLoading:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$-PJS68-5H-NQVe3SyT_RX5lv0_k(Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->lambda$onResume$0(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VXsVt5j19sZSoynt4PMKVdzW-PA(Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->lambda$onResume$2(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mxsN9Ac_DS-FLZ8E6KKxEzVanNs(Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;Ljava/util/ArrayList;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->lambda$onResume$1(Ljava/util/ArrayList;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->IGNORE_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.android.systemui"

    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->turn_screen_on_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static hasTurnScreenOnPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2

    .line 284
    sget-object v0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->IGNORE_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.WAKE_LOCK"

    .line 287
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private synthetic lambda$onResume$0(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 203
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-virtual {p0, v0, p2, p4}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->setTurnScreenOnAppOp(ILjava/lang/String;Z)V

    .line 204
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;->getPreferenceSummary(Landroid/app/AppOpsManager;ILjava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p0}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onResume$1(Ljava/util/ArrayList;Landroidx/preference/PreferenceScreen;)V
    .locals 8

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 172
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 173
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 174
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 175
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 176
    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 180
    new-instance v6, Lcom/android/settingslib/widget/AppSwitchPreference;

    invoke-direct {v6, v0}, Lcom/android/settingslib/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 182
    iget-object v7, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v7, v2, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v5, v3}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v3, v4}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;->getPreferenceSummary(Landroid/app/AppOpsManager;ILjava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v1, 0x0

    .line 199
    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 200
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v5, v4}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;->isTurnScreenOnAllowed(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v3

    invoke-virtual {v6, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 202
    new-instance v3, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2, v4}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    invoke-virtual {p2, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 212
    iput-boolean v1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mIsViewLoading:Z

    .line 214
    invoke-virtual {p0, v1, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$onResume$2(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 163
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->collectTurnScreenOnApps(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$AppComparator;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$AppComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 167
    new-instance v1, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;Ljava/util/ArrayList;Landroidx/preference/PreferenceScreen;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method collectTurnScreenOnApps(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 261
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 268
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 270
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 271
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->hasTurnScreenOnPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 272
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x782

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 239
    sget p0, Lcom/android/settings/R$xml;->turn_screen_on_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 134
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mUserManager:Landroid/os/UserManager;

    .line 135
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 136
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 297
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 299
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mAsyncTask:Ljava/util/concurrent/Future;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 300
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 306
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mIsViewLoading:Z

    .line 308
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 141
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 144
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 148
    iget-boolean v1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mIsViewLoading:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 149
    iput-boolean v2, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mIsViewLoading:Z

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mAsyncTask:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    .line 153
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 156
    :cond_1
    new-instance v1, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;Landroidx/preference/PreferenceScreen;)V

    .line 157
    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mAsyncTask:Ljava/util/concurrent/Future;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 225
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 228
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_item_padding_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_app_list_item_icon_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 231
    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    .line 233
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method setTurnScreenOnAppOp(ILjava/lang/String;Z)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 313
    :goto_0
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x3d

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method
