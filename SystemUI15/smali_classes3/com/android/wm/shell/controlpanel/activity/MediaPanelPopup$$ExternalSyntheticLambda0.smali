.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

.field public final synthetic f$1:Landroid/view/animation/Animation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda0;->f$1:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda0;->f$1:Landroid/view/animation/Animation;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
