.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$15;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$15;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$15;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$15;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
