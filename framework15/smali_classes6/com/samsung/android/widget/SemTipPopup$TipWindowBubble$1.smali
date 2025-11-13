.class Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble$1;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;->animateViewOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble$1;->this$0:Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble$1;->this$0:Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;->dismissFinal()V

    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble$1;->this$0:Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/widget/SemTipPopup$TipWindowBubble;->mIsDismissing:Z

    return-void
.end method
