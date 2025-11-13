.class public final Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$DexOnPcConnectionStateChangeObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$DexOnPcConnectionStateChangeObserver;->this$0:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$DexOnPcConnectionStateChangeObserver;->this$0:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;

    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "dexonpc_connection_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Update DexOnPc connection state ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SemRemoteServiceStateManager"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$DexOnPcConnectionStateChangeObserver;->this$0:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;

    iget-object v1, v1, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
