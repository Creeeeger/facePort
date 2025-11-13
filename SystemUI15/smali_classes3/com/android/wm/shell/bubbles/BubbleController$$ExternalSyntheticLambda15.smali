.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final synthetic f$1:Lcom/android/wm/shell/bubbles/BubbleEntry;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/wm/shell/bubbles/Bubble;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;ZLcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;->f$1:Lcom/android/wm/shell/bubbles/BubbleEntry;

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;->f$2:Z

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;->f$3:Lcom/android/wm/shell/bubbles/Bubble;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;->f$1:Lcom/android/wm/shell/bubbles/BubbleEntry;

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;->f$2:Z

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;->f$3:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController;->setIsBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOrCreateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result v1

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleController;->inflateAndAdd(Lcom/android/wm/shell/bubbles/Bubble;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method
