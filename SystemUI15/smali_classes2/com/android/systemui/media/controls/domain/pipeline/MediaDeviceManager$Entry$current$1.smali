.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$current$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $value:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

.field public final synthetic this$1:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$current$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$current$1;->this$1:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$current$1;->$value:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$current$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$current$1;->this$1:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    iget-object v2, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->key:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->oldKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$current$1;->$value:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    sget-object v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->EMPTY_AND_DISABLED_MEDIA_DEVICE_DATA:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->processDevice(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;)V

    return-void
.end method
