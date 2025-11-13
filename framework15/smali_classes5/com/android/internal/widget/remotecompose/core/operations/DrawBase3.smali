.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBase3.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Companion;


# instance fields
.field protected blacklist mName:Ljava/lang/String;

.field blacklist mV1:F

.field blacklist mV2:F

.field blacklist mV3:F

.field blacklist mValue1:F

.field blacklist mValue2:F

.field blacklist mValue3:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$1;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$1;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Companion;

    return-void
.end method

.method public constructor blacklist <init>(FFF)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const-string v0, "DrawRectBase"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mName:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    return-void
.end method


# virtual methods
.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_2
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    :goto_1
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    :goto_2
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 4

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Companion;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    return-void
.end method
