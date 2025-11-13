.class Lcom/android/internal/widget/PointerLocationView$1;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/PointerLocationView;


# direct methods
.method public static synthetic blacklist $r8$lambda$PwSYMm6zlyE-XoJwsGeHoDC1g8E(Lcom/android/internal/widget/PointerLocationView$1;Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/PointerLocationView$1;->lambda$onSystemGestureExclusionChanged$0(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/widget/PointerLocationView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onSystemGestureExclusionChanged$0(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView;->-$$Nest$fgetmSystemGestureExclusion(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView;->-$$Nest$fgetmSystemGestureExclusionRejected(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->invalidate()V

    return-void
.end method


# virtual methods
.method public blacklist onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 4

    invoke-static {p2}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/android/internal/widget/PointerLocationView$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/widget/PointerLocationView$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/PointerLocationView$1;Landroid/graphics/Region;Landroid/graphics/Region;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
