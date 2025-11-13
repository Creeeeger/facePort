.class public Landroid/content/APKContents;
.super Ljava/lang/Object;
.source "APKContents.java"


# static fields
.field public static final blacklist MAIN_PACKAGE_DIR:Ljava/lang/String; = "/data/overlays/main_packages/"


# instance fields
.field private blacklist mAssetManager:Landroid/content/res/AssetManager;

.field private blacklist mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APKContents#Constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {p1}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v2

    new-instance v3, Landroid/content/res/AssetManager$Builder;

    invoke-direct {v3}, Landroid/content/res/AssetManager$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;

    invoke-virtual {v3}, Landroid/content/res/AssetManager$Builder;->build()Landroid/content/res/AssetManager;

    move-result-object v4

    iput-object v4, p0, Landroid/content/APKContents;->mAssetManager:Landroid/content/res/AssetManager;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v4}, Landroid/util/DisplayMetrics;->setToDefaults()V

    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/Configuration;->setToDefaults()V

    new-instance v6, Landroid/content/res/ResourcesImpl;

    iget-object v7, p0, Landroid/content/APKContents;->mAssetManager:Landroid/content/res/AssetManager;

    new-instance v8, Landroid/view/DisplayAdjustments;

    invoke-direct {v8}, Landroid/view/DisplayAdjustments;-><init>()V

    invoke-direct {v6, v7, v4, v5, v8}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    new-instance v7, Landroid/content/res/Resources;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v7, p0, Landroid/content/APKContents;->mResources:Landroid/content/res/Resources;

    iget-object v7, p0, Landroid/content/APKContents;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public static blacklist getCurrentThemePackagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/overlays/currentstyle/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMainThemePackagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/overlays/main_packages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Landroid/content/APKContents;->mAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public blacklist getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Landroid/content/APKContents;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method
