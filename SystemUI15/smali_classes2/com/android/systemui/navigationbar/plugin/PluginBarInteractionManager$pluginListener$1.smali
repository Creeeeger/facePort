.class public final Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;->this$0:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 2

    check-cast p1, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    const-string p2, "PluginBarInteractionManager"

    const-string v0, "Plugin connected"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;->this$0:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->connect()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->getPluginBar()Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->onAttachedToWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->mainContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    const-class p2, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    if-eqz p1, :cond_3

    iget-boolean p2, p1, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->pluginTaskBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->onAttachedToWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V

    :cond_3
    return-void
.end method

.method public final onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    const-string p1, "PluginBarInteractionManager"

    const-string p2, "Plugin disconnected"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;->this$0:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->disconnect()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    return-void
.end method

.method public final onPluginLoadFailed(I)V
    .locals 1

    const-string p1, "PluginBarInteractionManager"

    const-string v0, "Plugin load failed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;->this$0:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->mainContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "policy_control"

    const-string v0, "null"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
