.class public interface abstract Lcom/samsung/systemui/splugins/SPluginManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "ALR"

.field public static final PLUGIN_CHANGED:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_CHANGED"


# virtual methods
.method public abstract addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation
.end method

.method public abstract addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation
.end method

.method public abstract addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class;",
            "ZZ)V"
        }
    .end annotation
.end method

.method public abstract dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract getAllowedPlugins()[Ljava/lang/String;
.end method

.method public abstract getOneShotPlugin(Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getOneShotPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation
.end method

.method public abstract removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "*>;)V"
        }
    .end annotation
.end method
