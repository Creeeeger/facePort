.class Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)V

    return-void
.end method

.method private checkStack(Ljava/lang/Throwable;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v4, v1, v0

    iget-object v5, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {v5}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmPluginMap(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->checkAndDisable(Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v3, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->checkStack(Ljava/lang/Throwable;)Z

    move-result p0

    or-int/2addr p0, v3

    return p0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    const-string p1, "plugin.debugging"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->getFirstUncaughtExceptionTime(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    const/4 v6, 0x1

    if-eqz p1, :cond_4

    sub-long v7, v0, v2

    const-wide/32 v9, 0x2bf20

    cmp-long p1, v7, v9

    if-lez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->getUncaughtExceptionCount(Landroid/content/Context;)I

    move-result p1

    add-int/2addr p1, v6

    const/4 v7, 0x5

    if-lt p1, v7, :cond_3

    invoke-static {}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v7, "UncaughtException - currentTime = "

    const-string v8, "   firstExceptionTime = "

    invoke-static {v7, v0, v1, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->IGNORE_EXCEPTION:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmPluginMap(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v1, p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->disableAll(Ljava/util/ArrayList;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4, v5}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setFirstUncaughtExceptionTime(Landroid/content/Context;J)V

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "all_splugin_disabled"

    invoke-static {p0, p1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setFirstUncaughtExceptionTime(Landroid/content/Context;J)V

    :goto_2
    return-void
.end method
