.class Lcom/android/internal/widget/SlidingTab$1;
.super Ljava/lang/Object;
.source "SlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/SlidingTab;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab$1;->this$0:Lcom/android/internal/widget/SlidingTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$1;->this$0:Lcom/android/internal/widget/SlidingTab;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingTab;->-$$Nest$monAnimationDone(Lcom/android/internal/widget/SlidingTab;)V

    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
