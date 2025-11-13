.class public abstract Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;
.super Lcom/samsung/android/sume/core/filter/DecorateFilter;
.source "PluginDecorateFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
        "*>;>",
        "Lcom/samsung/android/sume/core/filter/DecorateFilter;"
    }
.end annotation


# instance fields
.field protected blacklist plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/PluginFixture;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 4
    .param p2, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "plugin",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ")V"
        }
    .end annotation

    .line 12
    .local p0, "this":Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;, "Lcom/samsung/android/sume/core/filter/PluginDecorateFilter<TT;>;"
    .local p1, "plugin":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "TT;"
    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;->plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    .line 17
    instance-of v0, p1, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    if-eqz v0, :cond_2

    .line 18
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/NNPlugin;->getExecuteDelegator()Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    move-result-object v0

    .line 19
    .local v0, "delegator":Lcom/samsung/android/sume/core/functional/ExecuteDelegator;
    if-eqz v0, :cond_2

    .line 20
    move-object v1, p2

    .line 21
    .local v1, "enclosedFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    instance-of v2, p2, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    if-eqz v2, :cond_0

    .line 22
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->getEnclosedFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v1

    .line 24
    :cond_0
    instance-of v2, v1, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    if-eqz v2, :cond_1

    .line 25
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sume/core/filter/NNFWFilter;->setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V

    goto :goto_0

    .line 26
    :cond_1
    instance-of v2, v1, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;

    if-eqz v2, :cond_2

    .line 27
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;

    new-instance v3, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->setMediaFilterUpdater(Ljava/util/function/Consumer;)V

    .line 33
    .end local v0    # "delegator":Lcom/samsung/android/sume/core/functional/ExecuteDelegator;
    .end local v1    # "enclosedFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1
    .param p0, "delegator"    # Lcom/samsung/android/sume/core/functional/ExecuteDelegator;
    .param p1, "mediaFilter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 28
    instance-of v0, p1, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/filter/NNFWFilter;->setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V

    .line 30
    :cond_0
    return-void
.end method
