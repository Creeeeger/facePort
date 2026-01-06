.class public Landroidx/core/graphics/TypefaceCompatApi29Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi29Impl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "familyEntry",
            "resources",
            "style"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_2

    aget-object v7, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v8, Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v9

    invoke-direct {v8, p3, v9}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    move v6, v4

    :goto_1
    invoke-virtual {v8, v6}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v6

    if-nez v0, :cond_1

    new-instance v8, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v8, v6}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v0, v8

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v6}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v6

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    return-object v1

    :cond_3
    :try_start_2
    new-instance v2, Landroid/graphics/fonts/FontStyle;

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4

    const/16 v3, 0x2bc

    goto :goto_4

    :cond_4
    const/16 v3, 0x190

    :goto_4
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_5

    move v4, v6

    goto :goto_5

    :cond_5
    nop

    :goto_5
    invoke-direct {v2, v3, v4}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    new-instance v3, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    return-object v1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cancellationSignal",
            "fonts",
            "style"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    array-length v3, p3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_6

    aget-object v7, p3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v7}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v8

    const-string v9, "r"

    invoke-virtual {v1, v8, v9, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    if-nez v8, :cond_1

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    goto :goto_4

    :cond_1
    :try_start_2
    new-instance v9, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v9, v8}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v7}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v9

    invoke-virtual {v7}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    invoke-virtual {v9, v6}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v6

    if-nez v0, :cond_3

    new-instance v9, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v9, v6}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v0, v9

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v6}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v8, :cond_4

    :try_start_3
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    goto :goto_4

    :catchall_0
    move-exception v6

    if-eqz v8, :cond_5

    :try_start_4
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v9

    :try_start_5
    invoke-virtual {v6, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v6

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    return-object v2

    :cond_7
    :try_start_6
    new-instance v3, Landroid/graphics/fonts/FontStyle;

    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_8

    const/16 v5, 0x2bc

    goto :goto_5

    :cond_8
    const/16 v5, 0x190

    :goto_5
    and-int/lit8 v7, p4, 0x2

    if-eqz v7, :cond_9

    move v4, v6

    goto :goto_6

    :cond_9
    nop

    :goto_6
    invoke-direct {v3, v5, v4}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    new-instance v4, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    return-object v2

    :catch_1
    move-exception v3

    return-object v2
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "is"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do not use this function in API 29 or later."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resources",
            "id",
            "path",
            "style"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v2, p2, p3}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v2}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v2, v1}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    move-object v0, v2

    new-instance v2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v2, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    return-object v3
.end method

.method protected findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fonts",
            "style"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do not use this function in API 29 or later."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
