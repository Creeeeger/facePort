.class Lcom/samsung/android/widget/SemTipPopup$10;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;->animateBounce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist count:I

.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemTipPopup;

.field final synthetic blacklist val$animationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemTipPopup;Landroid/view/animation/AnimationSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemTipPopup;

    .line 1553
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$10;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    iput-object p2, p0, Lcom/samsung/android/widget/SemTipPopup$10;->val$animationSet:Landroid/view/animation/AnimationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1554
    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/widget/SemTipPopup$10;->count:I

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1563
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$10;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "repeat count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup$10;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$mdebugLog(Lcom/samsung/android/widget/SemTipPopup;Ljava/lang/String;)V

    .line 1564
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$10;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmBubbleView(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup$10;->val$animationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1565
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1569
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1558
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup$10;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup$10;->count:I

    .line 1559
    return-void
.end method
