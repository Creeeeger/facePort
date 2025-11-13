.class public final Landroidx/compose/ui/text/style/LineBreak$Strategy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Balanced:I

.field public static final Companion:Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;

.field public static final HighQuality:I

.field public static final Simple:I


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Companion:Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;

    const/4 v0, 0x1

    sput v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Simple:I

    const/4 v0, 0x2

    sput v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->HighQuality:I

    const/4 v0, 0x3

    sput v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Balanced:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->value:I

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

    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Simple:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Strategy.Simple"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->HighQuality:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Strategy.HighQuality"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Balanced:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Strategy.Balanced"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Strategy.Unspecified"

    goto :goto_0

    :cond_3
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/text/style/LineBreak$Strategy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/style/LineBreak$Strategy;

    iget p1, p1, Landroidx/compose/ui/text/style/LineBreak$Strategy;->value:I

    iget p0, p0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->value:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/LineBreak$Strategy;->value:I

    invoke-static {p0}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
