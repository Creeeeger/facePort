.class Lcom/android/internal/policy/DecorView$2;
.super Landroid/view/ViewOutlineProvider;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$mdpToPixel(Lcom/android/internal/policy/DecorView;F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/samsung/android/util/SemViewUtils;->getSmoothCornerRectPath(FFFFF)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method
