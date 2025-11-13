.class public final Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $this_elementDescriptors$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$1;->$this_elementDescriptors$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$1$1;

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$1;->$this_elementDescriptors$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-direct {v0, p0}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$1$1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object v0
.end method
