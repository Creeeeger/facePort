.class public Landroid/app/ResourcesManager$ApkAssetsSupplier;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ApkAssetsSupplier"
.end annotation


# instance fields
.field final blacklist mLocalCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ResourcesManager$ApkKey;",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/app/ResourcesManager;


# direct methods
.method protected constructor blacklist <init>(Landroid/app/ResourcesManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->this$0:Landroid/app/ResourcesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->mLocalCache:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method blacklist load(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->mLocalCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ApkAssets;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->this$0:Landroid/app/ResourcesManager;

    invoke-virtual {v1, p1}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->mLocalCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
