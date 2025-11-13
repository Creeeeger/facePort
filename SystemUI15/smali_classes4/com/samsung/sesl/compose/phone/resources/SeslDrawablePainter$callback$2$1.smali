.class public final Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter$callback$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;


# direct methods
.method public constructor <init>(Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter$callback$2$1;->this$0:Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter$callback$2$1;->this$0:Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;

    iget-object v0, p1, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawInvalidateTick$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p1, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawInvalidateTick$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget-object p0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter$callback$2$1;->this$0:Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;

    iget-object p1, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->access$getIntrinsicSize(Landroid/graphics/drawable/Drawable;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawableIntrinsicSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    sget-object p0, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->MAIN_HANDLER$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->MAIN_HANDLER$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
