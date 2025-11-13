.class public Lcom/samsung/android/app/SemWallpaperUtils;
.super Ljava/lang/Object;
.source "SemWallpaperUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static blacklist decodeFileConsiderQMG(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "fis":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 80
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/SemWallpaperUtils;->decodeStreamConsiderQMG(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    nop

    .line 86
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 84
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 81
    :catch_1
    move-exception v2

    .line 82
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_0

    .line 86
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 89
    :goto_1
    goto :goto_2

    .line 87
    :catch_2
    move-exception v2

    .line 88
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 92
    :cond_0
    :goto_2
    return-object v1

    .line 84
    :goto_3
    if-eqz v0, :cond_1

    .line 86
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 89
    goto :goto_4

    .line 87
    :catch_3
    move-exception v2

    .line 88
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    throw v1
.end method

.method public static blacklist decodeStreamConsiderQMG(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "result":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 102
    .local v1, "bis":Ljava/io/BufferedInputStream;
    invoke-static {v1}, Lcom/samsung/android/app/SemWallpaperUtils;->isQMG(Ljava/io/BufferedInputStream;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    :try_start_0
    const-string v2, "android.graphics.BitmapFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 105
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "decodeStreamQMG"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/io/InputStream;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/graphics/Rect;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 107
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 108
    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    aput-object p1, v4, v8

    aput-object p2, v4, v9

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 109
    :catch_1
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    goto :goto_1

    .line 115
    :cond_0
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    :goto_1
    return-object v0
.end method

.method private static blacklist isQMG(Ljava/io/BufferedInputStream;)Z
    .locals 3
    .param p0, "bis"    # Ljava/io/BufferedInputStream;

    .line 159
    if-eqz p0, :cond_1

    .line 160
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 162
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 163
    .local v0, "byte1":I
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .line 164
    .local v1, "byte2":I
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    const/16 v2, 0x51

    if-ne v0, v2, :cond_0

    const/16 v2, 0x47

    if-ne v1, v2, :cond_0

    .line 167
    const/4 v2, 0x1

    return v2

    .line 171
    .end local v0    # "byte1":I
    .end local v1    # "byte2":I
    :cond_0
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist newRegionDecoder(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "decoder":Landroid/graphics/BitmapRegionDecoder;
    invoke-static {v0}, Lcom/samsung/android/app/SemWallpaperUtils;->isQMG(Ljava/io/BufferedInputStream;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 130
    :try_start_1
    const-string v3, "android.graphics.BitmapRegionDecoder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 131
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "newInstanceQMG"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/io/InputStream;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 132
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 133
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v5

    goto :goto_0

    .line 136
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 134
    :catch_1
    move-exception v3

    .line 135
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    move-object v2, v1

    .line 138
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    goto :goto_1

    .line 140
    :cond_0
    invoke-static {v0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v1

    .line 142
    :goto_1
    nop

    .line 146
    nop

    .line 148
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 151
    goto :goto_2

    .line 149
    :catch_2
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v2

    .line 146
    .end local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 143
    :catch_3
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 148
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 151
    :goto_3
    goto :goto_4

    .line 149
    :catch_4
    move-exception v2

    .line 150
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 155
    :cond_1
    :goto_4
    return-object v1

    .line 146
    :goto_5
    if-eqz v0, :cond_2

    .line 148
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 151
    goto :goto_6

    .line 149
    :catch_5
    move-exception v2

    .line 150
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_6
    throw v1
.end method

.method public static whitelist startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pathValue"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    .line 57
    .local v0, "wallpaperBackupRestoreManager":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static whitelist startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pathValue"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    .line 70
    .local v0, "wallpaperBackupRestoreManager":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
