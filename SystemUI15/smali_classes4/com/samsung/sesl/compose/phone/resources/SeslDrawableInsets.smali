.class public final Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets$Companion;

.field public static final NONE:Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->Companion:Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets$Companion;

    new-instance v0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;-><init>(IIII)V

    sput-object v0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->NONE:Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->left:I

    iput p2, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->top:I

    iput p3, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->right:I

    iput p4, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->bottom:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;

    iget v1, p1, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->left:I

    iget v3, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->left:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->top:I

    iget v3, p1, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->top:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->right:I

    iget v3, p1, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->right:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->bottom:I

    iget p1, p1, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->bottom:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->left:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->top:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->right:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->bottom:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SeslDrawableInsets(left="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/sesl/compose/phone/resources/SeslDrawableInsets;->bottom:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
