.class public final synthetic Lcom/android/wm/shell/common/pip/PipBoundsState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/pip/PipBoundsState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/pip/PipBoundsState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipBoundsState$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/pip/PipBoundsState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsState$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/pip/PipBoundsState;

    check-cast p1, Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mBoundsScale:F

    return-void
.end method
