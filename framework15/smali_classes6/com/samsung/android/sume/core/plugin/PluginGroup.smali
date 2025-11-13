.class public abstract Lcom/samsung/android/sume/core/plugin/PluginGroup;
.super Ljava/lang/Object;
.source "PluginGroup.java"

# interfaces
.implements Lcom/samsung/android/sume/core/plugin/Plugin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/plugin/Plugin<",
        "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
        "*>;>;"
    }
.end annotation


# instance fields
.field protected blacklist plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/plugin/Plugin<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginGroup;->plugins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist addImgpPlugin(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/plugin/ImgpPlugin;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginGroup;->plugins:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/PluginAdapter;

    const-class v2, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/sume/core/plugin/PluginAdapter;-><init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addNNPlugin(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/plugin/NNPlugin;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginGroup;->plugins:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/PluginAdapter;

    const-class v2, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/sume/core/plugin/PluginAdapter;-><init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist bindToFixture(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use stream for PluginGroup"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/plugin/Plugin<",
            "+",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginGroup;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
