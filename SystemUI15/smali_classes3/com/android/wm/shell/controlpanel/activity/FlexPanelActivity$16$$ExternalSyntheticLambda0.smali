.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;

.field public final synthetic f$1:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;

    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;->f$1:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;->f$1:Landroid/widget/LinearLayout;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    const v2, 0x7f0a03eb

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mSliderIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
