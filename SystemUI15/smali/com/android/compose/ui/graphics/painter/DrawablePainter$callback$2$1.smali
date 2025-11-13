.class public final Lcom/android/compose/ui/graphics/painter/DrawablePainter$callback$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/compose/ui/graphics/painter/DrawablePainter;


# direct methods
.method public constructor <init>(Lcom/android/compose/ui/graphics/painter/DrawablePainter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/ui/graphics/painter/DrawablePainter$callback$2$1;->this$0:Lcom/android/compose/ui/graphics/painter/DrawablePainter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object p1, p0, Lcom/android/compose/ui/graphics/painter/DrawablePainter$callback$2$1;->this$0:Lcom/android/compose/ui/graphics/painter/DrawablePainter;

    iget-object v0, p1, Lcom/android/compose/ui/graphics/painter/DrawablePainter;->drawInvalidateTick$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Lcom/android/compose/ui/graphics/painter/DrawablePainter;->drawInvalidateTick$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/compose/ui/graphics/painter/DrawablePainter$callback$2$1;->this$0:Lcom/android/compose/ui/graphics/painter/DrawablePainter;

    iget-object p1, p0, Lcom/android/compose/ui/graphics/painter/DrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/android/compose/ui/graphics/painter/DrawablePainterKt;->access$getIntrinsicSize(Landroid/graphics/drawable/Drawable;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object p1

    iget-object p0, p0, Lcom/android/compose/ui/graphics/painter/DrawablePainter;->drawableIntrinsicSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    sget-object p0, Lcom/android/compose/ui/graphics/painter/DrawablePainterKt;->MAIN_HANDLER$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lcom/android/compose/ui/graphics/painter/DrawablePainterKt;->MAIN_HANDLER$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
