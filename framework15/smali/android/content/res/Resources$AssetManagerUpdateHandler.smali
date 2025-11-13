.class public Landroid/content/res/Resources$AssetManagerUpdateHandler;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Landroid/content/res/Resources$UpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssetManagerUpdateHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/res/Resources;


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Resources;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/content/res/Resources$AssetManagerUpdateHandler;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onLoaderUpdated(Landroid/content/res/loader/ResourcesLoader;)V
    .locals 3

    iget-object v0, p0, Landroid/content/res/Resources$AssetManagerUpdateHandler;->this$0:Landroid/content/res/Resources;

    invoke-static {v0}, Landroid/content/res/Resources;->-$$Nest$fgetmResourcesImpl(Landroid/content/res/Resources;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLoaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->clearAllCaches()V

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLoaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->setLoaders(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public blacklist onLoadersChanged(Landroid/content/res/Resources;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/Resources$AssetManagerUpdateHandler;->this$0:Landroid/content/res/Resources;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Landroid/content/res/Resources$AssetManagerUpdateHandler;->this$0:Landroid/content/res/Resources;

    invoke-static {v0}, Landroid/content/res/Resources;->-$$Nest$fgetmResourcesImpl(Landroid/content/res/Resources;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->clearAllCaches()V

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->setLoaders(Ljava/util/List;)V

    return-void
.end method
