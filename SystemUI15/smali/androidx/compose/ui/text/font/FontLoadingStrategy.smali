.class public final Landroidx/compose/ui/text/font/FontLoadingStrategy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Async:I

.field public static final Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

.field public static final OptionalLocal:I


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    const/4 v0, 0x1

    sput v0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->OptionalLocal:I

    const/4 v0, 0x2

    sput v0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Async:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->value:I

    return-void
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Blocking"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->OptionalLocal:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Optional"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Async:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Async"

    goto :goto_0

    :cond_2
    const-string v0, "Invalid(value="

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/core/ArcMode$$ExternalSyntheticOutline0;->m(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/text/font/FontLoadingStrategy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/font/FontLoadingStrategy;

    iget p1, p1, Landroidx/compose/ui/text/font/FontLoadingStrategy;->value:I

    iget p0, p0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->value:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->value:I

    invoke-static {p0}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
