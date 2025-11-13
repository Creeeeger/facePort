.class public final Landroidx/compose/ui/text/style/LineBreak$Strictness;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;

.field public static final Default:I

.field public static final Loose:I

.field public static final Normal:I

.field public static final Strict:I


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Companion:Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;

    const/4 v0, 0x1

    sput v0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Default:I

    const/4 v0, 0x2

    sput v0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Loose:I

    const/4 v0, 0x3

    sput v0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Normal:I

    const/4 v0, 0x4

    sput v0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Strict:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->value:I

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
    .locals 1

    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Default:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Strictness.None"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Loose:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Strictness.Loose"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Normal:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Strictness.Normal"

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Strict:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Strictness.Strict"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Strictness.Unspecified"

    goto :goto_0

    :cond_4
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/text/style/LineBreak$Strictness;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/style/LineBreak$Strictness;

    iget p1, p1, Landroidx/compose/ui/text/style/LineBreak$Strictness;->value:I

    iget p0, p0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->value:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/LineBreak$Strictness;->value:I

    invoke-static {p0}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
