.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDisplayY:I

    int-to-double v2, v2

    const-wide v4, 0x40328ccccccccccdL    # 18.55

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setY(F)V

    return-void
.end method
