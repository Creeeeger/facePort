.class public final Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $this_elementNames$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$2;->$this_elementNames$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$2;->$this_elementNames$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    return-object v0
.end method
