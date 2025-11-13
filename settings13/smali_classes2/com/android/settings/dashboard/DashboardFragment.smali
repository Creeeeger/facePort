.class public abstract Lcom/android/settings/dashboard/DashboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DashboardFragment.java"

# interfaces
.implements Lcom/android/settings/core/CategoryMixin$CategoryListener;
.implements Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;
.implements Lcom/android/settings/core/BasePreferenceController$UiBlockListener;


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG:Ljava/lang/String; = "DashboardFragment"

.field private static final TIMEOUT_MILLIS:J = 0x32L


# instance fields
.field mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;

.field private final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field final mDashboardTilePrefKeys:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DynamicDataObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFirstOnResume:Z

.field private mListeningToCategoryChange:Z

.field private mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

.field private final mPreferenceControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRegisteredObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DynamicDataObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-PacQ4O6mJeRU9mHarV3V9w58rs(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$checkUiBlocker$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3q0Hr23xfrLoAulINHcOsF6Cva0(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$refreshDashboardTiles$10(Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8SaLBTXQQBM9pmTVyMzUlx4pFUg(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$displayResourceTilesToScreen$8(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AZow6y6fem42MRbCAGAK3IWm7sg(Lcom/android/settings/core/BasePreferenceController;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$checkUiBlocker$3(Lcom/android/settings/core/BasePreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CKsn2SLI91hbZP2Y__uxUuV7Hqc(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;Ljava/util/List;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$checkUiBlocker$2(Ljava/util/List;Ljava/util/List;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HCTW-jG-PpZI4H9f82wHD959M1I(ILcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onAttach$1(ILcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PoqS5x4gd4xA8vdZqg9lIZtnNcE(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onStart$7(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U2_NK0df1t6hKVQq0DbBVuN2xh0(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/core/AbstractPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onCreatePreferences$5(Lcom/android/settingslib/core/AbstractPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Vee_mOxXOY0uiqIWr0Rum-awdOE(Lcom/android/settings/dashboard/DashboardFragment;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onCreatePreferences$6(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lsvcduYn1JPjnKgsFzChH38Gqmo(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$refreshDashboardTiles$9(Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uVV-4SjHZSdcYMb_WMej7QVIo_4(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$registerDynamicDataObservers$11(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vEdwxZBrNXOFyCLQhMIkUgk9eOw(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$unregisterDynamicDataObservers$12(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z5W-tTJycmiXTT_YKDnfn6P3984(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/BasePreferenceController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onAttach$0(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/BasePreferenceController;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Landroid/util/ArrayMap;

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mRegisteredObservers:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mFirstOnResume:Z

    return-void
.end method

.method private awaitObserverLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    const-wide/16 v0, 0x32

    .line 850
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private displayResourceTiles()V
    .locals 5

    const-string v0, "DashboardFragment#displayResourceTiles"

    .line 454
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result v0

    if-gtz v0, :cond_0

    .line 459
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    :cond_0
    const-string v1, "DashboardFragment#addPreferencesFromResource"

    .line 464
    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 468
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 470
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 471
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->setOnExpandButtonClickListener(Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;)V

    .line 473
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 474
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 475
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 476
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayResourceTiles#Controller_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v2, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 482
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    goto :goto_0

    .line 490
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private synthetic lambda$checkUiBlocker$2(Ljava/util/List;Ljava/util/List;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 204
    instance-of v0, p3, Lcom/android/settings/core/BasePreferenceController$UiBlocker;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p3}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    move-object v0, p3

    check-cast v0, Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/core/BasePreferenceController;->setUiBlockListener(Lcom/android/settings/core/BasePreferenceController$UiBlockListener;)V

    .line 207
    invoke-virtual {p3}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$checkUiBlocker$3(Lcom/android/settings/core/BasePreferenceController;)V
    .locals 1

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setUiBlockerFinished(Z)V

    return-void
.end method

.method private synthetic lambda$checkUiBlocker$4(Ljava/util/List;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceVisibility(Ljava/util/Map;)V

    .line 216
    new-instance p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$displayResourceTilesToScreen$8(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 500
    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private static synthetic lambda$onAttach$0(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/BasePreferenceController;)V
    .locals 1

    .line 172
    instance-of v0, p1, Landroidx/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_0

    .line 173
    check-cast p1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onAttach$1(ILcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 180
    instance-of v0, p1, Lcom/android/settings/core/BasePreferenceController;

    if-eqz v0, :cond_0

    .line 181
    check-cast p1, Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/core/BasePreferenceController;->setMetricsCategory(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreatePreferences$5(Lcom/android/settingslib/core/AbstractPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 287
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreatePreferences$6(Landroidx/preference/Preference;)V
    .locals 1

    .line 291
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    const-string v0, "category"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onStart$7(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mRegisteredObservers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->registerDynamicDataObserver(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$refreshDashboardTiles$10(Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 790
    new-instance v0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 792
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$refreshDashboardTiles$9(Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    .line 791
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DynamicDataObserver;->getCountDownLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->awaitObserverLatch(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private synthetic lambda$registerDynamicDataObservers$11(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    .line 824
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->registerDynamicDataObserver(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method private synthetic lambda$unregisterDynamicDataObservers$12(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 2

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregister observer: @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {p2}, Lcom/android/settings/dashboard/DynamicDataObserver;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DashboardFragment"

    .line 841
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mRegisteredObservers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 844
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private refreshDashboardTiles(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v0, "DashboardFragment#refreshDashboardTiles"

    .line 686
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v10, "DashboardFragment"

    const-string/jumbo v0, "refreshDashboardTiles TAG : DashboardFragment"

    .line 689
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v11

    const-string v0, "DashboardFragment#getTilesForCategory"

    .line 694
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 696
    iget-object v0, v8, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    .line 699
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    if-nez v0, :cond_0

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO dashboard tiles for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    .line 708
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tile list is empty, skipping category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    .line 718
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add category : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v12, Landroid/util/ArrayMap;

    iget-object v0, v8, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Landroid/util/ArrayMap;

    invoke-direct {v12, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 725
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->shouldForceRoundedIcon()Z

    move-result v13

    .line 726
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 727
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/settingslib/drawer/Tile;

    .line 728
    iget-object v0, v8, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0, v7}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v6

    .line 729
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tile does not contain a key, skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 734
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DF#IDT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v8, v7}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 741
    :cond_3
    iget-object v0, v8, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, " , tile : "

    if-eqz v0, :cond_4

    .line 743
    invoke-virtual {v11, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    .line 744
    iget-object v0, v8, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 745
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v8, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 746
    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getOrder()I

    move-result v16

    move-object/from16 v2, p0

    move v3, v13

    move-object/from16 v17, v15

    move-object v15, v5

    move-object v5, v7

    move-object/from16 v18, v6

    move-object v9, v7

    move/from16 v7, v16

    .line 744
    invoke-interface/range {v0 .. v7}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->bindPreferenceToTileAndGetObservers(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/dashboard/DashboardFragment;ZLandroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindPreferenceToTileAndGetObservers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v18

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v12

    move/from16 v18, v13

    move-object v12, v7

    goto :goto_1

    :cond_4
    move-object v9, v7

    move-object/from16 v17, v15

    move-object v15, v5

    move-object v7, v6

    .line 752
    invoke-virtual {v8, v9}, Lcom/android/settings/dashboard/DashboardFragment;->createPreference(Lcom/android/settingslib/drawer/Tile;)Landroidx/preference/Preference;

    move-result-object v6

    .line 753
    iget-object v0, v8, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v8, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 755
    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getOrder()I

    move-result v16

    move-object/from16 v2, p0

    move v3, v13

    move-object v4, v6

    move-object v5, v9

    move/from16 v18, v13

    move-object v13, v6

    move-object v6, v7

    move-object/from16 v19, v12

    move-object v12, v7

    move/from16 v7, v16

    .line 753
    invoke-interface/range {v0 .. v7}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->bindPreferenceToTileAndGetObservers(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/dashboard/DashboardFragment;ZLandroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 756
    invoke-virtual {v11, v13}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 757
    invoke-virtual {v8, v0}, Lcom/android/settings/dashboard/DashboardFragment;->registerDynamicDataObservers(Ljava/util/List;)V

    .line 758
    iget-object v1, v8, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindPreferenceToTileAndGetObservers, mDashboardTilePrefKeys.put : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_5

    .line 764
    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    move-object/from16 v0, v19

    .line 766
    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    move-object/from16 v9, p1

    move-object v12, v0

    move-object/from16 v15, v17

    move/from16 v13, v18

    goto/16 :goto_0

    :cond_6
    move-object v0, v12

    .line 773
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 774
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 775
    iget-object v3, v8, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDashboardTilePrefKeys.remove : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {v11, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 781
    invoke-virtual {v11, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 783
    :cond_7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v8, v1}, Lcom/android/settings/dashboard/DashboardFragment;->unregisterDynamicDataObservers(Ljava/util/List;)V

    goto :goto_2

    .line 787
    :cond_8
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 788
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 789
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, v8, v14, v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda8;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 793
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v1, "Start waiting observers"

    move-object/from16 v2, p1

    .line 794
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-direct {v8, v0}, Lcom/android/settings/dashboard/DashboardFragment;->awaitObserverLatch(Ljava/util/concurrent/CountDownLatch;)V

    const-string v0, "Stop waiting observers"

    .line 796
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v14, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 800
    :cond_9
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private registerDynamicDataObserver(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 2

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "register observer: @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {p2}, Lcom/android/settings/dashboard/DynamicDataObserver;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DashboardFragment"

    .line 829
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-virtual {p2}, Lcom/android/settings/dashboard/DynamicDataObserver;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 832
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mRegisteredObservers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private unregisterDynamicDataObservers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DynamicDataObserver;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 836
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 840
    new-instance v1, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected addPreferenceController(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method checkUiBlocker(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DashboardFragment#checkUiBlocker"

    .line 199
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    new-instance v2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 212
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 213
    new-instance p1, Lcom/android/settings/dashboard/UiBlockerController;

    invoke-direct {p1, v0}, Lcom/android/settings/dashboard/UiBlockerController;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;

    .line 214
    new-instance v0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/dashboard/UiBlockerController;->start(Ljava/lang/Runnable;)Z

    .line 220
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method protected createPreference(Lcom/android/settingslib/drawer/Tile;)Landroidx/preference/Preference;
    .locals 1

    .line 811
    instance-of v0, p1, Lcom/android/settingslib/drawer/ProviderTile;

    if-eqz v0, :cond_0

    .line 812
    new-instance p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 813
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->hasSwitch()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 814
    new-instance p1, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settingslib/PrimarySwitchPreference;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 815
    :cond_1
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object p1
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected displayResourceTilesToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 499
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda14;-><init>(Landroidx/preference/PreferenceScreen;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getCategoryKey()Ljava/lang/String;
    .locals 1

    .line 420
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected getPreferenceControllers()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;>;"
        }
    .end annotation

    .line 507
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getPreferenceScreenResId()I
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    const-string v0, "DashboardFragment#onAttach"

    .line 100
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "DashboardFragment#getDashboardFeatureProvider"

    .line 108
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 113
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v0, "DashboardFragment#createPreferenceControllers"

    .line 117
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v1, "DashboardFragment#getPreferenceControllersFromXml"

    .line 126
    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 135
    instance-of v1, p0, Lcom/android/settings/homepage/TopLevelSettings;

    if-eqz v1, :cond_1

    .line 136
    invoke-static {}, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->getInstance()Lcom/samsung/android/settings/homepage/TopLevelCacheManager;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->isControllerLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DashboardFragment"

    const-string v3, "controllersFromXml from TopLevelCacheManager"

    .line 138
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v1}, Lcom/samsung/android/settings/homepage/TopLevelCacheManager;->getControllers()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/settings/core/PreferenceControllerListHelper;->getPreferenceControllersFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/settings/core/PreferenceControllerListHelper;->getPreferenceControllersFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 151
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v2, "DashboardFragment#filterControllers"

    .line 155
    invoke-static {v2}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 158
    invoke-static {v1, v0}, Lcom/android/settings/core/PreferenceControllerListHelper;->filterControllers(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 161
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    if-eqz v0, :cond_2

    .line 165
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 171
    new-instance v2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda15;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 178
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda16;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 185
    new-instance v0, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 187
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->addPreferenceController(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    goto :goto_1

    .line 192
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onBlockerWorkFinished(Lcom/android/settings/core/BasePreferenceController;)V
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;

    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/UiBlockerController;->countDown(Ljava/lang/String;)Z

    .line 807
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/UiBlockerController;->isBlockerFinished()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/BasePreferenceController;->setUiBlockerFinished(Z)V

    return-void
.end method

.method public onCategoriesChanged(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DashboardFragment#onCategoriesChanged"

    .line 249
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "DashboardFragment"

    const-string/jumbo v1, "onCategoriesChanged"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    .line 257
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 258
    invoke-interface {v2, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v2

    if-nez v2, :cond_0

    .line 261
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refresh tiles for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    .line 275
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "DashboardFragment#onCreate"

    .line 227
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 229
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    new-instance v1, Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    invoke-direct {v1}, Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setPreferenceComparisonCallback(Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 235
    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mFirstOnResume:Z

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 242
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const-string p1, "DashboardFragment#onCreatePreferences"

    .line 282
    invoke-static {p1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->checkUiBlocker(Ljava/util/List;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshAllPreferences(Ljava/lang/String;)V

    .line 286
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda10;-><init>(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 287
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;

    invoke-direct {p2}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;-><init>()V

    .line 288
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda12;-><init>(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 289
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 294
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onExpandButtonClick()V
    .locals 6

    .line 381
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 383
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v3

    const/4 v1, 0x0

    const/16 v2, 0x342

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 381
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 350
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 352
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 353
    invoke-virtual {v2, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0

    .line 360
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    const-string v0, "DashboardFragment#onResume"

    .line 336
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 338
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    const/16 v0, 0x6c1

    const-string v1, "isParalleledControllers:false"

    .line 340
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writeElapsedTimeMetric(ILjava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "DashboardFragment#onStart"

    .line 301
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 303
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 304
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 308
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 315
    instance-of v1, v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 316
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    .line 317
    check-cast v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    invoke-interface {v0}, Lcom/android/settings/core/CategoryMixin$CategoryHandler;->getCategoryMixin()Lcom/android/settings/core/CategoryMixin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/CategoryMixin;->addCategoryListener(Lcom/android/settings/core/CategoryMixin$CategoryListener;)V

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda4;-><init>()V

    .line 321
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda5;-><init>()V

    .line 322
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;)V

    .line 323
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 329
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 365
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mRegisteredObservers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->unregisterDynamicDataObservers(Ljava/util/List;)V

    .line 367
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 369
    instance-of v1, v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    if-eqz v1, :cond_0

    .line 370
    check-cast v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    invoke-interface {v0}, Lcom/android/settings/core/CategoryMixin$CategoryHandler;->getCategoryMixin()Lcom/android/settings/core/CategoryMixin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/CategoryMixin;->removeCategoryListener(Lcom/android/settings/core/CategoryMixin$CategoryListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 372
    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    :cond_1
    return-void
.end method

.method protected refreshAllPreferences(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DashboardFragment#refreshAllPreferences"

    .line 618
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->displayResourceTiles()V

    .line 630
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "All preferences added, reporting fully drawn"

    .line 634
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    .line 638
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceVisibility(Ljava/util/Map;)V

    .line 640
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method registerDynamicDataObservers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DynamicDataObserver;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 820
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 824
    new-instance v1, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda13;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected shouldForceRoundedIcon()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected updatePreferenceStates()V
    .locals 10

    const-string/jumbo v0, "updatePreferenceStates#Controller"

    .line 515
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DashboardFragment"

    if-nez v0, :cond_0

    const-string/jumbo v0, "root preference screen is null."

    .line 520
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mFirstOnResume:Z

    .line 525
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    .line 530
    :cond_0
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 531
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 532
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 533
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 535
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePreferenceStates#Controller_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 538
    iget-boolean v6, p0, Lcom/android/settings/dashboard/DashboardFragment;->mFirstOnResume:Z

    if-eqz v6, :cond_2

    .line 539
    instance-of v6, v5, Lcom/android/settings/core/BasePreferenceController;

    if-eqz v6, :cond_2

    .line 540
    move-object v6, v5

    check-cast v6, Lcom/android/settings/core/BasePreferenceController;

    iget-boolean v7, v6, Lcom/android/settings/core/BasePreferenceController;->mLastAvailableChecked:Z

    if-eqz v7, :cond_2

    iget-boolean v6, v6, Lcom/android/settings/core/BasePreferenceController;->mLastAvailable:Z

    if-nez v6, :cond_2

    .line 542
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LastAvailableStatus false : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    goto :goto_0

    .line 551
    :cond_2
    invoke-virtual {v5}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_4

    .line 554
    :try_start_0
    invoke-virtual {v5}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 555
    invoke-virtual {v5}, Landroidx/preference/Preference;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 556
    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 559
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_3
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    goto :goto_0

    .line 568
    :cond_4
    invoke-virtual {v5}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v6

    .line 569
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_5

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v6, v7, v1

    .line 571
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    const-string v5, "Preference key is %s in Controller %s"

    .line 570
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    goto/16 :goto_0

    .line 578
    :cond_5
    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_6

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v6, v7, v1

    .line 581
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    const-string v5, "Cannot find preference with key %s in Controller %s"

    .line 580
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    goto/16 :goto_0

    .line 589
    :cond_6
    invoke-virtual {v7}, Landroidx/preference/Preference;->isVisible()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 593
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateState#Controller_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v5, v7}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 597
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 600
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    goto/16 :goto_0

    .line 605
    :cond_8
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mFirstOnResume:Z

    .line 608
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method updatePreferenceVisibility(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "DashboardFragment#updatePreferenceVisibility"

    .line 648
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 651
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;

    if-nez v0, :cond_0

    goto :goto_3

    .line 658
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/dashboard/UiBlockerController;->isBlockerFinished()Z

    move-result v0

    .line 660
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 661
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 662
    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    .line 663
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 667
    :cond_2
    instance-of v4, v2, Lcom/android/settings/core/BasePreferenceController$UiBlocker;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 668
    move-object v4, v2

    check-cast v4, Lcom/android/settings/core/BasePreferenceController;

    .line 669
    invoke-virtual {v4}, Lcom/android/settings/core/BasePreferenceController;->getSavedPrefVisibility()Z

    move-result v4

    if-eqz v0, :cond_3

    .line 670
    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 672
    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v5, v6

    :goto_2
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 677
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    .line 653
    :cond_7
    :goto_3
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method protected use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 391
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 393
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple controllers of Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found, returning first one."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DashboardFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 397
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/core/AbstractPreferenceController;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected useAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 405
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
