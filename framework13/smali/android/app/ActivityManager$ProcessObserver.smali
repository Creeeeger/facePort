.class Landroid/app/ActivityManager$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityManager;


# direct methods
.method private constructor blacklist <init>(Landroid/app/ActivityManager;)V
    .locals 0

    .line 886
    iput-object p1, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityManager;Landroid/app/ActivityManager$ProcessObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$ProcessObserver;-><init>(Landroid/app/ActivityManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onForegroundActivitiesChanged(IIZ)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 889
    iget-object v0, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->-$$Nest$fgetmProcessListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->-$$Nest$fgetmProcessListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    iget-object v0, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->-$$Nest$fgetmProcessListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$SemProcessListener;

    .line 891
    .local v1, "i":Landroid/app/ActivityManager$SemProcessListener;
    invoke-interface {v1, p1, p2, p3}, Landroid/app/ActivityManager$SemProcessListener;->onForegroundActivitiesChanged(IIZ)V

    .end local v1    # "i":Landroid/app/ActivityManager$SemProcessListener;
    goto :goto_0

    .line 893
    :cond_0
    return-void
.end method

.method public blacklist onForegroundServicesChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 899
    return-void
.end method

.method public blacklist onProcessDied(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 903
    iget-object v0, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->-$$Nest$fgetmProcessListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->-$$Nest$fgetmProcessListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    iget-object v0, p0, Landroid/app/ActivityManager$ProcessObserver;->this$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->-$$Nest$fgetmProcessListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$SemProcessListener;

    .line 905
    .local v1, "i":Landroid/app/ActivityManager$SemProcessListener;
    invoke-interface {v1, p1, p2}, Landroid/app/ActivityManager$SemProcessListener;->onProcessDied(II)V

    .end local v1    # "i":Landroid/app/ActivityManager$SemProcessListener;
    goto :goto_0

    .line 907
    :cond_0
    return-void
.end method
