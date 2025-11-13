.class Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final PLUGIN_CONNECTED:I = 0x1

.field private static final PLUGIN_DISCONNECTED:I = 0x2

.field private static final PLUGIN_UPDATED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const-string v0, "ms"

    const-string v1, " elapsed="

    const-string v2, "], what="

    const-string v3, "PluginInstanceManager"

    const-string v4, "["

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :try_start_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    const/4 v10, 0x2

    if-eq v8, v10, :cond_1

    const/4 v10, 0x4

    if-eq v8, v10, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    goto/16 :goto_3

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v10}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "], [PLUGIN_UPDATED], mPackage "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmListener(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object v8

    iget-object v10, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v10, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {v8, v10, v9}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    iget-object v7, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of v8, v7, Lcom/samsung/systemui/splugins/SPluginFragment;

    if-nez v8, :cond_5

    check-cast v7, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {v7}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V

    goto/16 :goto_1

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v9}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "], [PLUGIN_DISCONNECTED] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmClass(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mIsPkgChanged ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v9}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmIsPkgChanged(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmIsPkgChanged(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmListener(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object v8

    iget-object v9, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {v8, v9, v10}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmListener(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object v8

    iget-object v9, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/systemui/splugins/SPlugin;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    :goto_0
    iget-object v7, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of v8, v7, Lcom/samsung/systemui/splugins/SPluginFragment;

    if-nez v8, :cond_5

    check-cast v7, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {v7}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V

    goto :goto_1

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v9}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "], [PLUGIN_CONNECTED] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmClass(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setHasPlugins(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmManager(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->handleWtfs()V

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Lcom/samsung/systemui/splugins/SPluginFragment;

    if-nez v8, :cond_4

    iget-object v8, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v8, Lcom/samsung/systemui/splugins/SPlugin;

    iget-object v9, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v9}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmPluginContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Landroid/content/Context;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/samsung/systemui/splugins/SPlugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    :cond_4
    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmListener(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object v8

    iget-object v9, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-static {v7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmPluginContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Landroid/content/Context;

    move-result-object v7

    invoke-interface {v8, v9, v7}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v5

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v7, v0, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v9}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] what="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_4
    return-void

    :catchall_1
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v5

    invoke-virtual {v8, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v8, v0, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    throw v7
.end method
