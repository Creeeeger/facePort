.class public final Lcom/android/settings/slices/SlicesIndexer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;


# virtual methods
.method public getSliceData()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    const-string v1, "No feature factory configured"

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProviderImpl;

    move-result-object v0

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/settings/slices/SlicesIndexer;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSliceDataConverter:Lcom/android/settings/slices/SliceDataConverter;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/settings/slices/SliceDataConverter;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/settings/slices/SliceDataConverter;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSliceDataConverter:Lcom/android/settings/slices/SliceDataConverter;

    :cond_0
    iget-object v2, v0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSliceDataConverter:Lcom/android/settings/slices/SliceDataConverter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProviderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/SearchFeatureProviderImpl;->getSearchIndexableResources()Lcom/android/settingslib/search/SearchIndexableResources;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;

    iget-object v0, v0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v4, "SliceDataConverter"

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/search/SearchIndexableData;

    iget-object v5, v0, Lcom/android/settingslib/search/SearchIndexableData;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/android/settingslib/search/SearchIndexableData;->mSearchIndexProvider:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    if-nez v0, :cond_1

    const-string v0, " dose not implement Search Index Provider"

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v2, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v6}, Lcom/android/settingslib/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object v2, v3

    move-object v1, v12

    goto/16 :goto_18

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableResource;

    iget v0, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    if-nez v0, :cond_3

    const-string v0, " provides invalid XML (0) in search provider."

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v6, v2, Lcom/android/settings/slices/SliceDataConverter;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const-string v7, ""

    :try_start_0
    iget-object v8, v2, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    const/16 v9, 0x487f

    invoke-static {v8, v0, v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->extractMetadata(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1a

    move-object v8, v7

    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    const-string v10, "title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "PreferenceScreen"

    const-string v15, "type"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v10, :cond_4

    move-object v7, v10

    goto :goto_2

    :cond_5
    const-string v11, "controller"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    move-object/from16 p0, v0

    :goto_3
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    move-object/from16 v20, v12

    move-object/from16 v17, v13

    goto/16 :goto_11

    :cond_7
    const-string v11, "key"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v15, v2, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;
    :try_end_1
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_18

    :try_start_2
    invoke-static {v15, v8}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    goto/16 :goto_f

    :catch_1
    move-exception v0

    move-object/from16 v16, v1

    goto/16 :goto_10

    :catch_2
    :try_start_3
    invoke-static {v15, v8, v11}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v15
    :try_end_3
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    :try_start_4
    invoke-interface {v15}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-virtual {v15}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v16
    :try_end_4
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_18

    if-nez v16, :cond_8

    move-object/from16 p0, v0

    :try_start_5
    instance-of v0, v15, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;
    :try_end_5
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-nez v0, :cond_9

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    move-object v7, v8

    :goto_5
    move-object/from16 v20, v12

    move-object/from16 v17, v13

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move-object/from16 v16, v1

    :goto_6
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    move-object/from16 v20, v12

    move-object/from16 v17, v13

    goto/16 :goto_15

    :catch_5
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    move-object v11, v8

    move-object/from16 v20, v12

    move-object/from16 v17, v13

    goto/16 :goto_16

    :cond_8
    move-object/from16 p0, v0

    :cond_9
    :try_start_6
    const-string v0, "summary"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_6 .. :try_end_6} :catch_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_18

    move-object/from16 v16, v1

    :try_start_7
    const-string v1, "icon"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_7 .. :try_end_7} :catch_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_15

    move-object/from16 v17, v13

    :try_start_8
    invoke-virtual {v15}, Lcom/android/settings/core/BasePreferenceController;->getSliceType()I

    move-result v13
    :try_end_8
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12

    move-object/from16 v18, v2

    :try_start_9
    const-string v2, "unavailable_slice_subtitle"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_9
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f

    move-object/from16 v19, v3

    :try_start_a
    invoke-interface {v15}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result v3
    :try_end_a
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_a .. :try_end_a} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    move-object/from16 v20, v12

    :try_start_b
    invoke-interface {v15}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result v12
    :try_end_b
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_b .. :try_end_b} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    move-object/from16 v21, v6

    :try_start_c
    const-string v6, "userRestriction"

    invoke-virtual {v9, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/android/settings/slices/SliceData$Builder;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v11, v9, Lcom/android/settings/slices/SliceData$Builder;->mKey:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/android/settings/core/BasePreferenceController;->getSliceUri()Landroid/net/Uri;

    move-result-object v11

    iput-object v11, v9, Lcom/android/settings/slices/SliceData$Builder;->mUri:Landroid/net/Uri;

    iput-object v10, v9, Lcom/android/settings/slices/SliceData$Builder;->mTitle:Ljava/lang/String;

    iput-object v0, v9, Lcom/android/settings/slices/SliceData$Builder;->mSummary:Ljava/lang/String;

    iput v1, v9, Lcom/android/settings/slices/SliceData$Builder;->mIconResource:I

    iput-object v7, v9, Lcom/android/settings/slices/SliceData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    iput-object v8, v9, Lcom/android/settings/slices/SliceData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    iput-object v5, v9, Lcom/android/settings/slices/SliceData$Builder;->mFragmentClassName:Ljava/lang/String;

    iput v13, v9, Lcom/android/settings/slices/SliceData$Builder;->mSliceType:I

    iput-object v2, v9, Lcom/android/settings/slices/SliceData$Builder;->mUnavailableSliceSubtitle:Ljava/lang/String;

    iput-boolean v3, v9, Lcom/android/settings/slices/SliceData$Builder;->mIsPublicSlice:Z

    iput v12, v9, Lcom/android/settings/slices/SliceData$Builder;->mHighlightMenuRes:I

    iput-object v6, v9, Lcom/android/settings/slices/SliceData$Builder;->mUserRestriction:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/settings/slices/SliceData$Builder;->build()Lcom/android/settings/slices/SliceData;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_c .. :try_end_c} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_11

    :catch_6
    move-exception v0

    :goto_7
    move-object v7, v8

    goto/16 :goto_13

    :catch_7
    move-exception v0

    goto/16 :goto_15

    :catch_8
    move-exception v0

    :goto_8
    move-object v11, v8

    goto/16 :goto_16

    :catch_9
    move-exception v0

    move-object/from16 v21, v6

    goto :goto_7

    :catch_a
    move-exception v0

    move-object/from16 v21, v6

    goto/16 :goto_15

    :catch_b
    move-exception v0

    move-object/from16 v21, v6

    goto :goto_8

    :catch_c
    move-exception v0

    :goto_9
    move-object/from16 v21, v6

    move-object/from16 v20, v12

    goto :goto_7

    :catch_d
    move-exception v0

    :goto_a
    move-object/from16 v21, v6

    move-object/from16 v20, v12

    goto/16 :goto_15

    :catch_e
    move-exception v0

    :goto_b
    move-object/from16 v21, v6

    move-object/from16 v20, v12

    goto :goto_8

    :catch_f
    move-exception v0

    :goto_c
    move-object/from16 v19, v3

    goto :goto_9

    :catch_10
    move-exception v0

    :goto_d
    move-object/from16 v19, v3

    goto :goto_a

    :catch_11
    move-exception v0

    :goto_e
    move-object/from16 v19, v3

    goto :goto_b

    :catch_12
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_c

    :catch_13
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_d

    :catch_14
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_e

    :catch_15
    move-exception v0

    :goto_f
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    move-object/from16 v20, v12

    move-object/from16 v17, v13

    goto :goto_7

    :catch_16
    move-exception v0

    goto/16 :goto_6

    :catch_17
    move-exception v0

    :goto_10
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    move-object/from16 v20, v12

    move-object/from16 v17, v13

    goto :goto_8

    :catch_18
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_f

    :catch_19
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_10

    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v13, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v12, v20

    move-object/from16 v6, v21

    goto/16 :goto_2

    :cond_a
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v17, v13

    move-object v1, v12

    goto/16 :goto_17

    :goto_12
    move-object v11, v7

    goto :goto_16

    :catch_1a
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    goto/16 :goto_5

    :catch_1b
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    move-object/from16 v20, v12

    move-object/from16 v17, v13

    goto :goto_12

    :goto_13
    const-string v1, "Get slice data from XML failed "

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/16 v8, 0x6bf

    const/4 v9, 0x0

    move-object/from16 v6, v21

    invoke-virtual/range {v6 .. v11}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    :goto_14
    move-object/from16 v1, v20

    goto :goto_17

    :goto_15
    const-string v1, "Error parsing PreferenceScreen: "

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x6be

    move-object/from16 v6, v21

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    goto :goto_14

    :goto_16
    const-string v1, "Invalid data when building SliceData for "

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x6bd

    move-object/from16 v6, v21

    invoke-virtual/range {v6 .. v11}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    goto :goto_14

    :goto_17
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v12, v1

    move-object/from16 v1, v16

    move-object/from16 v13, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto/16 :goto_1

    :cond_b
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object v1, v12

    move-object v2, v3

    :goto_18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v3, v2

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    goto/16 :goto_0

    :cond_c
    move-object/from16 v18, v2

    move-object v2, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v18

    iget-object v6, v5, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    const v7, 0x7f140160

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/android/settings/slices/SliceData$Builder;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v3, v7, Lcom/android/settings/slices/SliceData$Builder;->mFragmentClassName:Ljava/lang/String;

    iput-object v6, v7, Lcom/android/settings/slices/SliceData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    iput-object v0, v7, Lcom/android/settings/slices/SliceData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v5, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0300b1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/android/settings/slices/SliceDataConverter;->getAccessibilityServiceInfoList()Ljava/util/List;

    move-result-object v0

    iget-object v5, v5, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_19

    :cond_d
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    if-nez v0, :cond_e

    const v0, 0x7f080327

    :cond_e
    iput-object v8, v7, Lcom/android/settings/slices/SliceData$Builder;->mKey:Ljava/lang/String;

    iput-object v9, v7, Lcom/android/settings/slices/SliceData$Builder;->mTitle:Ljava/lang/String;

    const-string v9, "content"

    const-string v10, "com.android.settings.slices"

    const-string v11, "action"

    invoke-static {v9, v10, v11, v8}, Landroidx/picker/features/search/InitialSearchUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settings/slices/SliceData$Builder;->mUri:Landroid/net/Uri;

    iput v0, v7, Lcom/android/settings/slices/SliceData$Builder;->mIconResource:I

    const/4 v0, 0x1

    iput v0, v7, Lcom/android/settings/slices/SliceData$Builder;->mSliceType:I

    :try_start_d
    invoke-virtual {v7}, Lcom/android/settings/slices/SliceData$Builder;->build()Lcom/android/settings/slices/SliceData;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_d .. :try_end_d} :catch_1c

    goto :goto_19

    :catch_1c
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid data when building a11y SliceData for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    :cond_f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v2

    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final indexSliceData()V
    .locals 10

    const-string v0, "Indexing slices database took: "

    iget-object v1, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    iget-object v2, v1, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "slices_shared_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getBuildTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "SlicesIndexer"

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Slices already indexed - returning."

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    iget-object v2, v2, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "DROP TABLE IF EXISTS slices_index"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE VIRTUAL TABLE slices_index USING fts4(key, slice_uri, title, summary, screentitle, keywords, icon, fragment, controller, slice_type, unavailable_slice_subtitle, public_slice, highlight_menu, user_restriction INTEGER DEFAULT 0 );"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "SlicesDatabaseHelper"

    const-string v8, "Created databases"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesIndexer;->getSliceData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/slices/SlicesIndexer;->insertSliceData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    iget-object v2, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getBuildTag()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/android/settings/slices/SlicesDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public insertSliceData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/slices/SliceData;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p2, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slice_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    iget-object v2, p2, Lcom/android/settings/slices/SliceData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "summary"

    iget-object v2, p2, Lcom/android/settings/slices/SliceData;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const-string v2, "screentitle"

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "keywords"

    iget-object v2, p2, Lcom/android/settings/slices/SliceData;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p2, Lcom/android/settings/slices/SliceData;->mIconResource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "fragment"

    iget-object v2, p2, Lcom/android/settings/slices/SliceData;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "controller"

    iget-object v2, p2, Lcom/android/settings/slices/SliceData;->mPreferenceController:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p2, Lcom/android/settings/slices/SliceData;->mSliceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "slice_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "unavailable_slice_subtitle"

    iget-object v2, p2, Lcom/android/settings/slices/SliceData;->mUnavailableSliceSubtitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p2, Lcom/android/settings/slices/SliceData;->mIsPublicSlice:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "public_slice"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget v1, p2, Lcom/android/settings/slices/SliceData;->mHighlightMenuRes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "highlight_menu"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "user_restriction"

    iget-object p2, p2, Lcom/android/settings/slices/SliceData;->mUserRestriction:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "slices_index"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesIndexer;->indexSliceData()V

    return-void
.end method
