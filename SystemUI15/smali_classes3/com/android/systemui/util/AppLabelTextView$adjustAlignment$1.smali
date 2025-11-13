.class final Lcom/android/systemui/util/AppLabelTextView$adjustAlignment$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/AppLabelTextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/AppLabelTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/AppLabelTextView$adjustAlignment$1;->this$0:Lcom/android/systemui/util/AppLabelTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/AppLabelTextView$adjustAlignment$1;->this$0:Lcom/android/systemui/util/AppLabelTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/AppLabelTextView$adjustAlignment$1;->this$0:Lcom/android/systemui/util/AppLabelTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/AppLabelTextView$adjustAlignment$1;->this$0:Lcom/android/systemui/util/AppLabelTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/util/AppLabelTextView$adjustAlignment$1;->this$0:Lcom/android/systemui/util/AppLabelTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/util/AppLabelTextView$adjustAlignment$1;->this$0:Lcom/android/systemui/util/AppLabelTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/util/AppLabelTextView$adjustAlignment$1;->this$0:Lcom/android/systemui/util/AppLabelTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/AppLabelTextView$adjustAlignment$1;->this$0:Lcom/android/systemui/util/AppLabelTextView;

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_1
    return-void
.end method
