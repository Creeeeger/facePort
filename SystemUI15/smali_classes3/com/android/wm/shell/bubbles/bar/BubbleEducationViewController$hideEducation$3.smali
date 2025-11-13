.class final Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $endActions:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$3;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$3;->$endActions:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$3;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;

    sget v1, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->$r8$clinit:I

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->rootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->educationView:Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->rootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->scrimView$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->educationView:Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->rootView:Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$3;->$endActions:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$3;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->listener:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$Listener;

    check-cast p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mLayerBoundsSupplier:Ljava/util/function/Supplier;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    iput-object v1, v0, Lcom/android/wm/shell/taskview/TaskView;->mObscuredTouchRegion:Landroid/graphics/Region;

    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
