.class Landroid/widget/PopupWindow$PopupDecorView$2;
.super Landroid/transition/TransitionListenerAdapter;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/PopupWindow$PopupDecorView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/PopupWindow$PopupDecorView;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/PopupWindow$PopupDecorView;

    .line 2955
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "t"    # Landroid/transition/Transition;

    .line 2958
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 2962
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/widget/PopupWindow$PopupDecorView;->-$$Nest$fgetmCleanupAfterExit(Landroid/widget/PopupWindow$PopupDecorView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2963
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/widget/PopupWindow$PopupDecorView;->-$$Nest$fgetmCleanupAfterExit(Landroid/widget/PopupWindow$PopupDecorView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2965
    :cond_0
    return-void
.end method
