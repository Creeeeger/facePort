.class public final Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;
.super Lcom/android/systemui/qs/pipeline/shared/TileSpec;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    invoke-direct {v0}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;->INSTANCE:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x49b005fc    # 1441983.5f

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Invalid"

    return-object p0
.end method
