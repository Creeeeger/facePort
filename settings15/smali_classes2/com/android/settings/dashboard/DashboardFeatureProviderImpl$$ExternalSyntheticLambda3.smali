.class public final synthetic Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field public final synthetic f$1:Lcom/android/settings/dashboard/DashboardFragment;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic f$4:Lcom/android/settingslib/drawer/Tile;

.field public final synthetic f$5:Landroid/content/Intent;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$1:Lcom/android/settings/dashboard/DashboardFragment;

    iput-object p3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$3:Landroidx/fragment/app/FragmentActivity;

    iput-object p5, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$4:Lcom/android/settingslib/drawer/Tile;

    iput-object p6, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$5:Landroid/content/Intent;

    iput p7, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$6:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, -0x1

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$5:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$1:Lcom/android/settings/dashboard/DashboardFragment;

    instance-of v5, v4, Lcom/android/settings/homepage/TopLevelSettings;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v4, Lcom/android/settings/homepage/TopLevelSettings;

    iget-object v5, v4, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v4, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    invoke-virtual {v10}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->getHighlightPreferenceKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Lcom/android/settings/homepage/TopLevelSettings;->isActivityEmbedded()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    iget-object v10, v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    invoke-virtual {v4, v10}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightPreferenceKey(Ljava/lang/String;)V

    move-object/from16 v16, v5

    goto :goto_1

    :cond_1
    move-object/from16 v16, v6

    move v9, v8

    :goto_1
    iget-object v4, v3, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_25

    iget-object v4, v3, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    sget-boolean v5, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->DEBUG:Z

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$4:Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v12, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v10, v7, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v7

    :goto_2
    if-ltz v10, :cond_6

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserHandle;

    invoke-static {v11, v4}, Lcom/android/settings/Utils;->shouldHideUser(Landroid/os/UserHandle;Landroid/os/UserManager;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_3
    sget-boolean v11, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->DEBUG:Z

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Delete the user: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserHandle;

    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "ProfileSelectDialog"

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/2addr v10, v1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {v12}, Lcom/android/settingslib/drawer/Tile;->getSaLoggingId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3, v12}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v4

    :cond_7
    iget v13, v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$6:I

    invoke-static {v13, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    iget-object v4, v12, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    const v5, 0xffff

    const/high16 v10, 0x10000000

    iget-object v11, v3, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$3:Landroidx/fragment/app/FragmentActivity;

    if-eqz v4, :cond_1f

    iget-object v4, v12, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/android/settingslib/drawer/Tile;->isPrimaryProfileOnly(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_c

    :cond_8
    iget-object v4, v12, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_e

    if-nez v9, :cond_26

    invoke-virtual {v11, v13, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(ILandroid/content/Intent;)Z

    instance-of v4, v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v4, :cond_b

    invoke-virtual {v3, v12}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    iget-object v3, v12, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    sget-object v4, Lcom/samsung/android/settings/homepage/HomepageUtils;->SEPARATORS:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v10

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    move v1, v5

    :cond_a
    :goto_4
    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/settings/homepage/HomepageUtils;->startActivity(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto/16 :goto_11

    :cond_b
    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v12}, Lcom/android/settingslib/drawer/Tile;->isNewTask()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_5

    :cond_c
    move v1, v8

    :cond_d
    :goto_5
    iget-object v3, v12, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto/16 :goto_11

    :cond_e
    const-string v4, "persist.sys.knox.device_owner"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_10

    if-nez v9, :cond_26

    invoke-virtual {v11, v13, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(ILandroid/content/Intent;)Z

    iget-object v3, v3, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_6

    :cond_f
    move v1, v8

    :goto_6
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_11

    :cond_10
    const-string v4, "android.intent.extra.USER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    if-eqz v4, :cond_16

    iget-object v6, v12, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    if-nez v9, :cond_26

    invoke-virtual {v11, v13, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(ILandroid/content/Intent;)Z

    instance-of v6, v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v6, :cond_13

    invoke-virtual {v3, v12}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/settings/homepage/HomepageUtils;->SEPARATORS:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v10

    if-eqz v3, :cond_11

    goto :goto_7

    :cond_11
    move v1, v5

    :cond_12
    :goto_7
    invoke-static {v0, v2, v1, v4}, Lcom/samsung/android/settings/homepage/HomepageUtils;->startActivity(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto/16 :goto_11

    :cond_13
    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v12}, Lcom/android/settingslib/drawer/Tile;->isNewTask()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_8

    :cond_14
    move v1, v8

    :cond_15
    :goto_8
    invoke-virtual {v0, v2, v1, v4}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto/16 :goto_11

    :cond_16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v12, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserHandle;

    iget-object v15, v3, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v15, v2, v8, v1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    const/4 v1, -0x1

    goto :goto_9

    :cond_18
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_1e

    if-nez v9, :cond_26

    invoke-virtual {v11, v13, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(ILandroid/content/Intent;)Z

    instance-of v1, v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v1, :cond_1b

    invoke-virtual {v3, v12}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    sget-object v3, Lcom/samsung/android/settings/homepage/HomepageUtils;->SEPARATORS:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v10

    if-eqz v3, :cond_1a

    :cond_19
    const/4 v5, -0x1

    :cond_1a
    invoke-static {v0, v2, v5, v1}, Lcom/samsung/android/settings/homepage/HomepageUtils;->startActivity(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto/16 :goto_11

    :cond_1b
    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v12}, Lcom/android/settingslib/drawer/Tile;->isNewTask()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_a

    :cond_1c
    move v1, v8

    goto :goto_b

    :cond_1d
    :goto_a
    const/4 v1, -0x1

    :goto_b
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto :goto_11

    :cond_1e
    invoke-virtual {v11, v13, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(ILandroid/content/Intent;)Z

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v11

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-static/range {v11 .. v16}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->show(Landroidx/fragment/app/FragmentManagerImpl;Lcom/android/settingslib/drawer/Tile;ILcom/android/settings/homepage/TopLevelHighlightMixin;Lcom/android/settings/homepage/TopLevelHighlightMixin;Lcom/android/settings/homepage/TopLevelHighlightMixin;)V

    goto :goto_11

    :cond_1f
    :goto_c
    if-nez v9, :cond_26

    invoke-virtual {v11, v13, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(ILandroid/content/Intent;)Z

    instance-of v1, v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v1, :cond_22

    invoke-virtual {v3, v12}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/settings/homepage/HomepageUtils;->SEPARATORS:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v10

    if-eqz v1, :cond_20

    goto :goto_d

    :cond_20
    move v1, v5

    goto :goto_e

    :cond_21
    :goto_d
    const/4 v1, -0x1

    :goto_e
    invoke-static {v0, v2, v1, v6}, Lcom/samsung/android/settings/homepage/HomepageUtils;->startActivity(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto :goto_11

    :cond_22
    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v12}, Lcom/android/settingslib/drawer/Tile;->isNewTask()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_f

    :cond_23
    move v1, v8

    goto :goto_10

    :cond_24
    :goto_f
    const/4 v1, -0x1

    :goto_10
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_11

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot resolve intent, skipping. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DashboardFeatureImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_11
    return v7
.end method
