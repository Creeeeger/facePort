.class public Lcom/samsung/android/sume/core/functional/OpPriorityComputable;
.super Ljava/lang/Object;
.source "OpPriorityComputable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;
    }
.end annotation


# instance fields
.field private blacklist bridge:Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;

.field private blacklist priorityCompute:Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->type:Ljava/lang/Enum;

    return-void
.end method

.method static synthetic blacklist lambda$compute$0(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static synthetic blacklist lambda$compute$1()Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist compute(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;)F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->bridge:Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;

    iget-object v1, p0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->priorityCompute:Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;->compute(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F

    move-result v0

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

    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->type:Ljava/lang/Enum;

    return-object v0
.end method

.method blacklist setComputeBridge(Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->bridge:Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;

    iput-object p2, p0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->priorityCompute:Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    return-void
.end method
