.class Landroid/app/ActivityManager$2;
.super Landroid/app/IApplicationStartInfoCompleteListener$Stub;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityManager;->addApplicationStartInfoCompletionListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/ActivityManager$2;->this$0:Landroid/app/ActivityManager;

    invoke-direct {p0}, Landroid/app/IApplicationStartInfoCompleteListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onApplicationStartInfoComplete$0(Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;Landroid/app/ApplicationStartInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onApplicationStartInfoComplete(Landroid/app/ApplicationStartInfo;)V
    .locals 5

    iget-object v0, p0, Landroid/app/ActivityManager$2;->this$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->-$$Nest$fgetmAppStartInfoCallbacks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityManager$2;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-$$Nest$fgetmAppStartInfoCallbacks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityManager$2;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-$$Nest$fgetmAppStartInfoCallbacks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;

    iget-object v3, v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1}, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;Landroid/app/ApplicationStartInfo;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/app/ActivityManager$2;->this$0:Landroid/app/ActivityManager;

    invoke-static {v1}, Landroid/app/ActivityManager;->-$$Nest$fgetmAppStartInfoCallbacks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/app/ActivityManager$2;->this$0:Landroid/app/ActivityManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityManager;->-$$Nest$fputmAppStartInfoCompleteListener(Landroid/app/ActivityManager;Landroid/app/IApplicationStartInfoCompleteListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
