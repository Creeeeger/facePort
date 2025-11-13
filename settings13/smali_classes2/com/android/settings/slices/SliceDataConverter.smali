.class Lcom/android/settings/slices/SliceDataConverter;
.super Ljava/lang/Object;
.source "SliceDataConverter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/slices/SliceDataConverter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method private getAccessibilitySliceData()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    const-class v1, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;

    .line 266
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 267
    const-class v2, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 268
    iget-object v3, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->accessibility_settings:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 270
    new-instance v4, Lcom/android/settings/slices/SliceData$Builder;

    invoke-direct {v4}, Lcom/android/settings/slices/SliceData$Builder;-><init>()V

    .line 271
    invoke-virtual {v4, v2}, Lcom/android/settings/slices/SliceData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v2

    .line 272
    invoke-virtual {v2, v3}, Lcom/android/settings/slices/SliceData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v2

    .line 273
    invoke-virtual {v2, v1}, Lcom/android/settings/slices/SliceData$Builder;->setPreferenceControllerClassName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v1

    .line 275
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 276
    iget-object v3, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->config_settings_slices_accessibility_components:I

    .line 277
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDataConverter;->getAccessibilityServiceInfoList()Ljava/util/List;

    move-result-object v3

    .line 279
    iget-object p0, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 281
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 282
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 283
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 284
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 285
    new-instance v7, Landroid/content/ComponentName;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v4, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v4

    if-nez v4, :cond_1

    .line 295
    sget v4, Lcom/android/settings/R$drawable;->ic_accessibility_generic:I

    .line 298
    :cond_1
    invoke-virtual {v1, v5}, Lcom/android/settings/slices/SliceData$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v7

    .line 299
    invoke-virtual {v7, v6}, Lcom/android/settings/slices/SliceData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v6

    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "content"

    .line 301
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "com.android.settings.slices"

    .line 302
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "action"

    .line 303
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 304
    invoke-virtual {v7, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 305
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 300
    invoke-virtual {v6, v7}, Lcom/android/settings/slices/SliceData$Builder;->setUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v6

    .line 306
    invoke-virtual {v6, v4}, Lcom/android/settings/slices/SliceData$Builder;->setIcon(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v4

    const/4 v6, 0x1

    .line 307
    invoke-virtual {v4, v6}, Lcom/android/settings/slices/SliceData$Builder;->setSliceType(I)Lcom/android/settings/slices/SliceData$Builder;

    .line 309
    :try_start_0
    invoke-virtual {v1}, Lcom/android/settings/slices/SliceData$Builder;->build()Lcom/android/settings/slices/SliceData;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid data when building a11y SliceData for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SliceDataConverter"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method

.method private getSliceDataFromProvider(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/search/Indexable$SearchIndexProvider;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    .line 133
    invoke-interface {p1, v1, v2}, Lcom/android/settingslib/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 141
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/SearchIndexableResource;

    .line 142
    iget v1, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    if-nez v1, :cond_1

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provides invalid XML (0) in search provider."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SliceDataConverter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/settings/slices/SliceDataConverter;->getSliceDataFromXML(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getSliceDataFromXML(ILjava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v4, p2

    const-string v2, "SliceDataConverter"

    .line 158
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ""

    const/4 v5, 0x0

    .line 162
    :try_start_0
    iget-object v7, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 165
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PreferenceScreen"

    .line 171
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 177
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 178
    iget-object v8, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 183
    iget-object v8, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    const/16 v9, 0x87e

    invoke-static {v8, v0, v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->extractMetadata(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    const-string v9, "controller"

    .line 196
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    :goto_2
    move-object/from16 p1, v0

    goto/16 :goto_3

    :cond_2
    const-string v9, "key"

    .line 201
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 202
    iget-object v10, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    .line 203
    invoke-static {v10, v3, v9}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v10

    .line 205
    invoke-interface {v10}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    const-string/jumbo v11, "title"

    .line 208
    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "summary"

    .line 209
    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "icon"

    .line 210
    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 212
    invoke-virtual {v10}, Lcom/android/settings/core/BasePreferenceController;->getSliceType()I

    move-result v14

    const-string/jumbo v15, "unavailable_slice_subtitle"

    .line 213
    invoke-virtual {v8, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 215
    invoke-interface {v10}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result v15

    move-object/from16 p1, v0

    .line 216
    invoke-interface {v10}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result v0

    .line 218
    new-instance v1, Lcom/android/settings/slices/SliceData$Builder;

    invoke-direct {v1}, Lcom/android/settings/slices/SliceData$Builder;-><init>()V

    .line 219
    invoke-virtual {v1, v9}, Lcom/android/settings/slices/SliceData$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v1

    .line 220
    invoke-virtual {v10}, Lcom/android/settings/core/BasePreferenceController;->getSliceUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/settings/slices/SliceData$Builder;->setUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v1

    .line 221
    invoke-virtual {v1, v11}, Lcom/android/settings/slices/SliceData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v12}, Lcom/android/settings/slices/SliceData$Builder;->setSummary(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v1

    .line 223
    invoke-virtual {v1, v13}, Lcom/android/settings/slices/SliceData$Builder;->setIcon(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v1

    .line 224
    invoke-virtual {v1, v7}, Lcom/android/settings/slices/SliceData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v1

    .line 225
    invoke-virtual {v1, v3}, Lcom/android/settings/slices/SliceData$Builder;->setPreferenceControllerClassName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v1

    .line 226
    invoke-virtual {v1, v4}, Lcom/android/settings/slices/SliceData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v1

    .line 227
    invoke-virtual {v1, v14}, Lcom/android/settings/slices/SliceData$Builder;->setSliceType(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v1

    .line 228
    invoke-virtual {v1, v8}, Lcom/android/settings/slices/SliceData$Builder;->setUnavailableSliceSubtitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v1

    .line 229
    invoke-virtual {v1, v15}, Lcom/android/settings/slices/SliceData$Builder;->setIsPublicSlice(Z)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v1

    .line 230
    invoke-virtual {v1, v0}, Lcom/android/settings/slices/SliceData$Builder;->setHighlightMenuRes(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/android/settings/slices/SliceData$Builder;->build()Lcom/android/settings/slices/SliceData;

    move-result-object v0

    .line 233
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    goto/16 :goto_1

    .line 172
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    :try_start_2
    const-string v1, "Get slice data from XML failed "

    .line 250
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v1, p0

    .line 251
    iget-object v7, v1, Lcom/android/settings/slices/SliceDataConverter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v8, 0x0

    const/16 v9, 0x6bf

    const/4 v10, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_6

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_4
    move-object v7, v5

    :try_start_3
    const-string v3, "Error parsing PreferenceScreen: "

    .line 243
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    iget-object v0, v1, Lcom/android/settings/slices/SliceDataConverter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v1, 0x0

    const/16 v2, 0x6be

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_6

    .line 257
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v5, v7

    goto :goto_8

    :catch_4
    move-exception v0

    :goto_5
    move-object v12, v3

    .line 236
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid data when building SliceData for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    iget-object v8, v1, Lcom/android/settings/slices/SliceDataConverter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v9, 0x0

    const/16 v10, 0x6bd

    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_6

    .line 257
    :cond_5
    :goto_6
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    :goto_7
    return-object v6

    :goto_8
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 258
    :cond_7
    throw v0
.end method


# virtual methods
.method getAccessibilityServiceInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object p0, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSliceData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settingslib/search/SearchIndexableResources;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settingslib/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object v1

    .line 107
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/search/SearchIndexableData;

    .line 108
    invoke-virtual {v2}, Lcom/android/settingslib/search/SearchIndexableData;->getTargetClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {v2}, Lcom/android/settingslib/search/SearchIndexableData;->getSearchIndexProvider()Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    move-result-object v2

    if-nez v2, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dose not implement Search Index Provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SliceDataConverter"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings/slices/SliceDataConverter;->getSliceDataFromProvider(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 120
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/slices/SliceDataConverter;->getAccessibilitySliceData()Ljava/util/List;

    move-result-object p0

    .line 124
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
