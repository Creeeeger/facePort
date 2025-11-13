.class public final Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final remoteServiceKeySet:Ljava/util/ArrayList;


# instance fields
.field public final mBoardcasteSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mClipboardClearHandler:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$ConnectionStateClearHandler;

.field public final mContext:Landroid/content/Context;

.field public final mRemoteServiceStateMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "ltw_clipboard_sync_state"

    const-string v2, "multi_control_connection_state"

    const-string v3, "mcf_continuity_nearby_device_state"

    const-string v4, "samsungflow_clipboard_sync_state"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->remoteServiceKeySet:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mBoardcasteSender:Lcom/android/systemui/broadcast/BroadcastSender;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dexonpc_connection_state"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->remoteServiceKeySet:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$DexOnPcConnectionStateChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$DexOnPcConnectionStateChangeObserver;-><init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;)V

    invoke-virtual {p2, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "mcf_continuity_nearby_device_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$McfContinuityConnectionStateChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$McfContinuityConnectionStateChangeObserver;-><init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;)V

    invoke-virtual {p2, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "samsungflow_clipboard_sync_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$SamsungFlowConnectionStateChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$SamsungFlowConnectionStateChangeObserver;-><init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;)V

    invoke-virtual {p2, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "ltw_clipboard_sync_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$LinkToWindowConnectionStateChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$LinkToWindowConnectionStateChangeObserver;-><init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;)V

    invoke-virtual {p2, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "multi_control_connection_state"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$MultiControlConnectionStateChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$MultiControlConnectionStateChangeObserver;-><init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SemRemoteServiceStateManager"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$ConnectionStateClearHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$ConnectionStateClearHandler;-><init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mClipboardClearHandler:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$ConnectionStateClearHandler;

    return-void
.end method
