.class public final Landroidx/compose/ui/draw/BlurredEdgeTreatment;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/compose/ui/draw/BlurredEdgeTreatment$Companion;

.field public static final Rectangle:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;


# instance fields
.field public final shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/draw/BlurredEdgeTreatment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->Companion:Landroidx/compose/ui/draw/BlurredEdgeTreatment$Companion;

    sget-object v0, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    sput-object v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->Rectangle:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    return-void
.end method

.method private synthetic constructor <init>(Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->shape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method public static final synthetic box-impl(Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;)Landroidx/compose/ui/draw/BlurredEdgeTreatment;
    .locals 1

    new-instance v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;

    invoke-direct {v0, p0}, Landroidx/compose/ui/draw/BlurredEdgeTreatment;-><init>(Landroidx/compose/ui/graphics/Shape;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/draw/BlurredEdgeTreatment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/draw/BlurredEdgeTreatment;

    iget-object p1, p1, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object p0, p0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->shape:Landroidx/compose/ui/graphics/Shape;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlurredEdgeTreatment(shape="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
