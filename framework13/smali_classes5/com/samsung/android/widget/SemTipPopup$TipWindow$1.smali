.class Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup$TipWindow;->animateViewOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemTipPopup$TipWindow;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    .line 1884
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;->this$0:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1892
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;->this$0:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$001(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)V

    .line 1893
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1898
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1887
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;->this$0:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-$$Nest$fputmIsDismissing(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V

    .line 1888
    return-void
.end method
