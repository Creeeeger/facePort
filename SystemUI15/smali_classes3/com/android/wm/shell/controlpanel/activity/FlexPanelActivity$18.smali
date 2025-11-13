.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$18;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic val$a:Landroid/view/animation/Animation;

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$18;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$18;->val$a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$18;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$18;->val$v:Landroid/view/View;

    const v1, 0x7f0807ab

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$18;->val$v:Landroid/view/View;

    const v1, 0x7f0a0de8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$18;->val$v:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$18;->val$a:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
