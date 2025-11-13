.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$mediaInfo$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $this_apply:Landroidx/lifecycle/MediatorLiveData;

.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MediatorLiveData;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MediatorLiveData;",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$mediaInfo$1$1;->$this_apply:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$mediaInfo$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$mediaInfo$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    invoke-static {p1, v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->access$mediaInfo$lambda$1$selectedInfo(Ljava/util/List;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;)Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$mediaInfo$1$1;->$this_apply:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
