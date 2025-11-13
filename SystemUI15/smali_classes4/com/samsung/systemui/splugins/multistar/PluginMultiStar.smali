.class public interface abstract Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_MULTISTAR"
    version = 0x2328
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_MULTISTAR"

.field public static final VERSION:I = 0x2328


# virtual methods
.method public abstract init(Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;)V
.end method

.method public abstract onLongPressRecents()Z
.end method
