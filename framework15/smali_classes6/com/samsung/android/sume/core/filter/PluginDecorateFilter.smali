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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;->plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    instance-of v0, p1, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/NNPlugin;->getExecuteDelegator()Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, p2

    instance-of v2, p2, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->getEnclosedFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v1

    :cond_0
    instance-of v2, v1, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sume/core/filter/NNFWFilter;->setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;

    new-instance v3, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->setMediaFilterUpdater(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/filter/NNFWFilter;->setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V

    :cond_0
    return-void
.end method
