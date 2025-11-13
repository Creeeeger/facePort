.class Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;
.super Ljava/lang/Object;
.source "LicenseHtmlGeneratorFromXml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;
    }
.end annotation


# instance fields
.field private final mContentIdToFileContentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileNameToLibraryToContentIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mXmlFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-e6bRdXigwrEjWhsy_fQIz388ZI(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->lambda$parse$3(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4ClI-Uisb4G6q2GFnrcSqkRGLgk(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->lambda$generateHtml$4(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7Y9EKKxkrqUzQreM6R1dTVlVI1g(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->lambda$parse$2(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CFk14rjAV0FPDbu3Ok1ANHVG9D0(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->lambda$generateHtml$5(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H6GfGQ6Uwuu4WPIN_wn8Ec1Sgr4(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->lambda$parse$1(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xnRACSpDLoDYX5UWW1XF7d2k9Cc(Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->lambda$parse$0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mFileNameToLibraryToContentIdMap:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mContentIdToFileContentMap:Ljava/util/Map;

    .line 118
    iput-object p1, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mXmlFiles:Ljava/util/List;

    return-void
.end method

.method static generateHtml(Ljava/util/Map;Ljava/util/Map;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 282
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 284
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 285
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 290
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    new-instance v7, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$$ExternalSyntheticLambda0;-><init>()V

    .line 289
    invoke-interface {v2, v6, v5, v7}, Ljava/util/SortedMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v3, "<html><head>\n<style type=\"text/css\">\nbody { padding: 0; font-family: sans-serif; }\n.same-license { background-color: #eeeeee;\n                border-top: 20px solid white;\n                padding: 10px; }\n.label { font-weight: bold; }\n.file-list { margin-left: 1em; color: blue; }\n</style>\n</head><body topmargin=\"0\" leftmargin=\"0\" rightmargin=\"0\" bottommargin=\"0\">\n<div class=\"toc\">"

    .line 297
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 300
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 305
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-interface {v2}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v5

    const-string v6, "<li><a href=\"#id%d\">%s</a></li>\n"

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v5, :cond_7

    const-string v5, "<strong>Libraries</strong>\n<ul class=\"libraries\">"

    .line 308
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v8

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 310
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 311
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 313
    invoke-interface {v3, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 314
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v13, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;

    invoke-direct {v13, v12}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    .line 320
    :cond_5
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    new-array v13, v7, [Ljava/lang/Object;

    .line 321
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v8

    aput-object v11, v13, v9

    invoke-virtual {v0, v6, v13}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_6
    const-string v2, "</ul>\n<strong>Files</strong>"

    .line 324
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v5, v8

    :goto_2
    const-string v2, "<ul class=\"files\">"

    .line 327
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v10, p0

    .line 332
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 333
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-nez v13, :cond_a

    const-string v13, ""

    .line 337
    :cond_a
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 339
    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 340
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v15, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;

    invoke-direct {v15, v14}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    .line 347
    :cond_b
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 348
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;

    .line 349
    iget-object v15, v15, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;->mLibraryToFileNameMap:Ljava/util/Map;

    new-instance v9, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v15, v13, v9}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 351
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    new-array v9, v7, [Ljava/lang/Object;

    .line 353
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v8

    const/4 v15, 0x1

    aput-object v2, v9, v15

    invoke-virtual {v0, v6, v9}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_4

    :cond_c
    const/4 v15, 0x1

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 356
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v8

    aput-object v2, v9, v15

    aput-object v13, v9, v7

    const-string v14, "<li><a href=\"#id%d\">%s - %s</a></li>\n"

    .line 355
    invoke-virtual {v0, v14, v9}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_4
    const/4 v9, 0x1

    goto :goto_3

    :cond_d
    new-array v1, v7, [Ljava/lang/Object;

    .line 365
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "//Written Offer for Source Code"

    const/4 v7, 0x1

    aput-object v2, v1, v7

    invoke-virtual {v0, v6, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "</ul>\n</div><!-- table of contents -->\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">"

    .line 368
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v8

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;

    .line 375
    iget-object v6, v4, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;->mContentId:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 376
    iget-object v6, v4, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;->mContentId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    .line 380
    :cond_e
    iget-object v6, v4, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;->mContentId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    .line 381
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v8

    const-string v6, "<tr id=\"id%d\"><td class=\"same-license\">\n"

    invoke-virtual {v0, v6, v9}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 383
    iget-object v6, v4, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;->mLibraryToFileNameMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 384
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 385
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    const-string v9, "<div class=\"label\">Notices for file(s):</div>"

    .line 386
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v9, v11, v8

    const-string v9, "<div class=\"label\"><strong>%s</strong> used by:</div>\n"

    .line 388
    invoke-virtual {v0, v9, v11}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_7
    const-string v9, "<div class=\"file-list\">"

    .line 391
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v9, v11, v8

    const-string v9, "%s <br/>\n"

    .line 393
    invoke-virtual {v0, v9, v11}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_8

    :cond_10
    const/4 v10, 0x1

    const-string v7, "</div><!-- file-list -->"

    .line 395
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    const/4 v10, 0x1

    const-string v6, "<pre class=\"license-text\">"

    .line 397
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    iget-object v4, v4, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;->mContentId:Ljava/lang/String;

    move-object/from16 v6, p1

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "</pre><!-- license-text -->"

    .line 400
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "</td></tr><!-- same-license -->"

    .line 401
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 405
    :cond_12
    invoke-static {v0, v5}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->writeWrittenOffer(Ljava/io/PrintWriter;I)V

    const-string v1, "</table></body></html>"

    .line 408
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private generateHtml(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mXmlFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 129
    invoke-direct {p0, v1}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->parse(Ljava/io/File;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mFileNameToLibraryToContentIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mContentIdToFileContentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 138
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mFileNameToLibraryToContentIdMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mContentIdToFileContentMap:Ljava/util/Map;

    invoke-static {v0, p0, v2, p2}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->generateHtml(Ljava/util/Map;Ljava/util/Map;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 144
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception p0

    .line 147
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to generate "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LicenseGeneratorFromXml"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_2
    :goto_2
    return v1
.end method

.method public static generateHtml(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;

    invoke-direct {v0, p0}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;-><init>(Ljava/util/List;)V

    .line 124
    invoke-direct {v0, p1, p2}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->generateHtml(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$generateHtml$4(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 291
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private static synthetic lambda$generateHtml$5(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 350
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$parse$0(Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 226
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$parse$1(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 228
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$parse$2(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 253
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private static synthetic lambda$parse$3(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    .line 251
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    new-instance v2, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, v1, v0, v2}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private parse(Ljava/io/File;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 163
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 166
    :cond_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    :goto_0
    move-object v0, v1

    .line 169
    iget-object v1, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mFileNameToLibraryToContentIdMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mContentIdToFileContentMap:Ljava/util/Map;

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->parse(Ljava/io/InputStreamReader;Ljava/util/Map;Ljava/util/Map;)V

    .line 171
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LicenseGeneratorFromXml"

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_2

    .line 176
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 178
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to close "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method static parse(Ljava/io/InputStreamReader;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStreamReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 209
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 210
    invoke-interface {v2, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 211
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 p0, 0x2

    const-string v3, ""

    const-string v4, "licenses"

    .line 213
    invoke-interface {v2, p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    if-ne v4, p0, :cond_1

    .line 218
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file-name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "contentId"

    if-eqz v4, :cond_0

    .line 219
    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "lib"

    .line 220
    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 221
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 222
    invoke-static {v2}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 223
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 224
    new-instance v7, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$$ExternalSyntheticLambda2;-><init>()V

    .line 225
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 227
    new-instance v7, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 229
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "file-content"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 235
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 236
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    invoke-static {v2}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    .line 238
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 239
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_1
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 248
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 250
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v3, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$$ExternalSyntheticLambda4;-><init>()V

    .line 249
    invoke-interface {p1, v2, v0, v3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_2

    .line 260
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private static readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 266
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    :goto_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 268
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static writeWrittenOffer(Ljava/io/PrintWriter;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 413
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "<tr id=\"id%d\"><td class=\"same-license\">\n"

    invoke-virtual {p0, p1, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "<div class=\"file-list\">//Written Offer for Source Code<br/></div><!-- file-list -->"

    .line 414
    invoke-virtual {p0, v0, p1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string p1, "<pre class=\"license-text\">"

    .line 415
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "The software included in this product contains open source software."

    .line 416
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "To obtain the source code covered under licenses which have the obligation"

    .line 417
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "of publishing source code(e.g. GPL, LGPL, MPL...etc),"

    .line 418
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "please visit http://opensource.samsung.com/ and search by model name."

    .line 419
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "A complete corresponding source code may be obtained for a period of three years"

    .line 420
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "after our last shipment of this product by visiting our website."

    .line 421
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "If you want to obtain a complete corresponding source code in the physical medium"

    .line 422
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "such as CD-ROM, the cost of physically performing source distribution may be charged."

    .line 423
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "This offer is valid to anyone in receipt of this information."

    .line 424
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "</pre><!-- license-text -->"

    .line 425
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "</td></tr><!-- same-license -->"

    .line 426
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
