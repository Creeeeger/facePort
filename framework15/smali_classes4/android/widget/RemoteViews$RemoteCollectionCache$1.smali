.class Landroid/widget/RemoteViews$RemoteCollectionCache$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$RemoteCollectionCache;->getItemsFutureFromIntentWithTimeout(Landroid/content/Intent;I)Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$individualSize:I

.field final synthetic blacklist val$result:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor blacklist <init>(ILandroid/content/Context;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$1;->val$individualSize:I

    iput-object p2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    :try_start_0
    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$1;->val$individualSize:I

    invoke-interface {v0, v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getRemoteCollectionItems(I)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v1

    const-string v2, "RemoteViews"

    const-string v3, "Error getting collection items from the factory"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :goto_1
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
