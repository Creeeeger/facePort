.class public final Landroidx/compose/ui/semantics/LiveRegionMode;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Assertive:I

.field public static final Companion:Landroidx/compose/ui/semantics/LiveRegionMode$Companion;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/semantics/LiveRegionMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/semantics/LiveRegionMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/LiveRegionMode;->Companion:Landroidx/compose/ui/semantics/LiveRegionMode$Companion;

    const/4 v0, 0x1

    sput v0, Landroidx/compose/ui/semantics/LiveRegionMode;->Assertive:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/semantics/LiveRegionMode;->value:I

    return-void
.end method

.method public static final synthetic box-impl()Landroidx/compose/ui/semantics/LiveRegionMode;
    .locals 2

    new-instance v0, Landroidx/compose/ui/semantics/LiveRegionMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/semantics/LiveRegionMode;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/semantics/LiveRegionMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/semantics/LiveRegionMode;

    iget p1, p1, Landroidx/compose/ui/semantics/LiveRegionMode;->value:I

    iget p0, p0, Landroidx/compose/ui/semantics/LiveRegionMode;->value:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/LiveRegionMode;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Landroidx/compose/ui/semantics/LiveRegionMode;->value:I

    if-nez p0, :cond_0

    const-string p0, "Polite"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/semantics/LiveRegionMode;->Assertive:I

    if-ne p0, v0, :cond_1

    const-string p0, "Assertive"

    goto :goto_0

    :cond_1
    const-string p0, "Unknown"

    :goto_0
    return-object p0
.end method
