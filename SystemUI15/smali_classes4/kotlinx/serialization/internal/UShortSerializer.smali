.class public final Lkotlinx/serialization/internal/UShortSerializer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UShortSerializer;

.field public static final descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/serialization/internal/UShortSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/UShortSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/UShortSerializer;->INSTANCE:Lkotlinx/serialization/internal/UShortSerializer;

    sget v0, Lkotlin/jvm/internal/ShortCompanionObject;->$r8$clinit:I

    sget-object v0, Lkotlinx/serialization/internal/ShortSerializer;->INSTANCE:Lkotlinx/serialization/internal/ShortSerializer;

    new-instance v1, Lkotlinx/serialization/internal/InlineClassDescriptor;

    new-instance v2, Lkotlinx/serialization/internal/InlineClassDescriptorKt$InlinePrimitiveDescriptor$1;

    invoke-direct {v2, v0}, Lkotlinx/serialization/internal/InlineClassDescriptorKt$InlinePrimitiveDescriptor$1;-><init>(Lkotlinx/serialization/KSerializer;)V

    const-string v0, "kotlin.UShort"

    invoke-direct {v1, v0, v2}, Lkotlinx/serialization/internal/InlineClassDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;)V

    sput-object v1, Lkotlinx/serialization/internal/UShortSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

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

    sget-object p0, Lkotlinx/serialization/internal/UShortSerializer;->descriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/AbstractEncoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlin/UShort;

    iget-short p0, p2, Lkotlin/UShort;->data:S

    invoke-virtual {p1, p0}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeShort(S)V

    return-void
.end method
