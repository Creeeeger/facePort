.class public final Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field protected static final STALE:I = 0xb


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/SQSTileImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;->this$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;->this$0:Lcom/android/systemui/qs/tileimpl/SQSTileImpl;

    const/4 v1, 0x0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    const-string v1, "handleScanStateChanged"

    iget p0, p1, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-ge v4, p0, :cond_d

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    invoke-interface {p0, v5}, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;->onScanStateChanged(Z)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_2
    const/16 v3, 0x63

    if-ne v2, v3, :cond_5

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v2, "handleShowDetail from Handler is called:++++ "

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "handleShowDetail"

    iget p0, p1, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p1, "handleShowDetail is called:++++ "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-ge v4, p1, :cond_d

    const-string p1, "onShowDetail(show) is called:++++ "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    if-eqz p1, :cond_4

    iget-object p1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    invoke-interface {p1, v5}, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;->onShowDetail(Z)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/16 v3, 0x67

    if-ne v2, v3, :cond_7

    const-string v1, "handleScrollToDetail"

    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    :goto_3
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v4, v2, :cond_d

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    invoke-interface {v2, p0, p1}, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;->onScrollToDetail(II)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const/16 v3, 0x65

    if-ne v2, v3, :cond_9

    const-string v1, "handleUpdateDetail"

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :goto_4
    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-ge v4, p0, :cond_d

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    if-eqz p0, :cond_8

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;->onUpdateDetail()V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    const/16 v3, 0x64

    if-ne v2, v3, :cond_c

    const-string v1, "handleToggleStateChanged"

    iget p0, p1, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    move v5, v4

    :goto_5
    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-ge v4, p0, :cond_d

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    if-eqz p0, :cond_b

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;

    invoke-interface {p0, v5}, Lcom/android/systemui/plugins/qs/SQSTile$SCallback;->onToggleStateChanged(Z)V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    const-string p1, "Error in "

    invoke-static {p1, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_7
    return-void
.end method
