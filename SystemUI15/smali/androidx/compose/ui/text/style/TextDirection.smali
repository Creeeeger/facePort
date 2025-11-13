.class public final Landroidx/compose/ui/text/style/TextDirection;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

.field public static final Content:I

.field public static final ContentOrLtr:I

.field public static final ContentOrRtl:I

.field public static final Ltr:I

.field public static final Rtl:I

.field public static final Unspecified:I


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/TextDirection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextDirection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    const/4 v0, 0x1

    sput v0, Landroidx/compose/ui/text/style/TextDirection;->Ltr:I

    const/4 v0, 0x2

    sput v0, Landroidx/compose/ui/text/style/TextDirection;->Rtl:I

    const/4 v0, 0x3

    sput v0, Landroidx/compose/ui/text/style/TextDirection;->Content:I

    const/4 v0, 0x4

    sput v0, Landroidx/compose/ui/text/style/TextDirection;->ContentOrLtr:I

    const/4 v0, 0x5

    sput v0, Landroidx/compose/ui/text/style/TextDirection;->ContentOrRtl:I

    const/high16 v0, -0x80000000

    sput v0, Landroidx/compose/ui/text/style/TextDirection;->Unspecified:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/TextDirection;->value:I

    return-void
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/text/style/TextDirection;
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/style/TextDirection;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    return-object v0
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
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/TextDirection;->Ltr:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Ltr"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->Rtl:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Rtl"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->Content:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Content"

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->ContentOrLtr:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "ContentOrLtr"

    goto :goto_0

    :cond_3
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->ContentOrRtl:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "ContentOrRtl"

    goto :goto_0

    :cond_4
    sget v0, Landroidx/compose/ui/text/style/TextDirection;->Unspecified:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Unspecified"

    goto :goto_0

    :cond_5
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/text/style/TextDirection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/style/TextDirection;

    iget p1, p1, Landroidx/compose/ui/text/style/TextDirection;->value:I

    iget p0, p0, Landroidx/compose/ui/text/style/TextDirection;->value:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/TextDirection;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/TextDirection;->value:I

    invoke-static {p0}, Landroidx/compose/ui/text/style/TextDirection;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
