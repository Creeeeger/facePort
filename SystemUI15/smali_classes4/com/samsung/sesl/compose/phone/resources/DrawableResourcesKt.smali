.class public abstract Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final MAIN_HANDLER$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt$MAIN_HANDLER$2;->INSTANCE:Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt$MAIN_HANDLER$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->MAIN_HANDLER$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final access$getIntrinsicSize(Landroid/graphics/drawable/Drawable;)J
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Size;->Unspecified:J

    :goto_0
    return-wide v0
.end method

.method public static seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 2

    sget-object v0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->Companion:Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->NONE:Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/sesl/compose/phone/resources/EmptyPainter;->INSTANCE:Lcom/samsung/sesl/compose/phone/resources/EmptyPainter;

    goto :goto_1

    :cond_0
    instance-of p1, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p1, :cond_1

    new-instance p1, Landroidx/compose/ui/graphics/painter/ColorPainter;

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-direct {p1, v0, v1, p0}, Landroidx/compose/ui/graphics/painter/ColorPainter;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/samsung/sesl/compose/phone/resources/SeslDrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;)V

    goto :goto_0

    :goto_1
    return-object p0
.end method
