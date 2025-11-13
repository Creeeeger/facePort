.class Landroid/widget/ScrollView$8;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ScrollView;->semSetGoToTopEnabled(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/ScrollView$8;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ScrollView$8;->this$0:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/ScrollView;->-$$Nest$fputmIsGoToTopShown(Landroid/widget/ScrollView;Z)V

    iget-object v0, p0, Landroid/widget/ScrollView$8;->this$0:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/ScrollView;->-$$Nest$msemSetupGoToTop(Landroid/widget/ScrollView;I)V

    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
