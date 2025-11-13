.class public final Lcom/android/systemui/qs/SecLockscreenTileHost;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final callbacks:Ljava/util/List;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final obj:Ljava/lang/Object;

.field public final qsHost:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/SecLockscreenTileHost;->qsHost:Lcom/android/systemui/qs/QSTileHost;

    iput-object p4, p0, Lcom/android/systemui/qs/SecLockscreenTileHost;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/qs/SecLockscreenTileHost;->bgExecutor:Ljava/util/concurrent/Executor;

    const-string p2, "LockscreenTileHost"

    iput-object p2, p0, Lcom/android/systemui/qs/SecLockscreenTileHost;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/SecLockscreenTileHost;->obj:Ljava/lang/Object;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/SecLockscreenTileHost;->callbacks:Ljava/util/List;

    new-instance p2, Lcom/android/systemui/qs/SecLockScreenTileQueryHelper;

    invoke-direct {p2, p1, p3, p4, p5}, Lcom/android/systemui/qs/SecLockScreenTileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lcom/android/systemui/qs/SecLockscreenTileHost$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/SecLockscreenTileHost$1;-><init>(Lcom/android/systemui/qs/SecLockscreenTileHost;)V

    return-void
.end method
