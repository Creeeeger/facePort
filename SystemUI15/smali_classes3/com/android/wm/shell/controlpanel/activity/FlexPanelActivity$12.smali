.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;
.super Landroid/view/View$DragShadowBuilder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$draggedView:Landroid/view/View;

.field public final synthetic val$gridLayoutSize:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->val$gridLayoutSize:I

    iput-object p4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->val$draggedView:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->val$gridLayoutSize:I

    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->val$draggedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->val$draggedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$12;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    sget v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    const v1, 0x7f07035a

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPixelSize(I)I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
