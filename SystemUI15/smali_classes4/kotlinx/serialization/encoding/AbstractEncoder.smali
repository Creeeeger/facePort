.class public abstract Lkotlinx/serialization/encoding/AbstractEncoder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeBoolean(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public encodeByte(B)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public encodeChar(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public encodeDouble(D)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public encodeElement(I)V
    .locals 0

    return-void
.end method

.method public encodeFloat(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeInlineElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/AbstractEncoder;
    .locals 0

    invoke-virtual {p0, p2}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeElement(I)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public encodeInt(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public encodeLong(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public encodeNull()V
    .locals 1

    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string v0, "\'null\' is not supported by default"

    invoke-direct {p0, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p2}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeElement(I)V

    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/encoding/AbstractEncoder;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeShort(S)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public encodeString(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public encodeValue(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lkotlinx/serialization/SerializationException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-serializable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported by "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " encoder"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getSerializersModule()Lkotlinx/serialization/modules/SerialModuleImpl;
.end method
