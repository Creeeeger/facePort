.class public final Lkotlinx/serialization/internal/UByteArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UByteArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/UByteArraySerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/UByteArraySerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/UByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/UByteArraySerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget v0, Lkotlin/UByte;->$r8$clinit:I

    sget-object v0, Lkotlinx/serialization/internal/UByteSerializer;->INSTANCE:Lkotlinx/serialization/internal/UByteSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public final collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/UByteArray;

    iget-object p0, p1, Lkotlin/UByteArray;->storage:[B

    array-length p0, p0

    return p0
.end method

.method public final writeContent(Lkotlinx/serialization/encoding/AbstractEncoder;Ljava/lang/Object;I)V
    .locals 3

    check-cast p2, Lkotlin/UByteArray;

    iget-object p2, p2, Lkotlin/UByteArray;->storage:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeInlineElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/AbstractEncoder;

    aget-byte v1, p2, v0

    sget v2, Lkotlin/UByte;->$r8$clinit:I

    invoke-virtual {p1, v1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeByte(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
