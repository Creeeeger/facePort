.class public final Lcom/android/systemui/volume/view/standard/VolumePanelView$startDismissAnimation$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$startDismissAnimation$1$1;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$startDismissAnimation$1$1;->$it:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$startDismissAnimation$1$1;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    iget-object v0, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$startDismissAnimation$1$1;->$it:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BlurEffect;->hideBlur(Landroid/view/View;)V

    :cond_1
    return-void
.end method
