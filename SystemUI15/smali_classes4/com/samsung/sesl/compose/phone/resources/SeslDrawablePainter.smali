.class public final Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# instance fields
.field public final callback$delegate:Lkotlin/Lazy;

.field public final drawInvalidateTick$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final drawable:Landroid/graphics/drawable/Drawable;

.field public final drawableIntrinsicSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final insets:Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    iput-object p1, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->insets:Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawInvalidateTick$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-static {p1}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->access$getIntrinsicSize(Landroid/graphics/drawable/Drawable;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawableIntrinsicSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter$callback$2;

    invoke-direct {v0, p0}, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter$callback$2;-><init>(Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->callback$delegate:Lkotlin/Lazy;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    iget v0, p2, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->right:I

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p2, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p2, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->left:I

    iget p2, p2, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->top:I

    invoke-virtual {p1, v1, p2, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final applyAlpha(F)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xff

    int-to-float v1, v0

    mul-float/2addr p1, v1

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/compose/ui/graphics/ColorFilter;->nativeColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final applyLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    return-void
.end method

.method public final getIntrinsicSize-NH-jbRc()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawableIntrinsicSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Size;

    iget-wide v0, p0, Landroidx/compose/ui/geometry/Size;->packedValue:J

    return-wide v0
.end method

.method public final onAbandoned()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->onForgotten()V

    return-void
.end method

.method public final onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 8

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawInvalidateTick$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    iget-object v1, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->insets:Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;

    iget v4, v3, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->left:I

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v5

    float-to-int v5, v5

    iget v6, v3, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->right:I

    sub-int/2addr v5, v6

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p1

    float-to-int p1, p1

    iget v6, v3, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->bottom:I

    sub-int/2addr p1, v6

    iget v3, v3, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->top:I

    invoke-direct {v2, v4, v3, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :try_start_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    iget-object p0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    sget-object p1, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->EmptyCanvas:Landroid/graphics/Canvas;

    move-object p1, v0

    check-cast p1, Landroidx/compose/ui/graphics/AndroidCanvas;

    iget-object p1, p1, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    throw p0
.end method

.method public final onForgotten()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object p0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public final onRemembered()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->callback$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object p0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method
