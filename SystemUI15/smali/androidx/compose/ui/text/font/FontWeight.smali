.class public final Landroidx/compose/ui/text/font/FontWeight;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final Bold:Landroidx/compose/ui/text/font/FontWeight;

.field public static final Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

.field public static final Medium:Landroidx/compose/ui/text/font/FontWeight;

.field public static final Normal:Landroidx/compose/ui/text/font/FontWeight;

.field public static final W400:Landroidx/compose/ui/text/font/FontWeight;

.field public static final W500:Landroidx/compose/ui/text/font/FontWeight;

.field public static final W600:Landroidx/compose/ui/text/font/FontWeight;

.field public static final W700:Landroidx/compose/ui/text/font/FontWeight;


# instance fields
.field public final weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Landroidx/compose/ui/text/font/FontWeight$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    new-instance v2, Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    new-instance v3, Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0xc8

    invoke-direct {v3, v0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    new-instance v4, Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0x12c

    invoke-direct {v4, v0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    new-instance v5, Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0x190

    invoke-direct {v5, v0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    sput-object v5, Landroidx/compose/ui/text/font/FontWeight;->W400:Landroidx/compose/ui/text/font/FontWeight;

    new-instance v6, Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0x1f4

    invoke-direct {v6, v0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    sput-object v6, Landroidx/compose/ui/text/font/FontWeight;->W500:Landroidx/compose/ui/text/font/FontWeight;

    new-instance v7, Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0x258

    invoke-direct {v7, v0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    sput-object v7, Landroidx/compose/ui/text/font/FontWeight;->W600:Landroidx/compose/ui/text/font/FontWeight;

    new-instance v8, Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0x2bc

    invoke-direct {v8, v0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    sput-object v8, Landroidx/compose/ui/text/font/FontWeight;->W700:Landroidx/compose/ui/text/font/FontWeight;

    new-instance v9, Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0x320

    invoke-direct {v9, v0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    new-instance v10, Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0x384

    invoke-direct {v10, v0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    sput-object v5, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v6, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v8, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    filled-new-array/range {v2 .. v10}, [Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    const/4 p0, 0x1

    if-gt p0, p1, :cond_0

    const/16 p0, 0x3e9

    if-ge p1, p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Font weight can be in range [1, 1000]. Current value: "

    invoke-static {p1, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final compareTo(Landroidx/compose/ui/text/font/FontWeight;)I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget p1, p1, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/font/FontWeight;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget p0, p0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    check-cast p1, Landroidx/compose/ui/text/font/FontWeight;

    iget p1, p1, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FontWeight(weight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
