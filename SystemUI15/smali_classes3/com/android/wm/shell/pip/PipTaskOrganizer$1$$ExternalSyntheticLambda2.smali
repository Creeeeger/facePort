.class public final synthetic Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer$1;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;->f$3:I

    iget p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;->f$4:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0, v3, p0, v2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResize(IILandroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    return-void
.end method
