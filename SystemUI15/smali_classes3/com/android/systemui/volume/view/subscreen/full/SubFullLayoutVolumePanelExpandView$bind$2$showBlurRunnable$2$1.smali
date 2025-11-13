.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2$showBlurRunnable$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2$showBlurRunnable$2$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2$showBlurRunnable$2$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    iget-object v1, v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->blurView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v3, v0, v1

    iget-object v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2$showBlurRunnable$2$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    iget-object v4, v4, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->blurView:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    move-object v4, v2

    :cond_1
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3f9999999999999aL    # 0.025

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int/2addr v3, v4

    aput v3, v0, v1

    const/4 v1, 0x1

    aget v3, v0, v1

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2$showBlurRunnable$2$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->blurView:Landroid/widget/ImageView;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    int-to-double v4, p0

    mul-double/2addr v4, v6

    double-to-int p0, v4

    sub-int/2addr v3, p0

    aput v3, v0, v1

    return-object v0
.end method
