.class final Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;
.super Landroid/view/ICrossWindowBlurEnabledListener$Stub;
.source "CrossWindowBlurListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/CrossWindowBlurListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlurEnabledListenerInternal"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/CrossWindowBlurListeners;


# direct methods
.method private constructor blacklist <init>(Landroid/view/CrossWindowBlurListeners;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-direct {p0}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/CrossWindowBlurListeners;Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;-><init>(Landroid/view/CrossWindowBlurListeners;)V

    return-void
.end method


# virtual methods
.method public blacklist onCrossWindowBlurEnabledChanged(Z)V
    .locals 7

    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-static {v1, p1}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$fputmCrossWindowBlurEnabled(Landroid/view/CrossWindowBlurListeners;Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :goto_0
    :try_start_1
    iget-object v4, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-static {v4}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$fgetmListeners(Landroid/view/CrossWindowBlurListeners;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    iget-object v5, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-static {v5}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$fgetmListeners(Landroid/view/CrossWindowBlurListeners;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/Consumer;

    iget-object v6, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-static {v6}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$fgetmListeners(Landroid/view/CrossWindowBlurListeners;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Executor;

    invoke-static {v4, v5, v6, p1}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$mnotifyListener(Landroid/view/CrossWindowBlurListeners;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
