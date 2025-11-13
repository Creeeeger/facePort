.class public Landroid/content/om/wallpapertheme/ThemePalette;
.super Ljava/lang/Object;
.source "ThemePalette.java"


# instance fields
.field private blacklist TAG:Ljava/lang/String;

.field public blacklist mIsGray:Z

.field blacklist mMonetPaletteGG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mMonetPaletteSS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SWT_ThemePalette"

    iput-object v0, p0, Landroid/content/om/wallpapertheme/ThemePalette;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/om/wallpapertheme/ThemePalette;->mIsGray:Z

    return-void
.end method


# virtual methods
.method public blacklist getMonetColorGG(I)I
    .locals 1

    iget-object v0, p0, Landroid/content/om/wallpapertheme/ThemePalette;->mMonetPaletteGG:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/om/wallpapertheme/ThemePalette;->mMonetPaletteGG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMonetColorGG(II)I
    .locals 2

    mul-int/lit8 v0, p1, 0xd

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Landroid/content/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    return v1
.end method

.method public blacklist getMonetColorSS(I)I
    .locals 1

    iget-object v0, p0, Landroid/content/om/wallpapertheme/ThemePalette;->mMonetPaletteSS:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/om/wallpapertheme/ThemePalette;->mMonetPaletteSS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMonetColorSS(II)I
    .locals 2

    mul-int/lit8 v0, p1, 0xd

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Landroid/content/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    return v1
.end method

.method public blacklist getPaletteGG()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/om/wallpapertheme/ThemePalette;->mMonetPaletteGG:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPaletteSS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/om/wallpapertheme/ThemePalette;->mMonetPaletteSS:Ljava/util/List;

    return-object v0
.end method

.method public blacklist setPalette(Ljava/util/List;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/content/om/wallpapertheme/ThemePalette;->mMonetPaletteSS:Ljava/util/List;

    iput-object p2, p0, Landroid/content/om/wallpapertheme/ThemePalette;->mMonetPaletteGG:Ljava/util/List;

    iput-boolean p3, p0, Landroid/content/om/wallpapertheme/ThemePalette;->mIsGray:Z

    iget-object v0, p0, Landroid/content/om/wallpapertheme/ThemePalette;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "palette updated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist writeLastPalette()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/overlays/wallpapertheme/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    const/16 v2, 0x1ff

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/overlays/wallpapertheme/last_palette.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object v0, v3

    iget-object v3, p0, Landroid/content/om/wallpapertheme/ThemePalette;->mMonetPaletteSS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/content/om/wallpapertheme/ThemePalette;->mMonetPaletteGG:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-boolean v3, p0, Landroid/content/om/wallpapertheme/ThemePalette;->mIsGray:Z

    if-eqz v3, :cond_3

    const-string v3, "1"

    goto :goto_2

    :cond_3
    const-string v3, "0"

    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v1

    iget-object v2, p0, Landroid/content/om/wallpapertheme/ThemePalette;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_2
    iget-object v2, p0, Landroid/content/om/wallpapertheme/ThemePalette;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    iget-object v3, p0, Landroid/content/om/wallpapertheme/ThemePalette;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_5
    :goto_6
    nop

    :goto_7
    throw v1
.end method
