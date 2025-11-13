.class public Lcom/samsung/android/sume/core/plugin/NNPlugin;
.super Lcom/samsung/android/sume/core/plugin/PluginFixture;
.source "NNPlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
        "Lcom/samsung/android/sume/core/plugin/NNPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

.field private blacklist modelLoader:Lcom/samsung/android/sume/core/functional/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sume/core/functional/ModelLoader<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist modelPathLoader:Lcom/samsung/android/sume/core/functional/ModelPathLoader;

.field private blacklist modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

.field private blacklist postExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

.field private blacklist preExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/Plugin<",
            "Lcom/samsung/android/sume/core/plugin/NNPlugin;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/PluginFixture;-><init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V

    return-void
.end method


# virtual methods
.method public blacklist getExecuteDelegator()Lcom/samsung/android/sume/core/functional/ExecuteDelegator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    return-object v0
.end method

.method public blacklist getModelLoader()Lcom/samsung/android/sume/core/functional/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sume/core/functional/ModelLoader<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelLoader:Lcom/samsung/android/sume/core/functional/ModelLoader;

    return-object v0
.end method

.method public blacklist getModelPathLoader()Lcom/samsung/android/sume/core/functional/ModelPathLoader;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelPathLoader:Lcom/samsung/android/sume/core/functional/ModelPathLoader;

    return-object v0
.end method

.method public blacklist getModelSelector()Lcom/samsung/android/sume/core/functional/ModelSelector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    return-object v0
.end method

.method public blacklist getPostExecutor()Lcom/samsung/android/sume/core/functional/BufferProcessor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->postExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

    return-object v0
.end method

.method public blacklist getPreExecutor()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/samsung/android/sume/core/functional/BufferProcessor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->preExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    return-void
.end method

.method public blacklist setModelLoader(Lcom/samsung/android/sume/core/functional/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/functional/ModelLoader<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelLoader:Lcom/samsung/android/sume/core/functional/ModelLoader;

    return-void
.end method

.method public blacklist setModelPathLoader(Lcom/samsung/android/sume/core/functional/ModelPathLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelPathLoader:Lcom/samsung/android/sume/core/functional/ModelPathLoader;

    return-void
.end method

.method public blacklist setModelSelector(Lcom/samsung/android/sume/core/functional/ModelSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    return-void
.end method

.method public blacklist setPostExecutor(Lcom/samsung/android/sume/core/functional/BufferProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->postExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

    return-void
.end method

.method public blacklist setPreExecutor(Lcom/samsung/android/sume/core/functional/BufferProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->preExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

    return-void
.end method

.method public blacklist validate()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelLoader:Lcom/samsung/android/sume/core/functional/ModelLoader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelPathLoader:Lcom/samsung/android/sume/core/functional/ModelPathLoader;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
