.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final aiSupportedAppList:Ljava/util/HashMap;

.field public final context:Landroid/content/Context;

.field public final mAppList:[Ljava/util/TreeSet;

.field public mPriorityCategory:Ljava/lang/String;

.field public final mUserId:I

.field public final provider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/util/TreeSet;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mAppList:[Ljava/util/TreeSet;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->aiSupportedAppList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.settings.is.category.communicate"

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mPriorityCategory:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->context:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mUserId:I

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->secDynamicMenuFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->provider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mAppList:[Ljava/util/TreeSet;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/InternetPackageInfo;

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->context:Landroid/content/Context;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/InternetPackageInfo;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->aiSupportedAppList:Ljava/util/HashMap;

    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PhotoEditorPackageInfo;

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->context:Landroid/content/Context;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->aiSupportedAppList:Ljava/util/HashMap;

    const-string v0, "com.sec.android.mimage.photoretouching"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/SamsungNotesPackageInfo;

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->context:Landroid/content/Context;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/SamsungNotesPackageInfo;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->aiSupportedAppList:Ljava/util/HashMap;

    const-string v0, "com.samsung.android.app.notes"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/VoiceRecoderPackageInfo;

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->context:Landroid/content/Context;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/VoiceRecoderPackageInfo;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->aiSupportedAppList:Ljava/util/HashMap;

    const-string p2, "com.sec.android.app.voicenote"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAIFeaturesFromMetaData(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getAIFeatures: AI Features are not found = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IntelligenceServiceAppsManager"

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAppList(Ljava/lang/String;)[Ljava/util/TreeSet;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Advanced intelligence : getAppList()"

    const-string v4, "IntelligenceServiceAppsManager"

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.android.settings.action.INTELLIGENCE_SERVICE_SETTINGS"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x80

    iget v8, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mUserId:I

    invoke-virtual {v5, v0, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v9, "com.samsung.android.settings.is.category.personalized"

    const-string v10, "com.samsung.android.settings.is.category.health"

    const-string v12, "com.samsung.android.settings.is.category.image"

    const-string v13, "com.samsung.android.settings.is.category.communicate"

    const-string v14, "com.samsung.android.settings.is.category.productivity"

    const-string v15, "]"

    const/16 v16, 0x0

    if-eqz v0, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "[package name : "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v11, :cond_1

    const-string v0, "> MetaData is null"

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "com.android.settings.keyhint"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object/from16 v29, v5

    move-object/from16 v28, v7

    goto/16 :goto_b

    :cond_3
    const-string v0, "com.android.settings.title"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    const-string v19, ""

    if-eqz v3, :cond_4

    :try_start_0
    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    move-object/from16 v28, v7

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v28, v7

    const-string v7, "> Title is not found : "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v19

    goto :goto_1

    :cond_4
    move-object/from16 v28, v7

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move-object/from16 v29, v5

    goto/16 :goto_a

    :cond_6
    const-string v0, "com.android.settings.summary"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_7

    :try_start_1
    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v20, v3

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v20, v3

    const-string v3, "Summary is not found : "

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move-object/from16 v20, v3

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :goto_2
    if-eqz v19, :cond_8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const-string v0, "> Summary is null or empty"

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v0, "com.android.settings.icon"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    const/4 v7, 0x0

    if-eqz v3, :cond_a

    :try_start_2
    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v3, 0x1

    invoke-virtual {v5, v7, v3}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v23, v0

    move-object/from16 v29, v5

    goto :goto_4

    :catch_2
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v29, v5

    const-string v5, "Icon is not found : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object/from16 v23, v7

    goto :goto_4

    :cond_a
    move-object/from16 v29, v5

    goto :goto_3

    :goto_4
    if-nez v23, :cond_c

    const-string v0, "Icon is null"

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_5
    move-object/from16 v7, v28

    move-object/from16 v5, v29

    goto/16 :goto_0

    :cond_c
    const-string v0, "com.samsung.android.settings.is.category"

    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.settings.is.order"

    const v5, 0x61a80

    invoke-virtual {v11, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "com.samsung.android.settings.galaxy_ai_supported_mode"

    const-string v7, "online|offline"

    invoke-virtual {v11, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v21, v3

    const-string v3, "com.samsung.android.settings.ai_supported_mode_content_uri"

    invoke-virtual {v1, v11, v3}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->getBundleFromProvider(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v5, "key_ai_supported_mode"

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_6

    :cond_d
    move-object/from16 v25, v5

    :goto_6
    const-string v3, "com.samsung.android.settings.online_ai_features"

    invoke-virtual {v1, v8, v3}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->getAIFeaturesFromMetaData(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.samsung.android.settings.offline_ai_features"

    invoke-virtual {v1, v8, v5}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->getAIFeaturesFromMetaData(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v7, "com.samsung.android.settings.ai_features_content_uri"

    invoke-virtual {v1, v11, v7}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->getBundleFromProvider(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_e

    const-string v3, "key_online_ai_features"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v5, "key_offline_ai_features"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :cond_e
    move-object/from16 v26, v3

    move-object/from16 v27, v5

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v5, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v5, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->provider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->getUriFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v5, v3, v15}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->getBundleFromKey(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object v3

    if-nez v3, :cond_f

    const-string v0, "> (Dynamic) Data is null"

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_f
    iget-boolean v5, v3, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    if-nez v5, :cond_10

    const-string v0, "> (Dynamic) Menu is not show"

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_10
    iget-object v5, v3, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_11

    const-string v7, "> (Dynamic) Title changed : "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v5

    :cond_11
    iget-object v3, v3, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "> (Dynamic) Summary changed : "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v22, v3

    :goto_7
    move-object/from16 v3, v20

    goto :goto_8

    :cond_12
    move-object/from16 v22, v19

    goto :goto_7

    :goto_8
    if-eqz v2, :cond_13

    iget-object v5, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mPriorityCategory:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "> Calling Package : order = 0, priorityCategory : "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, v16

    goto :goto_9

    :cond_13
    move/from16 v24, v21

    :goto_9
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mAppList:[Ljava/util/TreeSet;

    aget-object v0, v0, v16

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;

    move-object/from16 v19, v5

    move-object/from16 v20, v15

    move-object/from16 v21, v3

    invoke-direct/range {v19 .. v27}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_14
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mAppList:[Ljava/util/TreeSet;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;

    move-object/from16 v19, v5

    move-object/from16 v20, v15

    move-object/from16 v21, v3

    invoke-direct/range {v19 .. v27}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_15
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mAppList:[Ljava/util/TreeSet;

    const/4 v5, 0x2

    aget-object v0, v0, v5

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;

    move-object/from16 v19, v5

    move-object/from16 v20, v15

    move-object/from16 v21, v3

    invoke-direct/range {v19 .. v27}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_16
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_17
    iget-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mAppList:[Ljava/util/TreeSet;

    const/4 v5, 0x3

    aget-object v0, v0, v5

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;

    move-object/from16 v19, v5

    move-object/from16 v20, v15

    move-object/from16 v21, v3

    invoke-direct/range {v19 .. v27}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :goto_a
    const-string v0, "> Title is null or empty"

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :goto_b
    const-string v0, "> KeyHint is null or empty"

    invoke-static {v4, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_18
    iget-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->aiSupportedAppList:Ljava/util/HashMap;

    move/from16 v2, v16

    :goto_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_c

    :cond_1a
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v3, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mAppList:[Ljava/util/TreeSet;

    aget-object v3, v3, v16

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getKeyHint()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getTitle()Ljava/lang/String;

    move-result-object v21

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getSummary()Ljava/lang/String;

    move-result-object v22

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getOrder()I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v27}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_e
    const/4 v5, 0x2

    :cond_1b
    :goto_f
    const/4 v6, 0x3

    goto/16 :goto_10

    :cond_1c
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v3, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mAppList:[Ljava/util/TreeSet;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getKeyHint()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getTitle()Ljava/lang/String;

    move-result-object v21

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getSummary()Ljava/lang/String;

    move-result-object v22

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getOrder()I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v27}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1d
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v3, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mAppList:[Ljava/util/TreeSet;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    new-instance v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getKeyHint()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getTitle()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getSummary()Ljava/lang/String;

    move-result-object v21

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getOrder()I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, v6

    invoke-direct/range {v18 .. v26}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1e
    const/4 v5, 0x2

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_1f
    iget-object v3, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mAppList:[Ljava/util/TreeSet;

    const/4 v6, 0x3

    aget-object v3, v3, v6

    new-instance v7, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getKeyHint()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getTitle()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getSummary()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getOrder()I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v25}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_10
    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Installed App and Not Supported AI : "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Uninstalled App and Not Supported AI : "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_21
    iget-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mAppList:[Ljava/util/TreeSet;

    array-length v2, v0

    move/from16 v3, v16

    :goto_11
    if-ge v3, v2, :cond_26

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_22
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "replace tile\'s key : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->key:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceUtils;->getBucketTitleResId(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    const-string v9, " -> "

    if-eq v7, v8, :cond_23

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "title : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v10, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->title:Ljava/lang/String;

    :cond_23
    iget-object v7, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->key:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "key_voice_recoder"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    move v7, v8

    goto :goto_13

    :cond_24
    const v7, 0x7f142647

    :goto_13
    if-eq v7, v8, :cond_22

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "summary : "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->summary:Ljava/lang/String;

    goto/16 :goto_12

    :cond_25
    const/4 v6, 0x1

    add-int/2addr v3, v6

    goto/16 :goto_11

    :cond_26
    iget-object v0, v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->mAppList:[Ljava/util/TreeSet;

    return-object v0
.end method

.method public final getBundleFromProvider(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0, v0, p2, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getBundleFromProvider: uri = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IntelligenceServiceAppsManager"

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-object p2
.end method
