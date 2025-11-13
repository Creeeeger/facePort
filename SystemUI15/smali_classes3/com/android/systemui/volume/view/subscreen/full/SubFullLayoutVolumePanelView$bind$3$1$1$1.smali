.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $blurView:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1$1;->$blurView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/android/systemui/volume/util/ViewLocationUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewLocationUtil;

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1$1;->$blurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iget-boolean v2, v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    aget v1, v0, v4

    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1$1;->$blurView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-double v5, v2

    const-wide v7, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v5, v7

    double-to-int v2, v5

    sub-int/2addr v1, v2

    aput v1, v0, v4

    aget v1, v0, v3

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1$1;->$blurView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    int-to-double v4, p0

    mul-double/2addr v4, v7

    double-to-int p0, v4

    sub-int/2addr v1, p0

    aput v1, v0, v3

    goto :goto_0

    :cond_0
    aget p0, v0, v4

    iget-object v1, v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v2, :cond_2

    const/4 v3, -0x1

    :cond_2
    mul-int/2addr v1, v3

    sub-int/2addr p0, v1

    aput p0, v0, v4

    :goto_0
    return-object v0
.end method
