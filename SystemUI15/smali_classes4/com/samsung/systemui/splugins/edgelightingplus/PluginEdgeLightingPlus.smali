.class public interface abstract Lcom/samsung/systemui/splugins/edgelightingplus/PluginEdgeLightingPlus;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_EDGELIGHTING_PLUS"
    version = 0x1770
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_EDGELIGHTING_PLUS"

.field public static final MAJOR_VERSION:I = 0x6

.field public static final MINOR_VERSION:I = 0x0

.field public static final VERSION:I = 0x1770


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract setCallback(Lcom/samsung/systemui/splugins/edgelightingplus/PluginEdgeLightingPlus$Callback;)V
.end method
