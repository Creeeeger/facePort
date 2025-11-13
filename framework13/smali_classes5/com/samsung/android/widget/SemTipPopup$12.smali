.class Lcom/samsung/android/widget/SemTipPopup$12;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;->animateScaleUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemTipPopup;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemTipPopup;

    .line 1672
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$12;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1680
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$12;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$mdismissBubble(Lcom/samsung/android/widget/SemTipPopup;Z)V

    .line 1681
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1686
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1675
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$12;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmMessageView(Lcom/samsung/android/widget/SemTipPopup;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1676
    return-void
.end method
