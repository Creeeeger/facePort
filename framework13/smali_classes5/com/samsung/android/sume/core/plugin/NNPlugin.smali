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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/Plugin<",
            "Lcom/samsung/android/sume/core/plugin/NNPlugin;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "plugin":Lcom/samsung/android/sume/core/plugin/Plugin;, "Lcom/samsung/android/sume/core/plugin/Plugin<Lcom/samsung/android/sume/core/plugin/NNPlugin;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/PluginFixture;-><init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V

    .line 23
    return-void
.end method


# virtual methods
.method public blacklist getExecuteDelegator()Lcom/samsung/android/sume/core/functional/ExecuteDelegator;
    .locals 1

    .line 64
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

    .line 31
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelLoader:Lcom/samsung/android/sume/core/functional/ModelLoader;

    return-object v0
.end method

.method public blacklist getModelPathLoader()Lcom/samsung/android/sume/core/functional/ModelPathLoader;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelPathLoader:Lcom/samsung/android/sume/core/functional/ModelPathLoader;

    return-object v0
.end method

.method public blacklist getModelSelector()Lcom/samsung/android/sume/core/functional/ModelSelector;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    return-object v0
.end method

.method public blacklist getPostExecutor()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/samsung/android/sume/core/functional/BufferProcessor;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->postExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

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

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->preExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V
    .locals 0
    .param p1, "executeDelegator"    # Lcom/samsung/android/sume/core/functional/ExecuteDelegator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executeDelegator"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    .line 69
    return-void
.end method

.method public blacklist setModelLoader(Lcom/samsung/android/sume/core/functional/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelLoader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/functional/ModelLoader<",
            "Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "modelLoader":Lcom/samsung/android/sume/core/functional/ModelLoader;, "Lcom/samsung/android/sume/core/functional/ModelLoader<Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelLoader:Lcom/samsung/android/sume/core/functional/ModelLoader;

    .line 36
    return-void
.end method

.method public blacklist setModelPathLoader(Lcom/samsung/android/sume/core/functional/ModelPathLoader;)V
    .locals 0
    .param p1, "modelPathLoader"    # Lcom/samsung/android/sume/core/functional/ModelPathLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelPathLoader"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelPathLoader:Lcom/samsung/android/sume/core/functional/ModelPathLoader;

    .line 44
    return-void
.end method

.method public blacklist setModelSelector(Lcom/samsung/android/sume/core/functional/ModelSelector;)V
    .locals 0
    .param p1, "modelSelector"    # Lcom/samsung/android/sume/core/functional/ModelSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelSelector"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->modelSelector:Lcom/samsung/android/sume/core/functional/ModelSelector;

    .line 48
    return-void
.end method

.method public blacklist setPostExecutor(Lcom/samsung/android/sume/core/functional/BufferProcessor;)V
    .locals 0
    .param p1, "postExecutor"    # Lcom/samsung/android/sume/core/functional/BufferProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postExecutor"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->postExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

    .line 77
    return-void
.end method

.method public blacklist setPreExecutor(Lcom/samsung/android/sume/core/functional/BufferProcessor;)V
    .locals 0
    .param p1, "preExecutor"    # Lcom/samsung/android/sume/core/functional/BufferProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preExecutor"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NNPlugin;->preExecutor:Lcom/samsung/android/sume/core/functional/BufferProcessor;

    .line 60
    return-void
.end method

.method public blacklist validate()Z
    .locals 1

    .line 27
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
