.class Landroid/widget/Editor$HandleView$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getHideAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;

    .line 7127
    iput-object p1, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 7160
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7161
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmIsHideAnimating(Landroid/widget/Editor$HandleView;Z)V

    .line 7162
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v2}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmHideAnimator(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)V

    .line 7163
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 7144
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmIsHideAnimating(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7145
    return-void

    .line 7147
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7148
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmContainer(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7150
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmCursorContainer(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7151
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmCursorContainer(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7154
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmIsHideAnimating(Landroid/widget/Editor$HandleView;Z)V

    .line 7155
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v2}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmHideAnimator(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)V

    .line 7156
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 7133
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmIsShowAnimating(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7134
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmShowAnimator(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 7135
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmIsShowAnimating(Landroid/widget/Editor$HandleView;Z)V

    .line 7138
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmIsHideAnimating(Landroid/widget/Editor$HandleView;Z)V

    .line 7139
    iget-object v0, p0, Landroid/widget/Editor$HandleView$12;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7140
    return-void
.end method
