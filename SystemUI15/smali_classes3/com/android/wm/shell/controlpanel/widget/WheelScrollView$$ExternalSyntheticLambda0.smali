.class public final synthetic Lcom/android/wm/shell/controlpanel/widget/WheelScrollView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->removeView()V

    :cond_0
    return-void
.end method
