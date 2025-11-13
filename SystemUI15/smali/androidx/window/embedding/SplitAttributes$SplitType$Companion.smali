.class public final Landroidx/window/embedding/SplitAttributes$SplitType$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;-><init>()V

    return-void
.end method

.method public static ratio(F)Landroidx/window/embedding/SplitAttributes$SplitType;
    .locals 8

    sget-object v0, Landroidx/window/core/SpecificationComputer;->Companion:Landroidx/window/core/SpecificationComputer$Companion;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sget-object v2, Landroidx/window/embedding/SplitAttributes;->TAG:Ljava/lang/String;

    sget-object v3, Landroidx/window/core/VerificationMode;->STRICT:Landroidx/window/core/VerificationMode;

    sget-object v4, Landroidx/window/core/AndroidLogger;->INSTANCE:Landroidx/window/core/AndroidLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/window/core/ValidSpecification;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/window/core/ValidSpecification;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/window/core/VerificationMode;Landroidx/window/core/Logger;)V

    new-instance v1, Landroidx/window/embedding/SplitAttributes$SplitType$Companion$ratio$checkedRatio$1;

    invoke-direct {v1, p0}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion$ratio$checkedRatio$1;-><init>(F)V

    const-string v5, "Ratio must be in range (0.0, 1.0). Use SplitType.expandContainers() instead of 0 or 1."

    iget-object p0, v0, Landroidx/window/core/ValidSpecification;->value:Ljava/lang/Object;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/window/core/FailedSpecification;

    iget-object v3, v0, Landroidx/window/core/ValidSpecification;->value:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/window/core/ValidSpecification;->tag:Ljava/lang/String;

    iget-object v6, v0, Landroidx/window/core/ValidSpecification;->logger:Landroidx/window/core/Logger;

    iget-object v7, v0, Landroidx/window/core/ValidSpecification;->verificationMode:Landroidx/window/core/VerificationMode;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroidx/window/core/FailedSpecification;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroidx/window/core/Logger;Landroidx/window/core/VerificationMode;)V

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroidx/window/core/SpecificationComputer;->compute()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    new-instance v0, Landroidx/window/embedding/SplitAttributes$SplitType;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ratio:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/window/embedding/SplitAttributes$SplitType;-><init>(Ljava/lang/String;F)V

    return-object v0
.end method
