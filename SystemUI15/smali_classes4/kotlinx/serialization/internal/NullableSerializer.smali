.class public final Lkotlinx/serialization/internal/NullableSerializer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# instance fields
.field public final descriptor:Lkotlinx/serialization/internal/SerialDescriptorForNullable;

.field public final serializer:Lkotlinx/serialization/KSerializer;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/NullableSerializer;->serializer:Lkotlinx/serialization/KSerializer;

    new-instance v0, Lkotlinx/serialization/internal/SerialDescriptorForNullable;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/SerialDescriptorForNullable;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/NullableSerializer;->descriptor:Lkotlinx/serialization/internal/SerialDescriptorForNullable;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lkotlinx/serialization/internal/NullableSerializer;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lkotlinx/serialization/internal/NullableSerializer;

    iget-object p0, p0, Lkotlinx/serialization/internal/NullableSerializer;->serializer:Lkotlinx/serialization/KSerializer;

    iget-object p1, p1, Lkotlinx/serialization/internal/NullableSerializer;->serializer:Lkotlinx/serialization/KSerializer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/NullableSerializer;->descriptor:Lkotlinx/serialization/internal/SerialDescriptorForNullable;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/NullableSerializer;->serializer:Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/AbstractEncoder;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lkotlinx/serialization/internal/NullableSerializer;->serializer:Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, p2}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeNull()V

    :goto_0
    return-void
.end method
