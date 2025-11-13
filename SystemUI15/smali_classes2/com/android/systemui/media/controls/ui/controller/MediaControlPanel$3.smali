.class public final Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$3;
.super Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$3;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getCurrentBottomCornerRadius()F
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$3;->getCurrentTopCornerRadius()F

    move-result p0

    return p0
.end method

.method public final getCurrentTopCornerRadius()F
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$3;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070b30

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method
