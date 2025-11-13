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

.field public static final blacklist ATTR_TAG:Ljava/lang/String; = "tag"

.field private static final blacklist ATTR_VARIANT:Ljava/lang/String; = "variant"

.field public static final blacklist ATTR_WEIGHT:Ljava/lang/String; = "weight"

.field private static final greylist-max-o FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

.field public static final blacklist STYLE_ITALIC:Ljava/lang/String; = "italic"

.field public static final blacklist STYLE_NORMAL:Ljava/lang/String; = "normal"

.field public static final blacklist TAG_AXIS:Ljava/lang/String; = "axis"

.field private static final blacklist TAG_FONT:Ljava/lang/String; = "font"

.field private static final blacklist VARIANT_COMPACT:Ljava/lang/String; = "compact"

.field private static final blacklist VARIANT_ELEGANT:Ljava/lang/String; = "elegant"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 253
    nop

    .line 254
    const-string v0, "^[ \\n\\r\\t]+|[ \\n\\r\\t]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 253
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist findUpdatedFontFile(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p0, "psName"    # Ljava/lang/String;
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

    .line 331
    .local p1, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    if-eqz p1, :cond_0

    .line 332
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 333
    .local v0, "updatedFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 337
    .end local v0    # "updatedFile":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 203
    .local v0, "next":I
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static greylist-max-r parse(Ljava/io/InputStream;)Landroid/text/FontConfig;
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 76
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v0, 0x0

    invoke-interface {v8, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 77
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 78
    new-instance v2, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v2}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    const-string v1, "/system/fonts/"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
    .locals 15
    .param p0, "fontsXmlPath"    # Ljava/lang/String;
    .param p1, "systemFontDir"    # Ljava/lang/String;
    .param p2, "oemCustomizationXmlPath"    # Ljava/lang/String;
    .param p3, "productFontDir"    # Ljava/lang/String;
    .param p5, "lastModifiedDate"    # J
    .param p7, "configVersion"    # I
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

    .line 104
    .local p4, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    move-object/from16 v1, p2

    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 106
    .local v2, "is":Ljava/io/InputStream;
    move-object/from16 v3, p3

    move-object/from16 v12, p4

    :try_start_1
    invoke-static {v2, v3, v12}, Landroid/graphics/fonts/FontCustomizationParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/fonts/FontCustomizationParser$Result;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .local v0, "oemCustomization":Landroid/graphics/fonts/FontCustomizationParser$Result;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    .end local v2    # "is":Ljava/io/InputStream;
    move-object v2, v0

    goto :goto_2

    .line 108
    .end local v0    # "oemCustomization":Landroid/graphics/fonts/FontCustomizationParser$Result;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 105
    .restart local v2    # "is":Ljava/io/InputStream;
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

    .end local p0    # "fontsXmlPath":Ljava/lang/String;
    .end local p1    # "systemFontDir":Ljava/lang/String;
    .end local p2    # "oemCustomizationXmlPath":Ljava/lang/String;
    .end local p3    # "productFontDir":Ljava/lang/String;
    .end local p4    # "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .end local p5    # "lastModifiedDate":J
    .end local p7    # "configVersion":I
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 108
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local p0    # "fontsXmlPath":Ljava/lang/String;
    .restart local p1    # "systemFontDir":Ljava/lang/String;
    .restart local p2    # "oemCustomizationXmlPath":Ljava/lang/String;
    .restart local p3    # "productFontDir":Ljava/lang/String;
    .restart local p4    # "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .restart local p5    # "lastModifiedDate":J
    .restart local p7    # "configVersion":I
    :catch_1
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v12, p4

    .line 110
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    new-instance v2, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v2}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    move-object v0, v2

    .line 111
    .local v0, "oemCustomization":Landroid/graphics/fonts/FontCustomizationParser$Result;
    goto :goto_2

    .line 113
    .end local v0    # "oemCustomization":Landroid/graphics/fonts/FontCustomizationParser$Result;
    :cond_0
    move-object/from16 v3, p3

    move-object/from16 v12, p4

    new-instance v0, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v0}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    move-object v2, v0

    .line 116
    .local v2, "oemCustomization":Landroid/graphics/fonts/FontCustomizationParser$Result;
    :goto_2
    new-instance v0, Ljava/io/FileInputStream;

    move-object v13, p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 117
    .local v14, "is":Ljava/io/InputStream;
    :try_start_5
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 118
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v0, v14, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 119
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 120
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

    .line 122
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 120
    return-object v4

    .line 116
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
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
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "to"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "toName":Ljava/lang/String;
    const-string/jumbo v3, "weight"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "weightStr":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 358
    const/16 v3, 0x190

    .local v3, "weight":I
    goto :goto_0

    .line 360
    .end local v3    # "weight":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 362
    .restart local v3    # "weight":I
    :goto_0
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 363
    new-instance v4, Landroid/text/FontConfig$Alias;

    invoke-direct {v4, v1, v2, v3}, Landroid/text/FontConfig$Alias;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4
