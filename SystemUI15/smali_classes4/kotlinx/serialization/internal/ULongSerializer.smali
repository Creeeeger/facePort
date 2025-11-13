.class public final Lkotlinx/serialization/internal/ULongSerializer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

.field public static final descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/serialization/internal/ULongSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/ULongSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    sget v0, Lkotlin/jvm/internal/LongCompanionObject;->$r8$clinit:I

    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    new-instance v1, Lkotlinx/serialization/internal/InlineClassDescriptor;

    new-instance v2, Lkotlinx/serialization/internal/InlineClassDescriptorKt$InlinePrimitiveDescriptor$1;

    invoke-direct {v2, v0}, Lkotlinx/serialization/internal/InlineClassDescriptorKt$InlinePrimitiveDescriptor$1;-><init>(Lkotlinx/serialization/KSerializer;)V

    const-string v0, "kotlin.ULong"

    invoke-direct {v1, v0, v2}, Lkotlinx/serialization/internal/InlineClassDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;)V

    sput-object v1, Lkotlinx/serialization/internal/ULongSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/ULongSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/AbstractEncoder;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lkotlin/ULong;

    iget-wide v0, p2, Lkotlin/ULong;->data:J

    invoke-virtual {p1, v0, v1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeLong(J)V

    return-void
.end method
