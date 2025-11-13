.class public final Lkotlinx/serialization/internal/ULongArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/ULongArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/ULongArraySerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/ULongArraySerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/ULongArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongArraySerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget v0, Lkotlin/ULong;->$r8$clinit:I

    sget-object v0, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public final collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/ULongArray;

    iget-object p0, p1, Lkotlin/ULongArray;->storage:[J

    array-length p0, p0

    return p0
.end method

.method public final writeContent(Lkotlinx/serialization/encoding/AbstractEncoder;Ljava/lang/Object;I)V
    .locals 4

    check-cast p2, Lkotlin/ULongArray;

    iget-object p2, p2, Lkotlin/ULongArray;->storage:[J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeInlineElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/AbstractEncoder;

    aget-wide v1, p2, v0

    sget v3, Lkotlin/ULong;->$r8$clinit:I

    invoke-virtual {p1, v1, v2}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
