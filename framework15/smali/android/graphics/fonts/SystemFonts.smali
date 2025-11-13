.class public final Landroid/graphics/fonts/SystemFonts;
.super Ljava/lang/Object;
.source "SystemFonts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;
    }
.end annotation


# static fields
.field private static final blacklist FONTS_ADDITIONAL_XML:Ljava/lang/String; = "/system/etc/fonts_additional.xml"

.field private static final blacklist FONTS_XML:Ljava/lang/String; = "/system/etc/font_fallback.xml"

.field private static final blacklist LEGACY_FONTS_XML:Ljava/lang/String; = "/system/etc/fonts.xml"

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

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist appendNamedFamilyList(Landroid/text/FontConfig$NamedFamilyList;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$NamedFamilyList;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/text/FontConfig$NamedFamilyList;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;-><init>(Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet-IA;)V

    invoke-virtual {p0}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/FontConfig$FontFamily;

    nop

    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v8

    invoke-static {v5, v2}, Landroid/graphics/fonts/SystemFonts;->resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    move-object v11, p1

    invoke-static/range {v6 .. v11}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v7, v1, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->seenXmlFamilies:Landroid/util/SparseIntArray;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static blacklist buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;
    .locals 1
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

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p0, v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;
    .locals 14
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

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    nop

    invoke-virtual {p0}, Landroid/text/FontConfig;->getLocaleFallbackCustomizations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$NamedFamilyList;

    invoke-static {v4, p1, v0}, Landroid/graphics/fonts/SystemFonts;->appendNamedFamilyList(Landroid/text/FontConfig$NamedFamilyList;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$FontFamily;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v8, v9, :cond_3

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    if-eq v11, v9, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/FontConfig$Customization$LocaleFallback;

    invoke-virtual {v7}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v11

    invoke-virtual {v9}, Landroid/text/FontConfig$Customization$LocaleFallback;->getScript()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/graphics/fonts/SystemFonts;->scriptMatch(Landroid/os/LocaleList;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v7, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    goto :goto_7

    :cond_4
    const/4 v8, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/FontConfig$Customization$LocaleFallback;

    invoke-virtual {v9}, Landroid/text/FontConfig$Customization$LocaleFallback;->getOperation()I

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v9}, Landroid/text/FontConfig$Customization$LocaleFallback;->getFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v11

    invoke-static {v11, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_8

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/text/FontConfig$Customization$LocaleFallback;

    invoke-virtual {v11}, Landroid/text/FontConfig$Customization$LocaleFallback;->getOperation()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    invoke-virtual {v11}, Landroid/text/FontConfig$Customization$LocaleFallback;->getFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v12

    invoke-static {v12, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    const/4 v8, 0x1

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    if-nez v8, :cond_9

    invoke-static {v7, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    :cond_9
    const/4 v9, 0x0

    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_b

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/text/FontConfig$Customization$LocaleFallback;

    invoke-virtual {v11}, Landroid/text/FontConfig$Customization$LocaleFallback;->getOperation()I

    move-result v12

    if-ne v12, v10, :cond_a

    invoke-virtual {v11}, Landroid/text/FontConfig$Customization$LocaleFallback;->getFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v12

    invoke-static {v12, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_c
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_d

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;

    iget-object v9, v9, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/graphics/fonts/FontFamily;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/graphics/fonts/FontFamily;

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_d
    return-object v6
.end method

.method public static blacklist buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
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

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/graphics/Typeface;->initSystemDefaultTypefaces(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V

    return-object v0
.end method

.method private static blacklist createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/fonts/FontFamily;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$Font;

    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    if-nez v5, :cond_2

    invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Landroid/graphics/fonts/SystemFonts;->mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {p5, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v6, Landroid/graphics/fonts/Font$Builder;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v5, v7, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/text/FontConfig$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-nez v0, :cond_3

    new-instance v7, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v7, v6}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v0, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v6}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_4
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move v7, p4

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/fonts/FontFamily$Builder;->build(Ljava/lang/String;IZZI)Landroid/graphics/fonts/FontFamily;

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

    sget-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/graphics/fonts/Font;->getAvailableFonts()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    :cond_0
    sget-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getSpecificSalesCode()Z
    .locals 2

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    if-nez v1, :cond_1

    const-string v1, "BCK"

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
    .locals 10
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

    invoke-static {}, Lcom/android/text/flags/Flags;->newFontsFallbackXml()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/system/etc/font_fallback.xml"

    goto :goto_0

    :cond_0
    const-string v0, "/system/etc/fonts.xml"

    :goto_0
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSpecificSalesCode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v4, "/product/etc/fonts_customization.xml"

    const-string v5, "/product/fonts/"

    const-string v2, "/system/etc/fonts_additional.xml"

    const-string v3, "/system/fonts/"

    move-object v6, p0

    move-wide v7, p1

    move v9, p3

    invoke-static/range {v2 .. v9}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v1

    return-object v1

    :cond_1
    const-string v3, "/product/etc/fonts_customization.xml"

    const-string v4, "/product/fonts/"

    const-string v2, "/system/fonts/"

    move-object v1, v0

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    invoke-static/range {v1 .. v8}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSystemFontConfigForTesting(Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    const-string v1, "/system/fonts/"

    move-object v0, p0

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
    .locals 12
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

    const-string v1, "SystemFonts"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading font config from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, p0

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p7}, Landroid/graphics/FontListParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_0
    const-string v3, "Failed to parse the system font configuration."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/text/FontConfig;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    return-object v1

    :catch_3
    move-exception v0

    move-object v2, p0

    :goto_1
    const-string v3, "Failed to open/read system font configurations."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/text/FontConfig;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    return-object v1
.end method

.method public static blacklist getSystemPreinstalledFontConfig()Landroid/text/FontConfig;
    .locals 10

    invoke-static {}, Lcom/android/text/flags/Flags;->newFontsFallbackXml()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/system/etc/font_fallback.xml"

    goto :goto_0

    :cond_0
    const-string v0, "/system/etc/fonts.xml"

    :goto_0
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSpecificSalesCode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-string v2, "/system/etc/fonts_additional.xml"

    const-string v3, "/system/fonts/"

    const-string v4, "/product/etc/fonts_customization.xml"

    const-string v5, "/product/fonts/"

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "/system/fonts/"

    const-string v3, "/product/etc/fonts_customization.xml"

    const-string v4, "/product/fonts/"

    const/4 v5, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSystemPreinstalledFontConfigFromLegacyXml()Landroid/text/FontConfig;
    .locals 8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v0, "/system/etc/fonts.xml"

    const-string v1, "/system/fonts/"

    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 7

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

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

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$FontFamily;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v3

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v3

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$FontFamily;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v12

    invoke-virtual {v11, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v0, v4}, Landroid/graphics/fonts/SystemFonts;->resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    move-object v3, v10

    move-object v4, v2

    move v5, v9

    move-object/from16 v8, p2

    invoke-static/range {v3 .. v8}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object v4

    :goto_2
    move-object v12, v4

    const/4 v3, 0x0

    move v13, v3

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v13, v3, :cond_8

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    iget-object v3, v15, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->seenXmlFamilies:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v8, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eq v3, v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v3, v15, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->seenXmlFamilies:Landroid/util/SparseIntArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v8, v4}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v11, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/util/ArrayList;

    if-nez v16, :cond_5

    if-eqz v12, :cond_7

    iget-object v3, v15, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    nop

    invoke-static {v0, v14}, Landroid/graphics/fonts/SystemFonts;->resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v3, v16

    move-object v4, v2

    move v5, v9

    move/from16 v17, v8

    move-object/from16 v8, p2

    invoke-static/range {v3 .. v8}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, v15, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    if-eqz v12, :cond_7

    iget-object v4, v15, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public static blacklist resetAvailableFonts()V
    .locals 2

    sget-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v6, :cond_6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/FontConfig$Font;

    if-nez p1, :cond_0

    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getVarTypeAxes()I

    move-result v9

    if-nez v9, :cond_2

    return v7

    :cond_2
    and-int/lit8 v7, v9, 0x1

    if-eqz v7, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    and-int/lit8 v7, v9, 0x2

    if-eqz v7, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v7

    if-ne v7, v8, :cond_5

    const/4 v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x2

    if-nez v1, :cond_8

    if-ne v2, v8, :cond_7

    if-ne v0, v8, :cond_7

    return v8

    :cond_7
    if-ne v2, v5, :cond_9

    if-ne v0, v5, :cond_9

    if-eqz v3, :cond_9

    const/4 v5, 0x3

    return v5

    :cond_8
    if-ne v1, v8, :cond_9

    if-ne v0, v8, :cond_9

    if-ne v2, v8, :cond_9

    return v5

    :cond_9
    return v7
.end method

.method private static blacklist scriptMatch(Landroid/os/LocaleList;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {v2}, Landroid/text/FontConfig;->resolveScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    return v5

    :cond_2
    const-string v4, "Bopo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "Hanb"

    if-eqz v4, :cond_3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v5

    :cond_3
    const-string v4, "Hani"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "Jpan"

    if-eqz v4, :cond_5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "Hans"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "Hant"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "Kore"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_4
    return v5

    :cond_5
    const-string v4, "Hira"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "Hrkt"

    if-nez v4, :cond_6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "Kana"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_2
    return v5

    :cond_9
    return v0

    :cond_a
    :goto_3
    return v0
.end method
