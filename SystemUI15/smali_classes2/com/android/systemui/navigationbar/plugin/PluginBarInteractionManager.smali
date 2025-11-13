.class public final Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mainContext:Landroid/content/Context;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

.field public final pluginListener:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;

.field public final pluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

.field public pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Lcom/samsung/systemui/splugins/SPluginManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->mainContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    new-instance p1, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;-><init>(Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginListener:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;

    return-void
.end method
