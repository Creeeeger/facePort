.class public Lcom/samsung/android/settings/wifi/FileProviderSender;
.super Landroidx/core/content/FileProvider;
.source "FileProviderSender.java"


# direct methods
.method public static getContentFileUri(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    .line 12
    invoke-static {p0, p1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
