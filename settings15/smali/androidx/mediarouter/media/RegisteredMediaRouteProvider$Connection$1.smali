.class public final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;


# direct methods
.method public synthetic constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;I)V
    .locals 0

    iput p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;->this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;->this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v1, p0, :cond_1

    sget-boolean p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Service connection died"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MediaRouteProviderProxy"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->disconnect()V

    :cond_1
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;->this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->onError(Landroid/os/Bundle;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
