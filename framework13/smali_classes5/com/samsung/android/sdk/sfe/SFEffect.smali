.class public Lcom/samsung/android/sdk/sfe/SFEffect;
.super Ljava/lang/Object;
.source "SFEffect.java"


# static fields
.field public static blacklist DEBUG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SFEffect"

.field private static blacklist mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

.field private static blacklist mIsInitialized:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    .line 16
    sput-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mIsInitialized:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getFontManager()Lcom/samsung/android/sdk/sfe/font/FontManager;
    .locals 1

    .line 54
    sget-object v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    return-object v0
.end method

.method public static blacklist initialize()V
    .locals 3

    .line 19
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    .line 21
    const-string v1, "SFEffect"

    if-eqz v0, :cond_0

    const-string v0, "initialize"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mIsInitialized:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 24
    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Skip... Already init"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_1
    return-void

    .line 28
    :cond_2
    const-string v0, "SFEffect.fonteffect.samsung"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 29
    const-string v0, "SFEffect libraries is not loaded by loadLibrary!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void

    .line 33
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/sfe/font/FontManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/sfe/font/FontManager;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    .line 34
    sput-boolean v2, Lcom/samsung/android/sdk/sfe/SFEffect;->mIsInitialized:Z

    .line 35
    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "Initialization complete"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_4
    return-void
.end method

.method public static blacklist isInitialized()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mIsInitialized:Z

    return v0
.end method

.method public static blacklist loadLibrary(Ljava/lang/String;)Z
    .locals 4
    .param p0, "libraryName"    # Ljava/lang/String;

    .line 40
    const-string v0, "SFEffect"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const/4 v0, 0x1

    return v0

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "error":Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    .line 48
    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v1

    .line 42
    .end local v2    # "error":Ljava/lang/Error;
    :catch_1
    move-exception v2

    .line 43
    .local v2, "error":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v1
.end method
