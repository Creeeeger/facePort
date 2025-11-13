.class public final Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    iget-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->blurView:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    new-instance v2, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2$1;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    const/16 p0, 0x6b

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/volume/util/BlurEffect;->setCapturedBlur(Landroid/widget/ImageView;ILjava/util/function/Supplier;)V

    return-void
.end method
