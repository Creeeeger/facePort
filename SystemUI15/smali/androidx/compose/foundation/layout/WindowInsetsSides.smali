.class public final Landroidx/compose/foundation/layout/WindowInsetsSides;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final AllowLeftInLtr:I

.field public static final AllowLeftInRtl:I

.field public static final AllowRightInLtr:I

.field public static final AllowRightInRtl:I

.field public static final Bottom:I

.field public static final Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

.field public static final End:I

.field public static final Horizontal:I

.field public static final Left:I

.field public static final Right:I

.field public static final Start:I

.field public static final Top:I


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInLtr:I

    const/4 v1, 0x4

    sput v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInLtr:I

    const/4 v2, 0x2

    sput v2, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInRtl:I

    const/4 v3, 0x1

    sput v3, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInRtl:I

    const/16 v4, 0x8

    or-int/2addr v4, v3

    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->Start:I

    const/4 v4, 0x4

    or-int/2addr v4, v2

    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->End:I

    const/16 v4, 0x10

    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->Top:I

    const/16 v4, 0x20

    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->Bottom:I

    or-int/2addr v0, v2

    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Left:I

    or-int/2addr v1, v3

    sput v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Right:I

    or-int/2addr v0, v1

    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Horizontal:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    return-void
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowInsetsSides("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroidx/compose/foundation/layout/WindowInsetsSides;->Start:I

    and-int v3, p0, v2

    if-ne v3, v2, :cond_0

    const-string v2, "Start"

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda$0$appendPlus(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    sget v2, Landroidx/compose/foundation/layout/WindowInsetsSides;->Left:I

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    const-string v2, "Left"

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda$0$appendPlus(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_1
    sget v2, Landroidx/compose/foundation/layout/WindowInsetsSides;->Top:I

    and-int v3, p0, v2

    if-ne v3, v2, :cond_2

    const-string v2, "Top"

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda$0$appendPlus(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2
    sget v2, Landroidx/compose/foundation/layout/WindowInsetsSides;->End:I

    and-int v3, p0, v2

    if-ne v3, v2, :cond_3

    const-string v2, "End"

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda$0$appendPlus(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_3
    sget v2, Landroidx/compose/foundation/layout/WindowInsetsSides;->Right:I

    and-int v3, p0, v2

    if-ne v3, v2, :cond_4

    const-string v2, "Right"

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda$0$appendPlus(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_4
    sget v2, Landroidx/compose/foundation/layout/WindowInsetsSides;->Bottom:I

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_5

    const-string p0, "Bottom"

    invoke-static {p0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda$0$appendPlus(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final valueToString_impl$lambda$0$appendPlus(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/foundation/layout/WindowInsetsSides;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsSides;

    iget p1, p1, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    iget p0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
