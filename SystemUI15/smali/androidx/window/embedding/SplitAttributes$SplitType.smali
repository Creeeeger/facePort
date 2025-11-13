.class public final Landroidx/window/embedding/SplitAttributes$SplitType;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

.field public static final SPLIT_TYPE_EQUAL:Landroidx/window/embedding/SplitAttributes$SplitType;

.field public static final SPLIT_TYPE_EXPAND:Landroidx/window/embedding/SplitAttributes$SplitType;

.field public static final SPLIT_TYPE_HINGE:Landroidx/window/embedding/SplitAttributes$SplitType;


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->Companion:Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

    new-instance v0, Landroidx/window/embedding/SplitAttributes$SplitType;

    const-string v1, "expandContainers"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/window/embedding/SplitAttributes$SplitType;-><init>(Ljava/lang/String;F)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_EXPAND:Landroidx/window/embedding/SplitAttributes$SplitType;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;->ratio(F)Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object v0

    sput-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_EQUAL:Landroidx/window/embedding/SplitAttributes$SplitType;

    new-instance v0, Landroidx/window/embedding/SplitAttributes$SplitType;

    const-string v1, "hinge"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v2}, Landroidx/window/embedding/SplitAttributes$SplitType;-><init>(Ljava/lang/String;F)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_HINGE:Landroidx/window/embedding/SplitAttributes$SplitType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    iput p2, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/SplitAttributes$SplitType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/window/embedding/SplitAttributes$SplitType;

    iget v1, p1, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    iget v3, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    cmpg-float v1, v3, v1

    if-nez v1, :cond_2

    iget-object p0, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    iget-object p1, p1, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p0, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    return-object p0
.end method
