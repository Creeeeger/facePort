.class public final Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final aiSupportedAppList:Lcom/google/common/collect/HashMultimap;

.field public final context:Landroid/content/Context;

.field public final mAppList:[Ljava/util/TreeSet;

.field public mPriorityCategory:Ljava/lang/String;

.field public final mUserId:I

.field public final provider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/util/TreeSet;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mAppList:[Ljava/util/TreeSet;

    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->aiSupportedAppList:Lcom/google/common/collect/HashMultimap;

    const-string v1, "com.samsung.android.settings.is.intelligent.features.category.creativity"

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mPriorityCategory:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->context:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mUserId:I

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->secDynamicMenuFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->provider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mAppList:[Ljava/util/TreeSet;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/ObjectEraserPackageInfo;

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PhotoEditorPackageInfo;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->aiSupportedAppList:Lcom/google/common/collect/HashMultimap;

    const-string v1, "com.sec.android.mimage.photoretouching"

    if-eqz p2, :cond_1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/BestFacePackageInfo;

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PhotoEditorPackageInfo;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "SEC_FLOATING_FEATURE_GALLERY_CONFIG_BEST_FACE_MODE"

    const-string v2, "GPU"

    invoke-static {p2, v2}, Lcom/samsung/android/settings/Rune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/ReadAloudPackageInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->context:Landroid/content/Context;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/ReadAloudPackageInfo;->mContext:Landroid/content/Context;

    const-string p0, "com.sec.android.app.sbrowser"

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAppList(Ljava/lang/String;)[Ljava/util/TreeSet;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Intelligent features : getAppList()"

    const-string v3, "IntelligentFeaturesAppsManager"

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.samsung.android.settings.action.INTELLIGENT_FEATURES_SETTINGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x80

    iget v7, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mUserId:I

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v7, 0x1

    const-string v8, "com.samsung.android.settings.is.intelligent.features.category.productive"

    const-string v9, "com.samsung.android.settings.is.intelligent.features.category.creativity"

    const-string v11, "]"

    if-eqz v0, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, "[package name : "

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v11, :cond_2

    const-string v0, "> MetaData is null"

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "com.android.settings.keyhint"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_12

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_9

    :cond_3
    const-string v0, "com.android.settings.title"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/Integer;

    const-string v16, ""

    if-eqz v15, :cond_4

    :try_start_0
    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v10, v0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v10, "> Title is not found : "

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, v16

    goto :goto_2

    :cond_4
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    if-eqz v10, :cond_11

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_8

    :cond_5
    const-string v0, "com.android.settings.summary"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/Integer;

    if-eqz v15, :cond_6

    :try_start_1
    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v12, "Summary is not found : "

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :goto_3
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-string v0, "> Summary is null or empty"

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v0, "com.android.settings.icon"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Integer;

    if-eqz v12, :cond_9

    :try_start_2
    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v4, v12, v7}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v21, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v17, v12

    goto :goto_4

    :catch_3
    move-exception v0

    const/16 v17, 0x0

    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "Icon is not found : "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v17

    goto :goto_5

    :cond_9
    const/16 v21, 0x0

    :goto_5
    if-nez v21, :cond_a

    const-string v0, "Icon is null"

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const-string v0, "com.samsung.android.settings.dependent_packages"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v0, "com.samsung.android.settings.is.intelligent.features.category"

    invoke-virtual {v11, v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "com.android.settings.order"

    const v15, 0x61a80

    invoke-virtual {v11, v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v7, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v12, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->provider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    invoke-virtual {v12, v7}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->getUriFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v12, v7, v14}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->getBundleFromKey(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object v7

    if-nez v7, :cond_b

    const-string v0, "> (Dynamic) Data is null"

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-boolean v12, v7, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    if-nez v12, :cond_c

    const-string v0, "> (Dynamic) Menu is not show"

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    iget-object v12, v7, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    if-eqz v12, :cond_d

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_d

    const-string v10, "> (Dynamic) Title changed : "

    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v12

    :cond_d
    iget-object v7, v7, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_e

    const-string v12, "> (Dynamic) Summary changed : "

    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    goto :goto_6

    :cond_e
    move-object/from16 v19, v10

    move-object/from16 v20, v16

    :goto_6
    if-eqz v2, :cond_f

    iget-object v7, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mPriorityCategory:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "> Calling Package : order = 0, priorityCategory : "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    goto :goto_7

    :cond_f
    move/from16 v22, v11

    :goto_7
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mAppList:[Ljava/util/TreeSet;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    new-instance v7, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;

    iget-object v8, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v7

    move-object/from16 v23, v8

    invoke-direct/range {v18 .. v24}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mAppList:[Ljava/util/TreeSet;

    const/4 v7, 0x1

    aget-object v0, v0, v7

    new-instance v7, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;

    iget-object v8, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v7

    move-object/from16 v23, v8

    invoke-direct/range {v18 .. v24}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    :goto_8
    const-string v0, "> Title is null or empty"

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    :goto_9
    const-string v0, "> KeyHint is null or empty"

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    iget-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->aiSupportedAppList:Lcom/google/common/collect/HashMultimap;

    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_15

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/collect/HashMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/collect/AbstractMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    iget-object v2, v0, Lcom/google/common/collect/AbstractMultimap;->values:Lcom/google/common/collect/AbstractMultimap$Values;

    if-nez v2, :cond_16

    new-instance v2, Lcom/google/common/collect/AbstractMultimap$Values;

    invoke-direct {v2, v0}, Lcom/google/common/collect/AbstractMultimap$Values;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    iput-object v2, v0, Lcom/google/common/collect/AbstractMultimap;->values:Lcom/google/common/collect/AbstractMultimap$Values;

    :cond_16
    invoke-virtual {v2}, Lcom/google/common/collect/AbstractMultimap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    move-object v2, v0

    check-cast v2, Lcom/google/common/collect/AbstractMapBasedMultimap$2;

    invoke-virtual {v2}, Lcom/google/common/collect/AbstractMapBasedMultimap$2;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v2}, Lcom/google/common/collect/AbstractMapBasedMultimap$2;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/16 v22, 0x0

    goto :goto_c

    :cond_17
    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v4

    :goto_c
    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v4, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mAppList:[Ljava/util/TreeSet;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    new-instance v6, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getTitle()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getSummary()Ljava/lang/String;

    move-result-object v21

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getOrder()I

    move-result v23

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getDependentPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v25}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_18
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mAppList:[Ljava/util/TreeSet;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    new-instance v6, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getTitle()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getSummary()Ljava/lang/String;

    move-result-object v21

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getOrder()I

    move-result v23

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getDependentPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v25}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_d
    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_1a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Installed App and Not Supported AI : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Uninstalled App and Not Supported AI : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mAppList:[Ljava/util/TreeSet;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;

    iget-object v4, v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->dependentPackageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->packageName:Ljava/lang/String;

    goto :goto_f

    :cond_1c
    iget-object v4, v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->dependentPackageName:Ljava/lang/String;

    :goto_f
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_1d
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1e
    iget-object v2, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mAppList:[Ljava/util/TreeSet;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;

    iget-object v4, v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->dependentPackageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->packageName:Ljava/lang/String;

    goto :goto_11

    :cond_1f
    iget-object v4, v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->dependentPackageName:Ljava/lang/String;

    :goto_11
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_10

    :cond_20
    const/4 v5, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_21
    iget-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesAppsManager;->mAppList:[Ljava/util/TreeSet;

    return-object v0
.end method
