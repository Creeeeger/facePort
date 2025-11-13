.class public final Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateMediaTapToTransferReceiverDisplay$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field public final synthetic $appName:Ljava/lang/CharSequence;

.field public final synthetic $instanceId:Lcom/android/internal/logging/InstanceId;

.field public final synthetic $routeInfo:Landroid/media/MediaRoute2Info;

.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;Landroid/media/MediaRoute2Info;Ljava/lang/CharSequence;Lcom/android/internal/logging/InstanceId;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateMediaTapToTransferReceiverDisplay$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateMediaTapToTransferReceiverDisplay$1;->$routeInfo:Landroid/media/MediaRoute2Info;

    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateMediaTapToTransferReceiverDisplay$1;->$appName:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateMediaTapToTransferReceiverDisplay$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateMediaTapToTransferReceiverDisplay$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;

    new-instance v12, Lcom/android/systemui/media/taptotransfer/receiver/ChipReceiverInfo;

    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateMediaTapToTransferReceiverDisplay$1;->$routeInfo:Landroid/media/MediaRoute2Info;

    iget-object v4, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateMediaTapToTransferReceiverDisplay$1;->$appName:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateMediaTapToTransferReceiverDisplay$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    const/16 v10, 0x58

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v12

    move-object v3, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/media/taptotransfer/receiver/ChipReceiverInfo;-><init>(Landroid/media/MediaRoute2Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/temporarydisplay/ViewPriority;Lcom/android/internal/logging/InstanceId;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v12}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->displayView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V

    return-void
.end method
