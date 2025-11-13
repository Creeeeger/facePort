.class public Lcom/samsung/android/settings/flipfont/FlipFontReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlipFontReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlipFontToSetDisplayName:Ljava/lang/String;

.field private mFlipFontToSetName:Ljava/lang/String;

.field private mFlipFontToSetPKGName:Ljava/lang/String;

.field private mFontAPKAssetManager:Landroid/content/res/AssetManager;

.field private final mFontWriter:Lcom/samsung/android/fontutil/FontWriter;

.field private final mInstalledFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListIndex:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mTypeFace:Lcom/samsung/android/fontutil/SemTypeface;


# direct methods
.method public static synthetic $r8$lambda$MmY7Y0gpUmjUL9FEle2Upz9IHLw(Landroid/app/IActivityManager;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->lambda$updateConfiguration$0(Landroid/app/IActivityManager;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mInstalledFonts:Ljava/util/List;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    new-instance v0, Lcom/samsung/android/fontutil/FontWriter;

    invoke-direct {v0}, Lcom/samsung/android/fontutil/FontWriter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFontWriter:Lcom/samsung/android/fontutil/FontWriter;

    return-void
.end method

.method private copyFileWithCR(Lcom/samsung/android/fontutil/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/fonts/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 354
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :try_start_1
    invoke-virtual {p1, p2, p0, p5}, Lcom/samsung/android/fontutil/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 357
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 354
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot copy font file : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlipFontReceiver"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private copyFontFile(Landroid/content/pm/ApplicationInfo;)Z
    .locals 10

    const-string v0, "FlipFontReceiver"

    if-eqz p1, :cond_0

    .line 133
    :try_start_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFontAPKAssetManager:Landroid/content/res/AssetManager;

    .line 140
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetPKGName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Error processing font asset"

    .line 143
    invoke-static {v0, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFontWriter:Lcom/samsung/android/fontutil/FontWriter;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/fontutil/FontWriter;->createFontDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new dir : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 154
    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mTypeFace:Lcom/samsung/android/fontutil/SemTypeface;

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    .line 156
    iget-object v2, v2, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v8

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/fontutil/TypefaceFile;

    .line 158
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFontAPKAssetManager:Landroid/content/res/AssetManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/fontutil/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFontWriter:Lcom/samsung/android/fontutil/FontWriter;

    invoke-virtual {v3}, Lcom/samsung/android/fontutil/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v4, v6}, Lcom/samsung/android/fontutil/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 160
    invoke-virtual {v3}, Lcom/samsung/android/fontutil/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    .line 161
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v4, :cond_2

    .line 158
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 163
    :catch_1
    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFontWriter:Lcom/samsung/android/fontutil/FontWriter;

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetPKGName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/samsung/android/fontutil/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/fontutil/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, v4

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->copyFileWithCR(Lcom/samsung/android/fontutil/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v8

    :cond_4
    if-eqz v2, :cond_5

    return v8

    :cond_5
    if-eqz v1, :cond_6

    .line 173
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mTypeFace:Lcom/samsung/android/fontutil/SemTypeface;

    invoke-virtual {v1}, Lcom/samsung/android/fontutil/SemTypeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "font file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFontWriter:Lcom/samsung/android/fontutil/FontWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetDisplayName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V

    .line 181
    iget p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mListIndex:I

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->saveValues(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, "xml"

    .line 256
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    array-length v1, v0

    if-nez v1, :cond_0

    .line 263
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->findTypefacesWithCR(Ljava/lang/String;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 270
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 271
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xml/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    :try_start_2
    aget-object v3, v0, v1

    invoke-direct {p0, v3, v2, p2}, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 273
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 271
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v2

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not possible to open"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlipFontReceiver"

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    :cond_3
    return-void
.end method

.method private findTypefacesWithCR(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/fonts"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    .line 299
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v4, "\n"

    .line 302
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    if-eqz v4, :cond_3

    .line 308
    array-length v2, v4

    if-nez v2, :cond_1

    goto :goto_1

    .line 313
    :cond_1
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_2

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/xml/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 317
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 318
    aget-object v5, v4, v0

    invoke-direct {p0, v5, v2, p1}, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_1
    :cond_3
    :goto_1
    return v0
.end method

.method private getAllFontList()Z
    .locals 7

    const-string v0, "FlipFontReceiver"

    const/4 v1, 0x0

    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 211
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 212
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.monotype.android.font."

    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 216
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mInstalledFonts:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    iput-object v4, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetPKGName:Ljava/lang/String;

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "font PKG name is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetPKGName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    .line 226
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fonts : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mInstalledFonts:Ljava/util/List;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "font package not found. this shouldn\'t happen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method private static synthetic lambda$updateConfiguration$0(Landroid/app/IActivityManager;I)V
    .locals 1

    .line 120
    :try_start_0
    invoke-interface {p0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 121
    iput p1, v0, Landroid/content/res/Configuration;->FlipFont:I

    .line 122
    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot update Configuration : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlipFontReceiver"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    .line 330
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 333
    new-instance v1, Lcom/samsung/android/fontutil/TypefaceParser;

    invoke-direct {v1}, Lcom/samsung/android/fontutil/TypefaceParser;-><init>()V

    .line 334
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 335
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 336
    invoke-virtual {v1}, Lcom/samsung/android/fontutil/TypefaceParser;->getParsedData()Lcom/samsung/android/fontutil/SemTypeface;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mTypeFace:Lcom/samsung/android/fontutil/SemTypeface;

    const-string p2, "com.monotype.android.font.samsungone"

    .line 337
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 338
    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mTypeFace:Lcom/samsung/android/fontutil/SemTypeface;

    const-string p2, "SamsungOneUI-Regular.xml"

    invoke-virtual {p1, p2}, Lcom/samsung/android/fontutil/SemTypeface;->setTypefaceFilename(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mTypeFace:Lcom/samsung/android/fontutil/SemTypeface;

    invoke-virtual {p2, p1}, Lcom/samsung/android/fontutil/SemTypeface;->setTypefaceFilename(Ljava/lang/String;)V

    .line 342
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mTypeFace:Lcom/samsung/android/fontutil/SemTypeface;

    invoke-virtual {p1, p3}, Lcom/samsung/android/fontutil/SemTypeface;->setFontPackageName(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mTypeFace:Lcom/samsung/android/fontutil/SemTypeface;

    invoke-virtual {p1}, Lcom/samsung/android/fontutil/SemTypeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".xml"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetName:Ljava/lang/String;

    .line 344
    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mTypeFace:Lcom/samsung/android/fontutil/SemTypeface;

    invoke-virtual {p1}, Lcom/samsung/android/fontutil/SemTypeface;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetDisplayName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "File parsing is not possible"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlipFontReceiver"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private saveValues(ILjava/lang/String;)V
    .locals 2

    .line 235
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mContext:Landroid/content/Context;

    const-string v0, "prefs"

    const/4 v1, 0x0

    .line 236
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 239
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "SelectDialogIsActive"

    .line 241
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "SavedClickedItem"

    .line 243
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "selectedFont"

    .line 244
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "FlipFontReceiver"

    const-string p1, "error saving values"

    .line 248
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setFontIndex()Landroid/content/pm/ApplicationInfo;
    .locals 3

    const/4 v0, 0x0

    .line 189
    iput v0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mListIndex:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mListIndex:I

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mInstalledFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mInstalledFonts:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mListIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 192
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetName:Ljava/lang/String;

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget v1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mListIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mListIndex:I

    goto :goto_1

    .line 189
    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mListIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mListIndex:I

    goto :goto_0

    .line 200
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mListIndex:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FlipFontReceiver"

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private updateConfiguration()V
    .locals 3

    .line 116
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 118
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/settings/flipfont/FlipFontReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0}, Lcom/samsung/android/settings/flipfont/FlipFontReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/app/IActivityManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_5

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlipFontReceiver"

    if-nez v0, :cond_0

    const-string p0, "intent action is null."

    .line 68
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "samsung.settings.flipfont.APPLY_NEW_FONT"

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mContext:Landroid/content/Context;

    const-string v0, "flipfontName"

    .line 74
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetName:Ljava/lang/String;

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "font name is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p2, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetName:Ljava/lang/String;

    if-eqz p2, :cond_5

    const-string v0, "default"

    .line 77
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-string v0, " "

    if-eqz p2, :cond_1

    .line 78
    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFontWriter:Lcom/samsung/android/fontutil/FontWriter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/fontutil/FontWriter;->deleteFontDirectory(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFontWriter:Lcom/samsung/android/fontutil/FontWriter;

    const-string p2, "default#default"

    invoke-virtual {p1, p2}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->getAllFontList()Z

    move-result p2

    if-nez p2, :cond_2

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "There is no "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " font"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFlipFontToSetPKGName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isInvalidFont(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 95
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->mFontWriter:Lcom/samsung/android/fontutil/FontWriter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/fontutil/FontWriter;->deleteFontDirectory(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->setFontIndex()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->copyFontFile(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p0, "error file copy"

    .line 103
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->updateConfiguration()V

    :cond_5
    return-void
.end method
