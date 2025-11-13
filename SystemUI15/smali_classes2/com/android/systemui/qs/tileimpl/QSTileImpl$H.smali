.class public Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field protected static final STALE:I = 0xb


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    const-string v0, "Unknown msg: "

    const/4 v1, 0x0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v1, "handleAddCallback"

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    const-string v1, "handleRemoveCallbacks"

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    goto/16 :goto_2

    :cond_1
    const/16 v4, 0x9

    if-ne v2, v4, :cond_2

    const-string v1, "handleRemoveCallback"

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_5

    const-string v1, "handleClick"

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, v5}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/qs/QSHost;->shouldUnavailableByKnox(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logHandleClick(ILjava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/animation/Expandable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick(Lcom/android/systemui/animation/Expandable;)V

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    const-string v1, "handleSecondaryClick"

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/qs/QSHost;->shouldUnavailableByKnox(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logHandleSecondaryClick(ILjava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/animation/Expandable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V

    goto/16 :goto_2

    :cond_7
    const/4 v4, 0x4

    if-ne v2, v4, :cond_9

    const-string v1, "handleLongClick"

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/qs/QSHost;->shouldUnavailableByKnox(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logHandleLongClick(ILjava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/animation/Expandable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick(Lcom/android/systemui/animation/Expandable;)V

    goto/16 :goto_2

    :cond_9
    const/4 v4, 0x5

    if-ne v2, v4, :cond_a

    const-string v1, "handleRefreshState"

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    const/4 v4, 0x6

    if-ne v2, v4, :cond_b

    const-string v1, "handleUserSwitch"

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    goto :goto_2

    :cond_b
    const/4 v4, 0x7

    if-ne v2, v4, :cond_c

    const-string v1, "handleDestroy"

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    goto :goto_2

    :cond_c
    const/16 v4, 0xa

    if-ne v2, v4, :cond_e

    const-string v1, "handleSetListeningInternal"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_d

    goto :goto_0

    :cond_d
    move v3, v5

    :goto_0
    invoke-static {p0, v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-$$Nest$mhandleSetListeningInternal(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V

    goto :goto_2

    :cond_e
    const/16 v3, 0xb

    if-ne v2, v3, :cond_f

    const-string v1, "handleStale"

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStale()V

    goto :goto_2

    :cond_f
    const/16 v3, 0xc

    if-ne v2, v3, :cond_10

    const-string v1, "initialize"

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleInitialize()V

    goto :goto_2

    :cond_10
    const/16 v3, 0x66

    if-ne v2, v3, :cond_11

    const-string v1, "handleSaveTileIcon"

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-$$Nest$mhandleSaveTileIcon(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V

    goto :goto_2

    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const-string v0, "Error in "

    invoke-static {v0, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
