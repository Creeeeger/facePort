.class public final Landroid/graphics/fonts/SystemFonts;
.super Ljava/lang/Object;
.source "SystemFonts.java"


# static fields
.field private static final blacklist FONTS_ADDITIONAL_XML:Ljava/lang/String; = "/system/etc/fonts_additional.xml"

.field private static final blacklist FONTS_XML:Ljava/lang/String; = "/system/etc/fonts.xml"

.field private static final blacklist LOCK:Ljava/lang/Object;

.field public static final blacklist OEM_FONT_DIR:Ljava/lang/String; = "/product/fonts/"

.field private static final blacklist OEM_XML:Ljava/lang/String; = "/product/etc/fonts_customization.xml"

.field public static final blacklist SYSTEM_FONT_DIR:Ljava/lang/String; = "/system/fonts/"

.field private static final blacklist TAG:Ljava/lang/String; = "SystemFonts"

.field private static blacklist sAvailableFonts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist appendNamedFamily(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 4
    .param p0, "xmlFamily"    # Landroid/text/FontConfig$FontFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$FontFamily;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;>;)V"
        }
    .end annotation

    .line 205
    .local p1, "bufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .local p2, "fallbackListMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/graphics/fonts/FontFamily;>;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "familyName":Ljava/lang/String;
    nop

    .line 207
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v3

    .line 206
    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    .line 210
    .local v1, "family":Landroid/graphics/fonts/FontFamily;
    if-nez v1, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v2, "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontFamily;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {p2, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public static blacklist buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;
    .locals 1
    .param p0, "fontConfig"    # Landroid/text/FontConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p0, v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;
    .locals 7
    .param p0, "fontConfig"    # Landroid/text/FontConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation

    .line 293
    .local p1, "outBufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 294
    .local v0, "fallbackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v1

    .line 296
    .local v1, "xmlFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 298
    .local v2, "fallbackListMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/graphics/fonts/FontFamily;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$FontFamily;

    .line 299
    .local v4, "xmlFamily":Landroid/text/FontConfig$FontFamily;
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, "familyName":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 301
    goto :goto_0

    .line 303
    :cond_0
    invoke-static {v4, p1, v2}, Landroid/graphics/fonts/SystemFonts;->appendNamedFamily(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 304
    .end local v4    # "xmlFamily":Landroid/text/FontConfig$FontFamily;
    .end local v5    # "familyName":Ljava/lang/String;
    goto :goto_0

    .line 307
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 308
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$FontFamily;

    .line 311
    .restart local v4    # "xmlFamily":Landroid/text/FontConfig$FontFamily;
    if-eqz v3, :cond_2

    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 312
    :cond_2
    invoke-static {v4, v2, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 307
    .end local v4    # "xmlFamily":Landroid/text/FontConfig$FontFamily;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 317
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 318
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 319
    .local v4, "fallbackName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 320
    .local v5, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamily;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Landroid/graphics/fonts/FontFamily;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/graphics/fonts/FontFamily;

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .end local v4    # "fallbackName":Ljava/lang/String;
    .end local v5    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamily;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 323
    .end local v3    # "i":I
    :cond_5
    return-object v0
.end method

.method public static blacklist buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p0, "fontConfig"    # Landroid/text/FontConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .line 334
    .local p1, "fallbackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 335
    .local v0, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/graphics/Typeface;->initSystemDefaultTypefaces(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V

    .line 336
    return-object v0
.end method

.method private static blacklist createFontFamily(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/util/Map;)Landroid/graphics/fonts/FontFamily;
    .locals 8
    .param p0, "familyName"    # Ljava/lang/String;
    .param p2, "languageTags"    # Ljava/lang/String;
    .param p3, "variant"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/fonts/FontFamily;"
        }
    .end annotation

    .line 161
    .local p1, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    .local p4, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 162
    return-object v1

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 166
    .local v0, "b":Landroid/graphics/fonts/FontFamily$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 167
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$Font;

    .line 168
    .local v3, "fontConfig":Landroid/text/FontConfig$Font;
    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "fullPath":Ljava/lang/String;
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 170
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    if-nez v5, :cond_2

    .line 171
    invoke-interface {p4, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    goto :goto_1

    .line 174
    :cond_1
    invoke-static {v4}, Landroid/graphics/fonts/SystemFonts;->mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 175
    invoke-interface {p4, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    if-nez v5, :cond_2

    .line 177
    goto :goto_1

    .line 183
    :cond_2
    :try_start_0
    new-instance v6, Landroid/graphics/fonts/Font$Builder;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v5, v7, p2}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;Ljava/io/File;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 185
    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 186
    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 187
    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 188
    invoke-virtual {v6}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .local v6, "font":Landroid/graphics/fonts/Font;
    nop

    .line 193
    if-nez v0, :cond_3

    .line 194
    new-instance v7, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v7, v6}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v0, v7

    goto :goto_1

    .line 196
    :cond_3
    invoke-virtual {v0, v6}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    .line 166
    .end local v3    # "fontConfig":Landroid/text/FontConfig$Font;
    .end local v4    # "fullPath":Ljava/lang/String;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "font":Landroid/graphics/fonts/Font;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .restart local v3    # "fontConfig":Landroid/text/FontConfig$Font;
    .restart local v4    # "fullPath":Ljava/lang/String;
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 199
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "i":I
    .end local v3    # "fontConfig":Landroid/text/FontConfig$Font;
    .end local v4    # "fullPath":Ljava/lang/String;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    :cond_4
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/graphics/fonts/FontFamily$Builder;->build(Ljava/lang/String;IZ)Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public static whitelist getAvailableFonts()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation

    .line 75
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 77
    invoke-static {}, Landroid/graphics/fonts/Font;->getAvailableFonts()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    .line 79
    :cond_0
    sget-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getSpecificSalesCode()Z
    .locals 2

    .line 341
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "sales_code":Ljava/lang/String;
    const-string v1, "MYM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BKD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static blacklist getSystemFontConfig(Ljava/util/Map;JI)Landroid/text/FontConfig;
    .locals 9
    .param p1, "lastModifiedDate"    # J
    .param p3, "configVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .line 230
    .local p0, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSpecificSalesCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v1, "/system/etc/fonts_additional.xml"

    const-string v2, "/system/fonts/"

    const-string v3, "/product/etc/fonts_customization.xml"

    const-string v4, "/product/fonts/"

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    invoke-static/range {v1 .. v8}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    const-string v1, "/system/etc/fonts.xml"

    const-string v2, "/system/fonts/"

    const-string v3, "/product/etc/fonts_customization.xml"

    const-string v4, "/product/fonts/"

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    invoke-static/range {v1 .. v8}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
    .locals 9
    .param p0, "fontsXml"    # Ljava/lang/String;
    .param p1, "systemFontDir"    # Ljava/lang/String;
    .param p2, "oemXml"    # Ljava/lang/String;
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

    .line 269
    .local p4, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const-string v1, "SystemFonts"

    :try_start_0
    invoke-static/range {p0 .. p7}, Landroid/graphics/FontListParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 274
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 275
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "Failed to parse the system font configuration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    new-instance v1, Landroid/text/FontConfig;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;JI)V

    return-object v1

    .line 271
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 272
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Failed to open/read system font configurations."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    new-instance v1, Landroid/text/FontConfig;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;JI)V

    return-object v1
.end method

.method public static blacklist getSystemPreinstalledFontConfig()Landroid/text/FontConfig;
    .locals 9

    .line 248
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSpecificSalesCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v1, "/system/etc/fonts_additional.xml"

    const-string v2, "/system/fonts/"

    const-string v3, "/product/etc/fonts_customization.xml"

    const-string v4, "/product/fonts/"

    invoke-static/range {v1 .. v8}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v1, "/system/etc/fonts.xml"

    const-string v2, "/system/fonts/"

    const-string v3, "/product/etc/fonts_customization.xml"

    const-string v4, "/product/fonts/"

    invoke-static/range {v1 .. v8}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "fullPath"    # Ljava/lang/String;

    .line 93
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .local v0, "file":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 95
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    .line 96
    .local v5, "fontSize":J
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    return-object v2

    .line 93
    .end local v1    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v5    # "fontSize":J
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "fullPath":Ljava/lang/String;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 97
    .end local v0    # "file":Ljava/io/FileInputStream;
    .restart local p0    # "fullPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V
    .locals 11
    .param p0, "xmlFamily"    # Landroid/text/FontConfig$FontFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$FontFamily;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "fallbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/graphics/fonts/FontFamily;>;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "languageTags":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v1

    .line 109
    .local v1, "variant":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v2, "defaultFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 114
    .local v3, "specificFallbackFonts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 115
    .local v7, "font":Landroid/text/FontConfig$Font;
    invoke-virtual {v7}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "fallbackName":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 117
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_0
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 120
    .local v9, "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    if-nez v9, :cond_1

    .line 121
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    .line 122
    invoke-virtual {v3, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v7    # "font":Landroid/text/FontConfig$Font;
    .end local v8    # "fallbackName":Ljava/lang/String;
    .end local v9    # "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    .line 129
    :cond_3
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-static {v4, v2, v0, v1, p2}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object v4

    .line 132
    .local v4, "defaultFamily":Landroid/graphics/fonts/FontFamily;
    :goto_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 133
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 134
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 135
    .local v7, "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    if-nez v7, :cond_6

    .line 136
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "familyName":Ljava/lang/String;
    if-eqz v4, :cond_5

    if-eqz v8, :cond_4

    .line 139
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 140
    :cond_4
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v8    # "familyName":Ljava/lang/String;
    :cond_5
    goto :goto_4

    .line 143
    :cond_6
    nop

    .line 144
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v8

    .line 143
    invoke-static {v8, v7, v0, v1, p2}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object v8

    .line 145
    .local v8, "family":Landroid/graphics/fonts/FontFamily;
    if-eqz v8, :cond_7

    .line 146
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 147
    :cond_7
    if-eqz v4, :cond_8

    .line 148
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    .end local v8    # "family":Landroid/graphics/fonts/FontFamily;
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 154
    .end local v5    # "i":I
    :cond_9
    return-void
.end method

.method public static blacklist resetAvailableFonts()V
    .locals 2

    .line 87
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    .line 89
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
