.class public Landroid/graphics/FontListParser;
.super Ljava/lang/Object;
.source "FontListParser.java"


# static fields
.field public static final blacklist ATTR_FALLBACK_FOR:Ljava/lang/String; = "fallbackFor"

.field public static final blacklist ATTR_INDEX:Ljava/lang/String; = "index"

.field private static final blacklist ATTR_LANG:Ljava/lang/String; = "lang"

.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "name"

.field public static final blacklist ATTR_POSTSCRIPT_NAME:Ljava/lang/String; = "postScriptName"

.field public static final blacklist ATTR_STYLE:Ljava/lang/String; = "style"

.field public static final blacklist ATTR_STYLEVALUE:Ljava/lang/String; = "stylevalue"

.field public static final blacklist ATTR_SUPPORTED_AXES:Ljava/lang/String; = "supportedAxes"

.field public static final blacklist ATTR_TAG:Ljava/lang/String; = "tag"

.field private static final blacklist ATTR_VARIANT:Ljava/lang/String; = "variant"

.field public static final blacklist ATTR_WEIGHT:Ljava/lang/String; = "weight"

.field private static final greylist-max-o FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

.field public static final blacklist STYLE_ITALIC:Ljava/lang/String; = "italic"

.field public static final blacklist STYLE_NORMAL:Ljava/lang/String; = "normal"

.field private static final blacklist TAG:Ljava/lang/String; = "FontListParser"

.field public static final blacklist TAG_AXIS:Ljava/lang/String; = "axis"

.field private static final blacklist TAG_FONT:Ljava/lang/String; = "font"

.field private static final blacklist TAG_ITAL:Ljava/lang/String; = "ital"

.field private static final blacklist TAG_WGHT:Ljava/lang/String; = "wght"

.field private static final blacklist VARIANT_COMPACT:Ljava/lang/String; = "compact"

.field private static final blacklist VARIANT_ELEGANT:Ljava/lang/String; = "elegant"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    nop

    const-string v0, "^[ \\n\\r\\t]+|[ \\n\\r\\t]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist findUpdatedFontFile(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static greylist-max-r parse(Ljava/io/InputStream;)Landroid/text/FontConfig;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    const/4 v0, 0x0

    invoke-interface {v8, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    new-instance v2, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v2}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v1, "/system/fonts/"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p2

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v12, p4

    :try_start_1
    invoke-static {v2, v3, v12}, Landroid/graphics/fonts/FontCustomizationParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/fonts/FontCustomizationParser$Result;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_1
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v12, p4

    :goto_1
    new-instance v2, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v2}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    move-object v0, v2

    goto :goto_2

    :cond_0
    move-object/from16 v3, p3

    move-object/from16 v12, p4

    new-instance v0, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v0}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    move-object v2, v0

    :goto_2
    new-instance v0, Ljava/io/FileInputStream;

    move-object v13, p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    :try_start_5
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v14, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 v11, 0x0

    move-object v4, v0

    move-object/from16 v5, p1

    move-object v6, v2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-static/range {v4 .. v11}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    return-object v4

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v4
.end method

.method public static greylist-max-o readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Alias;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "to"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "weight"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v3, 0x190

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_0
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    new-instance v4, Landroid/text/FontConfig$Alias;

    invoke-direct {v4, v0, v2, v3}, Landroid/text/FontConfig$Alias;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4
.end method

.method private static greylist-max-o readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontVariationAxis;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "tag"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "stylevalue"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    new-instance v2, Landroid/graphics/fonts/FontVariationAxis;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    return-object v2
.end method

