.class public final Lkotlin/ULong;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final data:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/ULong$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/ULong$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/ULong;->data:J

    return-void
.end method

.method public static final synthetic box-impl(J)Lkotlin/ULong;
    .locals 1

    new-instance v0, Lkotlin/ULong;

    invoke-direct {v0, p0, p1}, Lkotlin/ULong;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lkotlin/ULong;

    iget-wide v0, p1, Lkotlin/ULong;->data:J

    iget-wide p0, p0, Lkotlin/ULong;->data:J

    const-wide/high16 v2, -0x8000000000000000L

    xor-long/2addr p0, v2

    xor-long/2addr v0, v2

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    iget-wide v0, p0, Lkotlin/ULong;->data:J

    instance-of p0, p1, Lkotlin/ULong;

    const/4 v2, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/ULong;

    iget-wide p0, p1, Lkotlin/ULong;->data:J

    cmp-long p0, v0, p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lkotlin/ULong;->data:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Lkotlin/ULong;->data:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const/16 v2, 0xa

    if-ltz p0, :cond_0

    invoke-static {v2}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    ushr-long v3, v0, p0

    int-to-long v5, v2

    div-long/2addr v3, v5

    shl-long/2addr v3, p0

    mul-long v7, v3, v5

    sub-long/2addr v0, v7

    cmp-long p0, v0, v5

    if-ltz p0, :cond_1

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    :cond_1
    invoke-static {v2}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {v3, v4, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
