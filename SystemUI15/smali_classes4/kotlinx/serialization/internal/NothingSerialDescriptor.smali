.class public final Lkotlinx/serialization/internal/NothingSerialDescriptor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/NothingSerialDescriptor;

.field public static final kind:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

.field public static final serialName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/NothingSerialDescriptor;

    invoke-direct {v0}, Lkotlinx/serialization/internal/NothingSerialDescriptor;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/NothingSerialDescriptor;->INSTANCE:Lkotlinx/serialization/internal/NothingSerialDescriptor;

    sget-object v0, Lkotlinx/serialization/descriptors/StructureKind$OBJECT;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

    sput-object v0, Lkotlinx/serialization/internal/NothingSerialDescriptor;->kind:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

    const-string v0, "kotlin.Nothing"

    sput-object v0, Lkotlinx/serialization/internal/NothingSerialDescriptor;->serialName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Descriptor for type `kotlin.Nothing` does not have elements"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getElementName(I)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Descriptor for type `kotlin.Nothing` does not have elements"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getElementsCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getKind()Lkotlinx/serialization/descriptors/SerialKind;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/NothingSerialDescriptor;->kind:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

    return-object p0
.end method

.method public final getSerialName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/NothingSerialDescriptor;->serialName:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    sget-object p0, Lkotlinx/serialization/internal/NothingSerialDescriptor;->serialName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    sget-object v0, Lkotlinx/serialization/internal/NothingSerialDescriptor;->kind:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

    invoke-virtual {v0}, Lkotlinx/serialization/descriptors/SerialKind;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public final isElementOptional(I)Z
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Descriptor for type `kotlin.Nothing` does not have elements"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isNullable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NothingSerialDescriptor"

    return-object p0
.end method