.method public static blacklist readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/FontCustomizationParser$Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JIZ)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;->getAdditionalAliases()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v14, v5

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;->getAdditionalNamedFamilies()Ljava/util/Map;

    move-result-object v15

    const/4 v5, 0x1

    const-string v6, "familyset"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-interface {v0, v7, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v5

    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "family"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "name"

    invoke-interface {v0, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/FontListParser;->readNamedFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v15, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v16, :cond_5

    invoke-virtual {v9}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_1
    const/4 v6, 0x0

    move/from16 v16, v6

    goto :goto_2

    :cond_6
    const-string v6, "family-list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/FontListParser;->readNamedFamilyList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v6}, Landroid/text/FontConfig$NamedFamilyList;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v16, :cond_9

    invoke-virtual {v6}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    const/4 v6, 0x0

    move/from16 v16, v6

    goto :goto_2

    :cond_a
    const-string v6, "alias"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Alias;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2
    goto/16 :goto_0

    :cond_c
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v5

    const/4 v5, 0x0

    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_e

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/FontConfig$NamedFamilyList;

    invoke-virtual {v6}, Landroid/text/FontConfig$NamedFamilyList;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-interface {v12, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v5

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/FontConfig$Alias;

    invoke-virtual {v6}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_10
    new-instance v17, Landroid/text/FontConfig;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;->getLocaleFamilyCustomizations()Ljava/util/List;

    move-result-object v9

    move-object/from16 v5, v17

    move-object v6, v4

    move-object v7, v10

    move-object v8, v13

    move-object/from16 v18, v10

    move-wide/from16 v10, p4

    move-object/from16 v19, v12

    move/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    return-object v17
.end method

.method public static blacklist readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$FontFamily;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const-string/jumbo v1, "lang"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "variant"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ignore"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "font"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/FontListParser;->readFont(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$Font;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    if-eqz v1, :cond_5

    const-string v6, "compact"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const-string v6, "elegant"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x2

    :cond_5
    :goto_2
    if-eqz v3, :cond_7

    const-string/jumbo v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_9

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    new-instance v2, Landroid/text/FontConfig$FontFamily;

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v7

    invoke-direct {v2, v4, v7, v5}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Landroid/os/LocaleList;I)V

    return-object v2

    :cond_9
    :goto_4
    return-object v2
.end method

.method private static blacklist readFont(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$Font;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$Font;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "index"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v11, v5

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, "weight"

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1

    const/16 v6, 0x190

    goto :goto_1

    :cond_1
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_1
    move v14, v6

    const-string/jumbo v6, "style"

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "italic"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v6, "fallbackFor"

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v6, "postScriptName"

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "supportedAxes"

    invoke-interface {v0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v7

    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_5

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v7, v8, :cond_2

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "axis"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    goto :goto_2

    :cond_5
    sget-object v7, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    if-eqz v12, :cond_9

    const-string v3, ","

    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v4, :cond_8

    aget-object v20, v3, v8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v2

    const-string/jumbo v2, "wght"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    or-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_5

    :cond_6
    const-string/jumbo v2, "ital"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    or-int/lit8 v2, v7, 0x2

    move v7, v2

    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v21

    goto :goto_4

    :cond_8
    move-object/from16 v21, v2

    move v0, v7

    goto :goto_6

    :cond_9
    move-object/from16 v21, v2

    move v0, v7

    :goto_6
    if-nez v6, :cond_a

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    goto :goto_7

    :cond_a
    move-object v2, v6

    :goto_7
    move-object/from16 v3, p2

    invoke-static {v2, v3}, Landroid/graphics/FontListParser;->findUpdatedFontFile(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    move-object v6, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v6

    move-object v6, v7

    goto :goto_8

    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v6

    move-object v6, v7

    :goto_8
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, ""

    move-object/from16 v18, v7

    goto :goto_9

    :cond_c
    const/4 v7, 0x0

    new-array v7, v7, [Landroid/graphics/fonts/FontVariationAxis;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/graphics/fonts/FontVariationAxis;

    invoke-static {v7}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v18, v7

    :goto_9
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_d

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v19

    if-nez v19, :cond_d

    const/16 v17, 0x0

    return-object v17

    :cond_d
    const/16 v17, 0x0

    new-instance v19, Landroid/text/FontConfig$Font;

    if-nez v6, :cond_e

    move-object/from16 v1, v17

    goto :goto_a

    :cond_e
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_a
    new-instance v3, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v3, v14, v13}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    move-object/from16 v17, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v8

    move-object v8, v1

    move-object v1, v9

    move-object v9, v2

    move-object/from16 v22, v10

    move-object v10, v3

    move-object v3, v12

    move-object/from16 v12, v18

    move/from16 v23, v13

    move-object/from16 v13, v16

    move/from16 v24, v14

    move v14, v0

    invoke-direct/range {v6 .. v14}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v19
.end method

.method public static blacklist readNamedFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$NamedFamilyList;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "lang"

    invoke-static {v2, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    const-string/jumbo v2, "variant"

    invoke-static {v2, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v2, "ignore"

    invoke-static {v2, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Landroid/text/FontConfig$NamedFamilyList;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/text/FontConfig$NamedFamilyList;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public static blacklist readNamedFamilyList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$NamedFamilyList;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "family"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    const-string/jumbo v5, "lang"

    invoke-static {v5, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    const-string/jumbo v5, "variant"

    invoke-static {v5, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v5, "ignore"

    invoke-static {v5, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Landroid/text/FontConfig$NamedFamilyList;

    invoke-direct {v0, v3, v2}, Landroid/text/FontConfig$NamedFamilyList;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    if-lez v0, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    return-void

    :goto_1
    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be used in FontFamily inside  family or family-list with name attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
