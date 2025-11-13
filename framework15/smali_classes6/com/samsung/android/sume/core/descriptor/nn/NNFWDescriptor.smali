.class public Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;
.super Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
.source "NNFWDescriptor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

.field private final blacklist hw:Lcom/samsung/android/sume/core/types/HwUnit;

.field private blacklist inputFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

.field private transient blacklist loadTypeSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/types/LoadType;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist model:Lcom/samsung/android/sume/core/types/nn/Model;

.field private transient blacklist nnDescriptor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist nnFileDescriptor:Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

.field private blacklist outputFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

.field private transient blacklist targetFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

    iput-object p2, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->hw:Lcom/samsung/android/sume/core/types/HwUnit;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->setNNDescriptor(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;Lcom/samsung/android/sume/core/types/LoadType;Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/types/LoadType;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->loadTypeSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/types/LoadType;)Lcom/samsung/android/sume/core/types/LoadType;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public blacklist clone()Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "fail to clone NNFWDescriptor"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->clone()Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFilterId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/nn/NNFW;->name()Ljava/lang/String;

    move-result-object v0

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

    const-class v0, Lcom/samsung/android/sume/core/types/nn/NNFW;

    return-object v0
.end method

.method public blacklist getFw()Lcom/samsung/android/sume/core/types/nn/NNFW;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

    return-object v0
.end method

.method public blacklist getHw()Lcom/samsung/android/sume/core/types/HwUnit;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->hw:Lcom/samsung/android/sume/core/types/HwUnit;

    return-object v0
.end method

.method public blacklist getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->inputFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-object v0
.end method

.method public blacklist getLoadType()Lcom/samsung/android/sume/core/types/LoadType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->loadTypeSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/LoadType;

    return-object v0
.end method

.method public blacklist getNNDescriptor()Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->nnDescriptor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    return-object v0
.end method

.method public blacklist getNNFileDescriptor()Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->nnFileDescriptor:Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    return-object v0
.end method

.method public blacklist getNNFramework()Lcom/samsung/android/sume/core/types/nn/NNFW;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

    return-object v0
.end method

.method public blacklist getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->nnDescriptor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    return-object v0
.end method

.method public blacklist getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->outputFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-object v0
.end method

.method public blacklist getTargetFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->targetFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-object v0
.end method

.method public blacklist isInstant()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getLoadType()Lcom/samsung/android/sume/core/types/LoadType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/LoadType;->INSTANT:Lcom/samsung/android/sume/core/types/LoadType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isLazy()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getLoadType()Lcom/samsung/android/sume/core/types/LoadType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/LoadType;->LAZY:Lcom/samsung/android/sume/core/types/LoadType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setNNDescriptor(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->nnDescriptor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getPluginId()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/nn/Model;

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->model:Lcom/samsung/android/sume/core/types/nn/Model;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->inputFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->outputFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getTargetFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->targetFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->loadTypeSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public blacklist setNNFileDescriptor(Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->nnFileDescriptor:Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->nnFileDescriptor:Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const-string v3, "n/a"

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->model:Lcom/samsung/android/sume/core/types/nn/Model;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/types/nn/Model;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fw="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/types/nn/NNFW;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hw="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->hw:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/types/HwUnit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->inputFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "output="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->outputFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sume/core/Def;->contentToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
