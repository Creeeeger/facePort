.class public Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;
.super Ljava/lang/Object;
.source "FloatExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Operation;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression$Companion;

.field public static final blacklist MAX_STRING_SIZE:I = 0xfa0


# instance fields
.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field public blacklist mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

.field public blacklist mId:I

.field private blacklist mLastChange:F

.field public blacklist mPreCalcValue:[F

.field public blacklist mSrcAnimation:[F

.field public blacklist mSrcValue:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression$Companion;

    return-void
.end method

.method public constructor blacklist <init>(I[F[F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>([F)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [F

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([F[F)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    :goto_0
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {p1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v3, v3, v1

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FloatExpression["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    invoke-static {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aput v3, v4, v1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aput v3, v4, v1

    :cond_3
    :goto_1
    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v4, v4, v1

    aput v4, v3, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [F

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([F[F)F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getTargetValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getTargetValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    :goto_3
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    :cond_7
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 4

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression$Companion;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    return-void
.end method
