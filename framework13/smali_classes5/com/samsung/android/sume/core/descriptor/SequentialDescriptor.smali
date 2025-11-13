.class public Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;
.super Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
.source "SequentialDescriptor.java"


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

.field private blacklist evaluators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field blacklist sequentialType:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;
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
            "Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 14
    .local p2, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/descriptor/MFDescriptor;>;"
    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialType:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    .line 16
    iput-object p2, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->descriptors:Ljava/util/List;

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->setFilterId(Ljava/lang/String;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;

    .line 18
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

    .line 21
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->descriptors:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getEvaluators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->evaluators:Ljava/util/List;

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

    .line 26
    const-class v0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;

    return-object v0
.end method

.method public blacklist getSequentialType()Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->sequentialType:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    return-object v0
.end method

.method public blacklist setEvaluators(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "evaluators"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "evaluators":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/evaluate/Evaluator;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->evaluators:Ljava/util/List;

    .line 39
    return-void
.end method
