.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $blurView:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;->$blurView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;->$blurView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/volume/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_2

    const/16 v0, 0x6a

    goto :goto_1

    :cond_2
    const/16 v0, 0x79

    :goto_1
    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1$1;

    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;->$blurView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1$1;-><init>(Landroid/widget/ImageView;Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/systemui/volume/util/BlurEffect;->setCapturedBlur(Landroid/widget/ImageView;ILjava/util/function/Supplier;)V

    return-void
.end method
