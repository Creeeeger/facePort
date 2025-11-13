.class public final Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/dashboard/DashboardFeatureProvider;


# instance fields
.field public final mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

.field public final mContext:Landroid/content/Context;

.field public final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/dashboard/CategoryManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/CategoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setPreferenceIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Landroid/graphics/drawable/Icon;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    const-string v0, "com.android.settings.category.ia.account_detail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static setSwitchEnabled(Landroidx/preference/Preference;Z)V
    .locals 1

    instance-of v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Z)V
    .locals 2

    iget v0, p2, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/drawer/Tile;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setPreferenceIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Landroid/graphics/drawable/Icon;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v1, "com.android.settings.icon_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Z)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/drawer/Tile;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {p1, p2, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setPreferenceIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public final bindPreferenceToTileAndGetObservers(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/dashboard/DashboardFragment;ZLandroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)Ljava/util/List;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p7

    const/4 v11, 0x0

    if-nez v8, :cond_0

    return-object v11

    :cond_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object/from16 v3, p6

    invoke-virtual {v8, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v3, p6

    invoke-virtual {v1, v9}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    const v4, 0x7f142e0a

    if-eqz v0, :cond_3

    invoke-virtual {v8, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    move-object v6, v11

    goto :goto_1

    :cond_3
    iget-object v0, v9, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v5, "com.android.settings.title_uri"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p4 .. p4}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_4
    const-string v0, "getDynamicTitle"

    invoke-static {v9, v5, v0}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;

    invoke-direct {v6, v1, v5, v0, v8}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Ljava/lang/String;Landroidx/preference/Preference;)V

    :goto_1
    if-eqz v6, :cond_5

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, v1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v0, v9, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    const-string v5, "com.android.settings.summary_uri"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p4 .. p4}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_7
    const-string v0, "getDynamicSummary"

    invoke-static {v9, v5, v0}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;

    invoke-direct {v5, v1, v4, v0, v8}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Ljava/lang/String;Landroidx/preference/Preference;)V

    goto :goto_3

    :cond_8
    :goto_2
    move-object v5, v11

    :goto_3
    if-eqz v5, :cond_9

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface/range {p2 .. p2}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v7

    iget-object v0, v9, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const/4 v4, 0x0

    const-string v5, "com.android.settings.switch_uri"

    const/4 v6, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v6

    goto :goto_4

    :cond_a
    move v0, v4

    :goto_4
    if-nez v0, :cond_b

    move-object v13, v11

    goto :goto_5

    :cond_b
    const-string v0, "onCheckedChanged"

    invoke-static {v9, v5, v0}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v13, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;

    invoke-direct {v13, v1, v9, v7, v0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;ILandroid/net/Uri;)V

    invoke-virtual {v8, v13}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "isChecked"

    invoke-static {v9, v5, v0}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v8, v4}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchEnabled(Landroidx/preference/Preference;Z)V

    new-instance v13, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;

    invoke-direct {v13, v1, v5, v0, v8}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Ljava/lang/String;Landroidx/preference/Preference;)V

    :goto_5
    if-eqz v13, :cond_c

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    move/from16 v0, p3

    invoke-virtual {v1, v8, v9, v0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Z)V

    iget-object v0, v9, Lcom/android/settingslib/drawer/Tile;->pendingIntentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda2;

    move-object/from16 v13, p1

    invoke-direct {v0, v1, v13, v9, v2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-virtual {v8, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_7

    :cond_d
    move-object/from16 v13, p1

    instance-of v0, v9, Lcom/android/settingslib/drawer/ActivityTile;

    if-eqz v0, :cond_13

    iget-object v0, v9, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    const-string v5, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v14, "com.android.settings.intent.action"

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_e
    move-object v0, v11

    move-object v5, v0

    :goto_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_f

    invoke-virtual {v8, v5}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    new-instance v14, Landroid/content/Intent;

    iget-object v5, v9, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    invoke-direct {v14, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v5, ":settings:source_metrics"

    invoke-virtual {v14, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v0, :cond_10

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_10
    const-string v5, "from_settings"

    invoke-virtual {v14, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v14, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_11
    instance-of v4, v2, Lcom/android/settings/homepage/TopLevelSettings;

    if-eqz v4, :cond_12

    iget-object v4, v1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v15, v9, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    iget-object v11, v9, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    invoke-direct {v5, v15, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5, v0, v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v0

    const-string v4, "feature_is_embedding_activity_enabled"

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, ":settings:is_second_layer_page"

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_12
    new-instance v11, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object v6, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V

    invoke-virtual {v8, v11}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_13
    :goto_7
    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->hasOrder()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getOrder()I

    move-result v1

    iget-object v2, v9, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const v0, 0x7fffffff

    if-ne v10, v0, :cond_14

    goto :goto_8

    :cond_14
    add-int/2addr v1, v10

    invoke-virtual {v8, v1}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_9

    :cond_15
    :goto_8
    invoke-virtual {v8, v1}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_16
    :goto_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v11, 0x0

    goto :goto_a

    :cond_17
    move-object v11, v12

    :goto_a
    return-object v11
.end method

.method public final getAllCategories()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/CategoryManager;->tryInitCategories(Landroid/content/Context;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0

    iget-object p0, v0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    :goto_0
    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "com.android.settings.keyhint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "dashboard_tile_pref_"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/CategoryManager;->getTilesByCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object p0

    return-object p0
.end method
