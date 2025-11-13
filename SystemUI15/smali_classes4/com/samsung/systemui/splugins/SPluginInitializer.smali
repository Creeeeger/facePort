.class public interface abstract Lcom/samsung/systemui/splugins/SPluginInitializer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract getAllowedPlugins(Landroid/content/Context;)[Ljava/lang/String;
.end method

.method public abstract getBgLooper()Landroid/os/Looper;
.end method

.method public abstract getPluginEnabler(Landroid/content/Context;)Lcom/samsung/systemui/splugins/SPluginEnabler;
.end method

.method public abstract handleWtfs()V
.end method

.method public abstract onPluginManagerInit()V
.end method
