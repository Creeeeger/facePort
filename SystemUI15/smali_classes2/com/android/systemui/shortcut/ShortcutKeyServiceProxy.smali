.class public final Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;
.super Lcom/android/internal/policy/IShortcutService$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallbacks:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;

.field public final mHandler:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/policy/IShortcutService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;-><init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;I)V

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mHandler:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;

    iput-object p1, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mCallbacks:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;

    return-void
.end method


# virtual methods
.method public final notifyShortcutKeyPressed(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mHandler:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
