.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

.field public final synthetic f$1:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;->f$1:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;->f$1:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BadgedImageView;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRemovingLastBubbleWhileExpanded:Z

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView(Z)V

    if-eqz p0, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupViews()V

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;->f$1:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->setTaskViewVisibility()V

    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedBubble()V

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;->onBubbleExpandChanged(Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;->onBubbleExpandChanged(Ljava/lang/String;Z)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
