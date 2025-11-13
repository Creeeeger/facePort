.class public Lcom/android/settings/localepicker/AppLocalePickerActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field public mAppLocaleDetailContainer:Landroid/view/View;

.field public mAppLocaleDetails:Lcom/android/settings/applications/appinfo/AppLocaleDetails;

.field public mLocalePickerWithRegion:Lcom/android/internal/app/LocalePickerWithRegion;

.field public mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public mNotificationController:Lcom/android/settings/localepicker/NotificationController;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/localepicker/AppLocalePickerActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPendingIntent(ILjava/lang/String;Z)Landroid/app/PendingIntent;
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/localepicker/NotificationCancelReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/localepicker/NotificationActionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    const-string v1, "app_locale"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "notification_id"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    long-to-int p1, p1

    const/high16 p2, 0xc000000

    if-eqz p3, :cond_1

    invoke-static {p0, p1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, v0, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "AppLocalePickerActivity"

    if-nez p1, :cond_0

    const-string p1, "There is no uri data."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "There is no package name."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    sget-object v3, Lcom/android/settings/applications/AppLocaleUtil;->LAUNCHER_ENTRY_INTENT:Landroid/content/Intent;

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/android/settings/applications/AppLocaleUtil;->canDisplayLocaleUi(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find info for package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move v1, p1

    :goto_0
    if-nez v1, :cond_2

    const-string p1, "Not allow to display Locale Settings UI."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const v0, 0x7f140386

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->disableExtendedAppBar()V

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-static {p0}, Lcom/android/settings/localepicker/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/settings/localepicker/NotificationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mNotificationController:Lcom/android/settings/localepicker/NotificationController;

    iget-object v6, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p0

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;Ljava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mLocalePickerWithRegion:Lcom/android/internal/app/LocalePickerWithRegion;

    iget-object v0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v2

    new-instance v3, Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    invoke-direct {v3}, Lcom/android/settings/applications/appinfo/AppLocaleDetails;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "package"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uid"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetails:Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0885

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v3

    invoke-static {v3, v3}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetails:Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    iput-object v0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetailContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v2, Lcom/android/settings/localepicker/AppLocalePickerActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/localepicker/AppLocalePickerActivity$1;-><init>(Lcom/android/settings/localepicker/AppLocalePickerActivity;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mLocalePickerWithRegion:Lcom/android/internal/app/LocalePickerWithRegion;

    const v2, 0x7f0a041c

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-static {p0}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f0a041d

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0, p1, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0608f3

    invoke-virtual {p1, v0, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0601df

    invoke-virtual {p0, v0, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 5

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggestionOfType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggestionOfType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggestionOfType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v0, v0, 0x8

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggestionOfType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    iget-object v2, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    const/16 v3, 0x72d

    invoke-virtual {v2, p0, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->setAppDefaultLocale(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mNotificationController:Lcom/android/settings/localepicker/NotificationController;

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/localepicker/NotificationController;->shouldTriggerNotification(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mNotificationController:Lcom/android/settings/localepicker/NotificationController;

    iget-object v2, v2, Lcom/android/settings/localepicker/NotificationController;->mDataManager:Lcom/android/settings/localepicker/LocaleNotificationDataManager;

    invoke-virtual {v2, v0}, Lcom/android/settings/localepicker/LocaleNotificationDataManager;->getNotificationInfo(Ljava/lang/String;)Lcom/android/settings/localepicker/NotificationInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    iget v2, v2, Lcom/android/settings/localepicker/NotificationInfo;->mNotificationId:I

    goto :goto_2

    :cond_8
    const/4 v2, -0x1

    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v3, 0x7f142f36

    invoke-virtual {p0, v3, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f140c35

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v3, v0}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->triggerNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    new-array v0, v1, [Landroid/util/Pair;

    const/16 v1, 0x767

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to find info for package: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    const-string v1, "AppLocalePickerActivity"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    :goto_3
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->setAppDefaultLocale(Ljava/lang/String;)V

    :cond_a
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    iget-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetails:Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat$Api21Impl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mLocalePickerWithRegion:Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat$Api21Impl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    return v1
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    iget-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetails:Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat$Api21Impl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mLocalePickerWithRegion:Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api21Impl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    return v1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final setAppDefaultLocale(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAppDefaultLocale: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLocalePickerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Landroid/app/LocaleManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocaleManager;

    if-nez v0, :cond_0

    const-string p0, "LocaleManager is null, cannot set default app locale"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/app/LocaleManager;->setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;)V

    return-void
.end method

.method public final triggerNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "suggestion"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "Locale suggestion"

    const/4 v4, 0x3

    invoke-direct {v2, v1, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :goto_0
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const v3, 0x7f0805f2

    iput v3, v1, Landroid/app/Notification;->icon:I

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(I)V

    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    iput p2, v2, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p4, p3}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->createPendingIntent(ILjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object p3

    iput-object p3, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, p4, p2}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->createPendingIntent(ILjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object p0

    iget-object p2, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p0, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
