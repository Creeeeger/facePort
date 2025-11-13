.class public final Lkotlinx/serialization/internal/ReferenceArraySerializer;
.super Lkotlinx/serialization/internal/CollectionLikeSerializer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final descriptor:Lkotlinx/serialization/internal/ArrayClassDesc;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass;",
            "Lkotlinx/serialization/KSerializer;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lkotlinx/serialization/internal/CollectionLikeSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lkotlinx/serialization/internal/ArrayClassDesc;

    invoke-interface {p2}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlinx/serialization/internal/ArrayClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object p1, p0, Lkotlinx/serialization/internal/ReferenceArraySerializer;->descriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    return-void
.end method


# virtual methods
.method public final collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    check-cast p1, [Ljava/lang/Object;

    new-instance p0, Lkotlin/jvm/internal/ArrayIterator;

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object p0
.end method

.method public final collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [Ljava/lang/Object;

    array-length p0, p1

    return p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/ReferenceArraySerializer;->descriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    return-object p0
.end method
