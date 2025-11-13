.class Lcom/samsung/android/multiwindow/FreeformResizeGuideView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FreeformResizeGuideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->startHideAppIconAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$2;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuideView$2;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->-$$Nest$fgetmAppIconView(Lcom/samsung/android/multiwindow/FreeformResizeGuideView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
