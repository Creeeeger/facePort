.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;
.super Ljava/lang/Object;
.source "CompositeAlgorithmSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist algorithmNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist parameterSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetalgorithmNames(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->algorithmNames:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetparameterSpecs(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->parameterSpecs:Ljava/util/List;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->algorithmNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->parameterSpecs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->algorithmNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->parameterSpecs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist add(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->algorithmNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->parameterSpecs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist build()Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->algorithmNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot call build with no algorithm names added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
