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

.field private blacklist inputFormat:Lcom/samsung/android/sume/core/format/MutableImageFormat;

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

.field private blacklist outputFormat:Lcom/samsung/android/sume/core/format/MutableImageFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;)V
    .locals 0
    .param p1, "fw"    # Lcom/samsung/android/sume/core/types/nn/NNFW;
    .param p2, "hw"    # Lcom/samsung/android/sume/core/types/HwUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fw",
            "hw"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->hw:Lcom/samsung/android/sume/core/types/HwUnit;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V
    .locals 0
    .param p1, "fw"    # Lcom/samsung/android/sume/core/types/nn/NNFW;
    .param p2, "hw"    # Lcom/samsung/android/sume/core/types/HwUnit;
    .param p3, "nnDescriptor"    # Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fw",
            "hw",
            "nnDescriptor"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;)V

    .line 39
    invoke-virtual {p0, p3}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->setNNDescriptor(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;Lcom/samsung/android/sume/core/types/LoadType;Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V
    .locals 1
    .param p1, "fw"    # Lcom/samsung/android/sume/core/types/nn/NNFW;
    .param p2, "hw"    # Lcom/samsung/android/sume/core/types/HwUnit;
    .param p3, "loadType"    # Lcom/samsung/android/sume/core/types/LoadType;
    .param p4, "nnDescriptor"    # Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fw",
            "hw",
            "loadType",
            "nnDescriptor"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V

    .line 44
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/types/LoadType;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->loadTypeSupplier:Ljava/util/function/Supplier;

    .line 45
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/types/LoadType;)Lcom/samsung/android/sume/core/types/LoadType;
    .locals 0
    .param p0, "loadType"    # Lcom/samsung/android/sume/core/types/LoadType;

    .line 44
    return-object p0
.end method


# virtual methods
.method public blacklist clone()Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;
    .locals 3

    .line 119
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v0, "clone":Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;
    return-object v0

    .line 122
    .end local v0    # "clone":Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
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

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->clone()Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFilterId()Ljava/lang/String;
    .locals 1

    .line 49
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

    .line 54
    const-class v0, Lcom/samsung/android/sume/core/types/nn/NNFW;

    return-object v0
.end method

.method public blacklist getFw()Lcom/samsung/android/sume/core/types/nn/NNFW;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

    return-object v0
.end method

.method public blacklist getHw()Lcom/samsung/android/sume/core/types/HwUnit;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->hw:Lcom/samsung/android/sume/core/types/HwUnit;

    return-object v0
.end method

.method public blacklist getInputFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->inputFormat:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    return-object v0
.end method

.method public blacklist getLoadType()Lcom/samsung/android/sume/core/types/LoadType;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->loadTypeSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/LoadType;

    return-object v0
.end method

.method public blacklist getNNDescriptor()Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->nnDescriptor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    return-object v0
.end method

.method public blacklist getNNFileDescriptor()Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->nnFileDescriptor:Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    return-object v0
.end method

.method public blacklist getNNFramework()Lcom/samsung/android/sume/core/types/nn/NNFW;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

    return-object v0
.end method

.method public blacklist getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->nnDescriptor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    return-object v0
.end method

.method public blacklist getOutputFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->outputFormat:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    return-object v0
.end method

.method public blacklist isInstant()Z
    .locals 2

    .line 99
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

    .line 95
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
    .param p1, "nnDescriptor"    # Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nnDescriptor"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->nnDescriptor:Ljava/lang/ref/WeakReference;

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getPluginId()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/nn/Model;

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->model:Lcom/samsung/android/sume/core/types/nn/Model;

    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->inputFormat:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->outputFormat:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 79
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->loadTypeSupplier:Ljava/util/function/Supplier;

    .line 80
    return-void
.end method

.method public blacklist setNNFileDescriptor(Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;)V
    .locals 0
    .param p1, "nnFileDescriptor"    # Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nnFileDescriptor"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->nnFileDescriptor:Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    .line 67
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 130
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->nnFileDescriptor:Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    .line 131
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

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->model:Lcom/samsung/android/sume/core/types/nn/Model;

    .line 132
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/nn/Model;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

    .line 133
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/nn/NNFW;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->hw:Lcom/samsung/android/sume/core/types/HwUnit;

    .line 134
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/HwUnit;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->inputFormat:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "output="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->outputFormat:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 130
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->contentToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
