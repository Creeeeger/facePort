.class public final Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final deviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

.field public final logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

.field public final mainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

    iput-object p3, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/settingslib/media/DeviceIconUtil;

    invoke-direct {p2, p1}, Lcom/android/settingslib/media/DeviceIconUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->deviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    return-void
.end method
