.class public final Lcom/android/systemui/people/widget/LaunchConversationActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/people/widget/LaunchConversationActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/people/widget/LaunchConversationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$1;->this$0:Lcom/android/systemui/people/widget/LaunchConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final appTransitionFinished(I)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$1;->this$0:Lcom/android/systemui/people/widget/LaunchConversationActivity;

    iget-object v0, p1, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mBubblesManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mBubblesManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wmshell/BubblesManager;

    iget-object v1, p1, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mEntryToBubble:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mBubblesManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wmshell/BubblesManager;

    iget-object v1, p1, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mEntryToBubble:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;I)V

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