.end method

.method private static greylist-max-o readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontVariationAxis;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    const/4 v0, 0x0

    const-string/jumbo v1, "tag"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "tagStr":Ljava/lang/String;
    const-string/jumbo v2, "stylevalue"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "styleValueStr":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 345
    new-instance v2, Landroid/graphics/fonts/FontVariationAxis;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    return-object v2
.end method

.method public static blacklist readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;
    .locals 16
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fontDir"    # Ljava/lang/String;
    .param p2, "customization"    # Landroid/graphics/fonts/FontCustomizationParser$Result;
    .param p4, "lastModifiedDate"    # J
    .param p6, "configVersion"    # I
    .param p7, "allowNonExistingFile"    # Z
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

    .line 150
    .local p3, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;->getAdditionalAliases()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v2

    .line 153
    .local v8, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    nop

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;->getAdditionalNamedFamilies()Ljava/util/Map;

    move-result-object v9

    .line 156
    .local v9, "oemNamedFamilies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/text/FontConfig$FontFamily;>;"
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "familyset"

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 158
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "family"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 161
    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p7

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;

    move-result-object v4

    .line 163
    .local v4, "family":Landroid/text/FontConfig$FontFamily;
    if-nez v4, :cond_1

    .line 164
    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 170
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v4    # "family":Landroid/text/FontConfig$FontFamily;
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    goto :goto_1

    :cond_4
    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p7

    const-string v4, "alias"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 173
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Alias;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 177
    .end local v3    # "tag":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 179
    :cond_6
    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p7

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v2

    .line 183
    .local v13, "namedFamilies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 184
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$FontFamily;

    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 186
    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v3    # "name":Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 189
    .end local v2    # "i":I
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    .line 190
    .local v14, "filtered":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 191
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$Alias;

    .line 192
    .local v3, "alias":Landroid/text/FontConfig$Alias;
    invoke-virtual {v3}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 193
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v3    # "alias":Landroid/text/FontConfig$Alias;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 197
    .end local v2    # "i":I
    :cond_a
    new-instance v15, Landroid/text/FontConfig;

    move-object v2, v15

    move-object v3, v1

    move-object v4, v14

    move-wide/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;JI)V

    return-object v15
.end method

