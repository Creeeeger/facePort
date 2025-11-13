.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;

    invoke-direct {v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    invoke-virtual {p2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->stop()V

    iget-object p0, p2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;

    invoke-direct {v0, p2, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
