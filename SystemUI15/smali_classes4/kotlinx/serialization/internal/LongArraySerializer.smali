.class public final Lkotlinx/serialization/internal/LongArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/LongArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/LongArraySerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/LongArraySerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/LongArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/LongArraySerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget v0, Lkotlin/jvm/internal/LongCompanionObject;->$r8$clinit:I

    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public final collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [J

    array-length p0, p1

    return p0
.end method

.method public final writeContent(Lkotlinx/serialization/encoding/AbstractEncoder;Ljava/lang/Object;I)V
    .locals 2

    check-cast p2, [J

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p3, :cond_0

    aget-wide v0, p2, p0

    invoke-virtual {p1, p0}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeElement(I)V

    invoke-virtual {p1, v0, v1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeLong(J)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
