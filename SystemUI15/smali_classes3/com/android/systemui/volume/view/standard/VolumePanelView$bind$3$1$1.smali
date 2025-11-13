.class public final Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $view:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;->$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    const/16 v1, 0x79

    const/16 v2, 0x6a

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    iget-boolean v4, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    const v5, 0x7f0717cf

    if-eqz v4, :cond_1

    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;->$view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f060ad1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x6b

    invoke-static {v1, v0, p0, v2}, Lcom/android/systemui/volume/util/BlurEffect;->setRealTimeBlur(Landroid/view/View;IFI)V

    goto/16 :goto_4

    :cond_1
    iget-object v4, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    if-nez v4, :cond_2

    move-object v4, v3

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;->$view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v7, 0x7f060ae0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v7, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    iget-object v7, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v7

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/volume/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v0, v5, v1}, Lcom/android/systemui/volume/util/BlurEffect;->setRealTimeBlur(Landroid/view/View;IFI)V

    goto :goto_4

    :cond_5
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    iget-object v4, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    if-nez v4, :cond_6

    move-object v5, v3

    goto :goto_2

    :cond_6
    move-object v5, v4

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;->$view:Landroid/widget/ImageView;

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    move-object v3, v4

    :goto_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/volume/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_8

    move v1, v2

    :cond_8
    new-instance v0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1$1;

    iget-object v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;->$view:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    invoke-direct {v0, v2, p0}, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1$1;-><init>(Landroid/widget/ImageView;Lcom/android/systemui/volume/view/standard/VolumePanelView;)V

    invoke-virtual {v5, v6, v1, v0}, Lcom/android/systemui/volume/util/BlurEffect;->setCapturedBlur(Landroid/widget/ImageView;ILjava/util/function/Supplier;)V

    :cond_9
    :goto_4
    return-void
.end method
