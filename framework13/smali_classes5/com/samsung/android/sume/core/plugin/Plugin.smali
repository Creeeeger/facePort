.class public interface abstract Lcom/samsung/android/sume/core/plugin/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist bindToFixture(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
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

    .line 10
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/Plugin;, "Lcom/samsung/android/sume/core/plugin/Plugin<TT;>;"
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
