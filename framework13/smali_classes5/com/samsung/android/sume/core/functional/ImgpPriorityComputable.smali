.class public Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;
.super Ljava/lang/Object;
.source "ImgpPriorityComputable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;
    }
.end annotation


# instance fields
.field private blacklist bridge:Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;

.field private blacklist priorityCompute:Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

.field private final blacklist type:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 15
    .local p1, "type":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;->type:Ljava/lang/Enum;

    .line 17
    return-void
.end method

.method static synthetic blacklist lambda$compute$0(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;)F
    .locals 1
    .param p0, "ifmt"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .param p1, "ofmt"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p2, "compute"    # Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

    .line 26
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic blacklist lambda$compute$1()Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;
    .locals 1

    .line 26
    new-instance v0, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist compute(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;)F
    .locals 2
    .param p1, "input"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .param p2, "output"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;->bridge:Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$$ExternalSyntheticLambda1;-><init>()V

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;

    iget-object v1, p0, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;->priorityCompute:Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

    .line 27
    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;->compute(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;)F

    move-result v0

    .line 25
    return v0
.end method

.method public blacklist getType()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>()TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;->type:Ljava/lang/Enum;

    return-object v0
.end method

.method blacklist setComputeBridge(Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;)V
    .locals 0
    .param p1, "bridge"    # Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;
    .param p2, "priorityCompute"    # Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bridge",
            "priorityCompute"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;->bridge:Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;->priorityCompute:Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

    .line 22
    return-void
.end method
