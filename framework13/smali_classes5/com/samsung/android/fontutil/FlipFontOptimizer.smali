.class public Lcom/samsung/android/fontutil/FlipFontOptimizer;
.super Ljava/lang/Object;
.source "FlipFontOptimizer.java"


# static fields
.field private static final blacklist FONT_NOTSUPPORT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font.droidserifitalic"

.field private static final blacklist FONT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font."

.field private static final blacklist KEY_PREFERENCE:Ljava/lang/String; = "MONOTYPE"

.field private static final blacklist PRIVATE_PREFERENCES:Ljava/lang/String; = "prefs"

.field private static final blacklist SETTINGS_APP_PKGNAME:Ljava/lang/String; = "com.android.settings"

.field private static final blacklist TAG:Ljava/lang/String; = "FlipFontOptimizer"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mContext:Landroid/content/Context;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    return-void
.end method

.method private blacklist getFontString()[Ljava/lang/String;
    .locals 4

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/fontutil/FlipFontOptimizer;->getFontsVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 219
    .local v0, "fontNames":Ljava/util/ArrayList;
    if-nez v0, :cond_0

    .line 220
    const/4 v1, 0x0

    return-object v1

    .line 222
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 224
    .local v1, "retString":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 225
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private blacklist getFontsVector()Ljava/util/ArrayList;
    .locals 16

    .line 231
    move-object/from16 v1, p0

    new-instance v0, Lcom/samsung/android/fontutil/TypefaceFinder;

    invoke-direct {v0}, Lcom/samsung/android/fontutil/TypefaceFinder;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    .line 233
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v7, "fontPackageNames":Ljava/util/ArrayList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v5, "fontNames":Ljava/util/ArrayList;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v6, "typefaceFiles":Ljava/util/ArrayList;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 241
    .local v8, "token":J
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 242
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    move-object v10, v3

    .line 245
    .local v10, "installedApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 246
    .local v4, "installedAppInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 247
    .local v11, "fontPackageName":Ljava/lang/String;
    const-string v12, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "com.monotype.android.font."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 248
    invoke-virtual {v0, v11, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 249
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v13, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v13, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 250
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v13

    .line 251
    .local v13, "res":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    .line 252
    .local v14, "fontAssetManager":Landroid/content/res/AssetManager;
    iget-object v15, v1, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    iget-object v2, v1, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v2, v14, v11}, Lcom/samsung/android/fontutil/TypefaceFinder;->findTypefaces(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 254
    .end local v4    # "installedAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "fontPackageName":Ljava/lang/String;
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v14    # "fontAssetManager":Landroid/content/res/AssetManager;
    :cond_0
    const/16 v2, 0x80

    goto :goto_0

    .line 255
    :cond_1
    iget-object v2, v1, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    iget-object v3, v1, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/fontutil/TypefaceFinder;->getSansEntries(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v10    # "installedApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    move-object v0, v5

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "FlipFontOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot make a Installed Font List : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    const/4 v0, 0x0

    .line 260
    .end local v5    # "fontNames":Ljava/util/ArrayList;
    .local v0, "fontNames":Ljava/util/ArrayList;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    nop

    .line 262
    :goto_1
    return-object v0

    .line 260
    .end local v0    # "fontNames":Ljava/util/ArrayList;
    .restart local v5    # "fontNames":Ljava/util/ArrayList;
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    throw v0
.end method

.method private blacklist savePreferences(Ljava/lang/String;I)V
    .locals 9
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "mode":I
    const/4 v1, 0x0

    .line 186
    .local v1, "settingContext":Landroid/content/Context;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v1, :cond_0

    .line 193
    const-string v2, "FlipFontOptimizer"

    const-string v3, "Setting Context is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 197
    :cond_0
    const-string/jumbo v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 199
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 200
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v4, 0x0

    const-string v5, "SelectDialogIsActive"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 201
    const-string v4, "SavedClickedItem"

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    const-string/jumbo v4, "selectedFont"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 206
    .local v4, "token":J
    iget-object v6, p0, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "flip_font_style"

    invoke-static {v6, v7, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_preferences"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "prefName":Ljava/lang/String;
    invoke-virtual {v1, v6, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 211
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 212
    .local v7, "editor1":Landroid/content/SharedPreferences$Editor;
    const-string v8, "MONOTYPE"

    invoke-interface {v7, v8, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void
.end method

.method private blacklist setFlipfont(Landroid/content/Context;Ljava/lang/String;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fontName"    # Ljava/lang/String;

    .line 65
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    iput-object v3, v1, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/samsung/android/fontutil/FontWriter;

    invoke-direct {v0}, Lcom/samsung/android/fontutil/FontWriter;-><init>()V

    move-object v4, v0

    .line 68
    .local v4, "fontWriter":Lcom/samsung/android/fontutil/FontWriter;
    iget-object v0, v1, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 70
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/fontutil/FlipFontOptimizer;->getFontString()[Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "installedFontList":[Ljava/lang/String;
    const-string v7, "FlipFontOptimizer"

    if-nez v6, :cond_0

    .line 73
    const-string v0, "changeFont():Installed font list is null"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 78
    .local v0, "index":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v6

    if-ge v8, v9, :cond_2

    .line 79
    aget-object v9, v6, v8

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 80
    move v0, v8

    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "index"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    goto :goto_1

    .line 78
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move v8, v0

    .line 86
    .end local v0    # "index":I
    .local v8, "index":I
    :goto_1
    const-string v0, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    const-string v0, "default#default"

    invoke-virtual {v4, v0}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V

    .line 89
    aget-object v0, v6, v8

    invoke-direct {v1, v0, v8}, Lcom/samsung/android/fontutil/FlipFontOptimizer;->savePreferences(Ljava/lang/String;I)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "default font is selected..."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 94
    :cond_3
    iget-object v0, v1, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    invoke-virtual {v0, v2}, Lcom/samsung/android/fontutil/TypefaceFinder;->findMatchingTypefaceByName(Ljava/lang/String;)Lcom/samsung/android/fontutil/SemTypeface;

    move-result-object v9

    .line 95
    .local v9, "sansTypeface":Lcom/samsung/android/fontutil/SemTypeface;
    if-nez v9, :cond_4

    .line 96
    const-string v0, "change font failed"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 100
    :cond_4
    invoke-virtual {v9}, Lcom/samsung/android/fontutil/SemTypeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "apkPath":Ljava/lang/String;
    if-eqz v10, :cond_5

    const-string v0, "com.monotype.android.font."

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 102
    return-void

    .line 104
    :cond_5
    invoke-virtual {v9}, Lcom/samsung/android/fontutil/SemTypeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v11

    .line 107
    .local v11, "selectedFont":Ljava/lang/String;
    const-string v0, ".xml"

    const-string v12, ""

    invoke-virtual {v11, v0, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "fontdir":Ljava/lang/String;
    const-string v12, " "

    const-string v13, "-"

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 110
    .end local v0    # "fontdir":Ljava/lang/String;
    .local v12, "fontdir":Ljava/lang/String;
    invoke-virtual {v4, v12}, Lcom/samsung/android/fontutil/FontWriter;->createFontDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 111
    .local v13, "fontDir":Ljava/io/File;
    if-nez v13, :cond_6

    .line 112
    const-string v0, "create fontDir object is null "

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 116
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 117
    .local v14, "token":J
    iget-object v0, v9, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/fontutil/TypefaceFile;

    .line 120
    .local v16, "typefaceFile":Lcom/samsung/android/fontutil/TypefaceFile;
    :try_start_0
    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v17

    .line 121
    .local v17, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    move-object/from16 v19, v18

    .line 122
    .local v19, "assetManager":Landroid/content/res/AssetManager;
    move-object/from16 v18, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fonts/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/fontutil/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v19

    .end local v19    # "assetManager":Landroid/content/res/AssetManager;
    .local v3, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 123
    .local v0, "in":Ljava/io/InputStream;
    move-object/from16 v19, v3

    .end local v3    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v19    # "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/fontutil/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v13, v0, v3}, Lcom/samsung/android/fontutil/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 124
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v17    # "res":Landroid/content/res/Resources;
    .end local v19    # "assetManager":Landroid/content/res/AssetManager;
    nop

    .line 130
    .end local v16    # "typefaceFile":Lcom/samsung/android/fontutil/TypefaceFile;
    move-object/from16 v3, p1

    move-object/from16 v0, v18

    goto :goto_2

    .line 125
    .restart local v16    # "typefaceFile":Lcom/samsung/android/fontutil/TypefaceFile;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .local v17, "packageManager":Landroid/content/pm/PackageManager;
    const-string v5, "Cannot copy FontFile from AssetManager, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    return-void

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "typefaceFile":Lcom/samsung/android/fontutil/TypefaceFile;
    .end local v17    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_7
    move-object/from16 v17, v5

    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v17    # "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v9}, Lcom/samsung/android/fontutil/SemTypeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v8}, Lcom/samsung/android/fontutil/FlipFontOptimizer;->savePreferences(Ljava/lang/String;I)V

    .line 139
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 140
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 141
    .local v3, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/content/res/Configuration;->FlipFont:I

    .line 142
    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    nop

    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v3    # "config":Landroid/content/res/Configuration;
    goto :goto_3

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update Configuration : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    iget-object v0, v1, Lcom/samsung/android/fontutil/FlipFontOptimizer;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 149
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 151
    .local v3, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 152
    .local v1, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "s":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v16, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v1, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_b

    .line 155
    const-string v1, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_b

    .line 156
    const-string v1, "com.samsung.music"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_b

    .line 157
    const-string v1, "com.sec.android.app.music"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_b

    .line 158
    const-string v1, "com.infraware.polarisoffice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    .line 159
    const-string v1, "com.infraware.polarisoffice4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    .line 160
    const-string v1, "com.infraware.polarisviewer4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    .line 161
    const-string v1, "com.infraware.PolarisOfficeStdForTablet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    .line 162
    const-string v1, "com.infraware.polarisviewer5tablet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    .line 163
    const-string v1, "com.infraware.polarisoffice5tablet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    .line 164
    const-string v1, "com.infraware.polarisoffice4.document"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    .line 165
    const-string v1, "com.infraware.polarisoffice5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    .line 166
    const-string v1, "com.infraware.polarisoffice5.document"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    .line 167
    const-string v1, "com.infraware.polarisviewer5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    .line 168
    const-string v1, "com.infraware.polarisviewer5.document"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    .line 171
    :cond_8
    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 172
    const-string v1, "com.sec.android.app.camera == 0"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 174
    :cond_9
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_6

    .line 169
    :cond_a
    :goto_5
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 178
    .end local v2    # "s":Ljava/lang/String;
    .end local v16    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_b
    :goto_6
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    goto/16 :goto_4

    .line 179
    :cond_c
    return-void
.end method


# virtual methods
.method public blacklist setFlipfont(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SetupWizard_ConfigStepSequenceType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "sOverrideFont":Ljava/lang/String;
    invoke-static {}, Landroid/graphics/Typeface;->getFontNameFlipFont()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "currentFontName":Ljava/lang/String;
    const-string v2, "ThomBrowne"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const-string v2, "ArialNarrowProRegular"

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/fontutil/FlipFontOptimizer;->setFlipfont(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method
