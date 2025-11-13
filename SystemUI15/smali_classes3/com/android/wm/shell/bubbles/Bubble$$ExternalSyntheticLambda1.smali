.class public final synthetic Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/Bubble;

.field public final synthetic f$1:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/Bubble;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/Bubble;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentActive:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/wm/shell/bubbles/Bubble;->mPendingIntentCanceled:Z

    :goto_1
    return-void
.end method
