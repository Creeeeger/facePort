.class public final Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final packedValue:I


# direct methods
.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;->packedValue:I

    return-void
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;
    .locals 1

    new-instance v0, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;

    invoke-direct {v0, p0}, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;

    iget p1, p1, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;->packedValue:I

    iget p0, p0, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;->packedValue:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;->packedValue:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PointerKeyboardModifiers(packedValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;->packedValue:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
