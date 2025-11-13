.class public final Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;
.super Lcom/android/wm/shell/bubbles/animation/OneTimeEndListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

.field public final synthetic val$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;->this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;->val$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/OneTimeEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;->this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mNotifiedAboutThreshold:Z

    const/4 p3, 0x0

    iput-object p3, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;->val$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAnimating(Z)V

    return-void
.end method
