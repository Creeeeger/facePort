.class public final Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $this_with:Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$3;->$this_with:Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;

    iget-boolean v1, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->init:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->isAnimateType:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->shouldUpdateIcon:Z

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->isAnimateType:Z

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$3;->$this_with:Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->progress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->updateLayout$3(I)V

    :cond_2
    return-void
.end method
