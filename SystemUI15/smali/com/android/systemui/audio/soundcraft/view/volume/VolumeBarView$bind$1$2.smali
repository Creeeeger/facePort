.class public final Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;

.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$2;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$2;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;->volumeStatusIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->getViewModel$2()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object p0

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->allSoundMuteEnabled:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->zenModeEnabled:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f08081f

    goto :goto_1

    :cond_1
    :goto_0
    const p0, 0x7f080a93

    :goto_1
    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
