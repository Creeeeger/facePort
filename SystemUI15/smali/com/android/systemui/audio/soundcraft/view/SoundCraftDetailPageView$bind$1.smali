.class public final Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$1;
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

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$1;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$1;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->batteryInfoBox:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->volumeContainer:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->volumeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView$bind$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;

    move-result-object p0

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->volumeContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/SoundCraftViewModel;->coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getBGColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->setBackGroundDrawable(Landroid/view/View;I)V

    :goto_1
    return-void
.end method
