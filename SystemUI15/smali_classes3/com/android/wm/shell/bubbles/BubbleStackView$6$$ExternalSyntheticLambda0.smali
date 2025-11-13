.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleStackView$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleStackView$6;

.field public final synthetic f$1:Lcom/android/wm/shell/bubbles/Bubble;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView$6;Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView$6;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/bubbles/Bubble;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView$6;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/bubbles/Bubble;

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSALogger:Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    const-string v0, "QPNE0100"

    const-string v1, "app"

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
