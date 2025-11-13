.class public Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;
.super Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
.source "ParallelDescriptor.java"


# instance fields
.field private final blacklist descriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist parallelType:Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "descriptors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 16
    .local p2, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/descriptor/MFDescriptor;>;"
    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->parallelType:Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;

    .line 18
    iput-object p2, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->descriptors:Ljava/util/List;

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->setFilterId(Ljava/lang/String;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;

    .line 20
    return-void
.end method

.method static synthetic blacklist lambda$setAllowPartialConnection$2(ZLcom/samsung/android/sume/core/descriptor/MFDescriptor;)V
    .locals 1
    .param p0, "allowPartialConnection"    # Z
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 50
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->setAllowPartialConnection(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$setPad$1(Landroid/util/Pair;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V
    .locals 1
    .param p0, "pad"    # Landroid/util/Pair;
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 44
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->setPad(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic blacklist lambda$setSplitType$0(Lcom/samsung/android/sume/core/types/SplitType;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V
    .locals 1
    .param p0, "splitType"    # Lcom/samsung/android/sume/core/types/SplitType;
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->setSplitType(Lcom/samsung/android/sume/core/types/SplitType;)V

    return-void
.end method

.method static synthetic blacklist lambda$setUseExternalBufferComposer$3(ZLcom/samsung/android/sume/core/descriptor/MFDescriptor;)V
    .locals 1
    .param p0, "useExternalBufferComposer"    # Z
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->setUseExternalBufferComposer(Z)V

    return-void
.end method


# virtual methods
.method public blacklist getDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->descriptors:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getFilterType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 28
    const-class v0, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;

    return-object v0
.end method

.method public blacklist getParallelType()Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->parallelType:Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;

    return-object v0
.end method

.method public blacklist setAllowPartialConnection(Z)V
    .locals 2
    .param p1, "allowPartialConnection"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowPartialConnection"
        }
    .end annotation

    .line 49
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->setAllowPartialConnection(Z)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->descriptors:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 51
    return-void
.end method

.method public blacklist setPad(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/sume/core/types/PadType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "pad":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/sume/core/types/PadType;Ljava/lang/Integer;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->setPad(Landroid/util/Pair;)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->descriptors:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda0;-><init>(Landroid/util/Pair;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 45
    return-void
.end method

.method public blacklist setSplitType(Lcom/samsung/android/sume/core/types/SplitType;)V
    .locals 2
    .param p1, "splitType"    # Lcom/samsung/android/sume/core/types/SplitType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splitType"
        }
    .end annotation

    .line 37
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->setSplitType(Lcom/samsung/android/sume/core/types/SplitType;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->descriptors:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/types/SplitType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 39
    return-void
.end method

.method public blacklist setUseExternalBufferComposer(Z)V
    .locals 2
    .param p1, "useExternalBufferComposer"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useExternalBufferComposer"
        }
    .end annotation

    .line 55
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->setUseExternalBufferComposer(Z)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;->descriptors:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 57
    return-void
.end method
