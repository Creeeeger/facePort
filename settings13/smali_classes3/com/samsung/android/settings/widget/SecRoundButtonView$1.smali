.class Lcom/samsung/android/settings/widget/SecRoundButtonView$1;
.super Ljava/lang/Object;
.source "SecRoundButtonView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/widget/SecRoundButtonView;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/SecRoundButtonView;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$1;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$1;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$1;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-static {v1}, Lcom/samsung/android/settings/widget/SecRoundButtonView;->-$$Nest$msetTouchDelegateForTarget(Lcom/samsung/android/settings/widget/SecRoundButtonView;)V

    .line 58
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRoundButtonView$1;->this$0:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-static {v1}, Lcom/samsung/android/settings/widget/SecRoundButtonView;->-$$Nest$msetMaxWidth(Lcom/samsung/android/settings/widget/SecRoundButtonView;)V

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
