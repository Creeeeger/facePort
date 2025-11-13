.class public Lcom/google/android/mms/util/DownloadDrmHelper;
.super Ljava/lang/Object;
.source "DownloadDrmHelper.java"


# static fields
.field public static final blacklist EXTENSION_DRM_MESSAGE:Ljava/lang/String; = ".dm"

.field public static final blacklist EXTENSION_INTERNAL_FWDL:Ljava/lang/String; = ".fl"

.field public static final blacklist MIMETYPE_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field private static final blacklist TAG:Ljava/lang/String; = "DownloadDrmHelper"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getOriginalMimeType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containingMime"    # Ljava/lang/String;

    .line 101
    const-string v0, "DownloadDrmHelper"

    move-object v1, p2

    .line 102
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Landroid/drm/DrmManagerClient;

    invoke-direct {v2, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 104
    .local v2, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 112
    :cond_0
    :goto_0
    goto :goto_1

    .line 110
    :catch_0
    move-exception v3

    .line 111
    .local v3, "ex":Ljava/lang/IllegalStateException;
    const-string v4, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    .end local v3    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    .line 108
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const-string v4, "Can\'t get original mime type since path is null or empty string."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 113
    :goto_1
    return-object v1
.end method

.method public static greylist isDrmConvertNeeded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimetype"    # Ljava/lang/String;

    .line 70
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDrmMimeType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimetype"    # Ljava/lang/String;

    .line 45
    const-string v0, "DownloadDrmHelper"

    const/4 v1, 0x0

    .line 46
    .local v1, "result":Z
    if-eqz p0, :cond_1

    .line 48
    :try_start_0
    new-instance v2, Landroid/drm/DrmManagerClient;

    invoke-direct {v2, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 49
    .local v2, "drmClient":Landroid/drm/DrmManagerClient;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 50
    const-string v3, ""

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 57
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :cond_0
    :goto_0
    goto :goto_1

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 52
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmManagerClient instance could not be created, context is Illegal."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    return v1
.end method

.method public static greylist-max-r modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 79
    if-eqz p0, :cond_1

    .line 81
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "extensionIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 85
    :cond_0
    const-string v1, ".fl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    .end local v0    # "extensionIndex":I
    :cond_1
    return-object p0
.end method
