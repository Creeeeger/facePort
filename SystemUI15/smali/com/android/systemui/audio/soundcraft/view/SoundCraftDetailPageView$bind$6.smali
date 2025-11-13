.class public final Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$6;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$6;->this$0:Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$6;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->actionBar:Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;->root:Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$6;->this$0:Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->updatePadding$1()V

    return-void
.end method