.method public static blacklist readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fontDir"    # Ljava/lang/String;
    .param p3, "allowNonExistingFile"    # Z
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

    .line 218
    .local p2, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "name":Ljava/lang/String;
    const-string v2, ""

    const-string v3, "lang"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "lang":Ljava/lang/String;
    const-string/jumbo v3, "variant"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "variant":Ljava/lang/String;
    const-string v4, "ignore"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "ignore":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v5, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    :goto_0
    invoke-static {p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, "tag":Ljava/lang/String;
    const-string v7, "font"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/FontListParser;->readFont(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$Font;

    move-result-object v7

    .line 229
    .local v7, "font":Landroid/text/FontConfig$Font;
    if-eqz v7, :cond_1

    .line 230
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v7    # "font":Landroid/text/FontConfig$Font;
    :cond_1
    goto :goto_1

    .line 233
    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 235
    .end local v6    # "tag":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 236
    :cond_3
    const/4 v6, 0x0

    .line 237
    .local v6, "intVariant":I
    if-eqz v3, :cond_5

    .line 238
    const-string v7, "compact"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 239
    const/4 v6, 0x1

    goto :goto_2

    .line 240
    :cond_4
    const-string v7, "elegant"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 241
    const/4 v6, 0x2

    .line 245
    :cond_5
    :goto_2
    if-eqz v4, :cond_7

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    .line 246
    .local v7, "skip":Z
    :goto_3
    if-nez v7, :cond_9

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_4

    .line 249
    :cond_8
    new-instance v0, Landroid/text/FontConfig$FontFamily;

    invoke-static {v2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v8

    invoke-direct {v0, v5, v1, v8, v6}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/os/LocaleList;I)V

    return-object v0

    .line 247
    :cond_9
    :goto_4
    return-object v0
.end method

.method private static blacklist readFont(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$Font;
    .locals 23
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fontDir"    # Ljava/lang/String;
    .param p3, "allowNonExistingFile"    # Z
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

    .line 263
    .local p2, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string v3, "index"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "indexStr":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v11, v4

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v11, v5

    .line 265
    .local v11, "index":I
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v5, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    const-string/jumbo v6, "weight"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 267
    .local v14, "weightStr":Ljava/lang/String;
    if-nez v14, :cond_1

    const/16 v6, 0x190

    goto :goto_1

    :cond_1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_1
    move v15, v6

    .line 268
    .local v15, "weight":I
    const-string/jumbo v6, "style"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "italic"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 269
    .local v13, "isItalic":Z
    const-string v6, "fallbackFor"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 270
    .local v16, "fallbackFor":Ljava/lang/String;
    const-string/jumbo v6, "postScriptName"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "postScriptName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v7

    .line 272
    .local v12, "filename":Ljava/lang/StringBuilder;
    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_5

    .line 273
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v7, v8, :cond_2

    .line 274
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    goto :goto_2

    .line 277
    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, "tag":Ljava/lang/String;
    const-string v8, "axis"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 279
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 281
    :cond_4
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 283
    .end local v7    # "tag":Ljava/lang/String;
    :goto_3
    goto :goto_2

    .line 284
    :cond_5
    sget-object v7, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 286
    .local v10, "sanitizedName":Ljava/lang/String;
    if-nez v6, :cond_6

    .line 289
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v10, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    goto :goto_4

    .line 286
    :cond_6
    move-object v9, v6

    .line 292
    .end local v6    # "postScriptName":Ljava/lang/String;
    .local v9, "postScriptName":Ljava/lang/String;
    :goto_4
    move-object/from16 v8, p2

    invoke-static {v9, v8}, Landroid/graphics/FontListParser;->findUpdatedFontFile(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v17

    .line 295
    .local v17, "updatedName":Ljava/lang/String;
    if-eqz v17, :cond_7

    .line 296
    move-object/from16 v6, v17

    .line 297
    .local v6, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "originalPath":Ljava/lang/String;
    goto :goto_5

    .line 299
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "originalPath":Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 300
    .restart local v6    # "filePath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 304
    .restart local v7    # "originalPath":Ljava/lang/String;
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 305
    const-string v4, ""

    .local v4, "varSettings":Ljava/lang/String;
    goto :goto_6

    .line 307
    .end local v4    # "varSettings":Ljava/lang/String;
    :cond_8
    new-array v4, v4, [Landroid/graphics/fonts/FontVariationAxis;

    .line 308
    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/fonts/FontVariationAxis;

    .line 307
    invoke-static {v4}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;

    move-result-object v4

    .line 311
    .restart local v4    # "varSettings":Ljava/lang/String;
    :goto_6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    .end local v7    # "originalPath":Ljava/lang/String;
    .local v0, "originalPath":Ljava/lang/String;
    move-object v7, v2

    .line 313
    .local v7, "file":Ljava/io/File;
    if-nez p3, :cond_9

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_9

    .line 314
    const/4 v2, 0x0

    return-object v2

    .line 313
    :cond_9
    const/4 v2, 0x0

    .line 317
    new-instance v18, Landroid/text/FontConfig$Font;

    .line 318
    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_7
    move-object/from16 v19, v0

    .end local v0    # "originalPath":Ljava/lang/String;
    .local v19, "originalPath":Ljava/lang/String;
    new-instance v0, Landroid/graphics/fonts/FontStyle;

    .line 322
    invoke-direct {v0, v15, v13}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    move-object/from16 v20, v6

    .end local v6    # "filePath":Ljava/lang/String;
    .local v20, "filePath":Ljava/lang/String;
    move-object/from16 v6, v18

    move-object v8, v2

    move-object v2, v9

    .end local v9    # "postScriptName":Ljava/lang/String;
    .local v2, "postScriptName":Ljava/lang/String;
    move-object/from16 v21, v10

    .end local v10    # "sanitizedName":Ljava/lang/String;
    .local v21, "sanitizedName":Ljava/lang/String;
    move-object v10, v0

    move-object v0, v12

    .end local v12    # "filename":Ljava/lang/StringBuilder;
    .local v0, "filename":Ljava/lang/StringBuilder;
    move-object v12, v4

    move/from16 v22, v13

    .end local v13    # "isItalic":Z
    .local v22, "isItalic":Z
    move-object/from16 v13, v16

    invoke-direct/range {v6 .. v13}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;)V

    .line 317
    return-object v18
.end method

.method public static greylist-max-o skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    const/4 v0, 0x1

    .line 371
    .local v0, "depth":I
    :goto_0
    if-lez v0, :cond_0

    .line 372
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 377
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    .line 378
    goto :goto_1

    .line 374
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 375
    goto :goto_1

    .line 380
    :pswitch_2
    return-void

    :goto_1
    goto :goto_0

    .line 383
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
