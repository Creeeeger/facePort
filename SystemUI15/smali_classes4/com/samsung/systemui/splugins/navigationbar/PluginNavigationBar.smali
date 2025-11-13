.class public interface abstract Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.navigationbar.PLUGIN"
    version = 0x2710
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.navigationbar.PLUGIN"

.field public static final Companion:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar$Companion;

.field public static final MAJOR_VERSION:I = 0xa

.field public static final MINOR_VERSION:I = 0x0

.field public static final VERSION:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar$Companion;->$$INSTANCE:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar$Companion;

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->Companion:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar$Companion;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 0

    return-void
.end method

.method public abstract disconnect()V
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public getVersion()I
    .locals 0

    const/16 p0, 0x2710

    return p0
.end method

.method public onAttachedToWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V
    .locals 0

    return-void
.end method
