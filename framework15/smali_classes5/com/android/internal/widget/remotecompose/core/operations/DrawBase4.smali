.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBase4.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;


# instance fields
.field protected blacklist mName:Ljava/lang/String;

.field blacklist mX1:F

.field blacklist mX1Value:F

.field blacklist mX2:F

.field blacklist mX2Value:F

.field blacklist mY1:F

.field blacklist mY1Value:F

.field blacklist mY2:F

.field blacklist mY2Value:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$1;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$1;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    return-void
.end method

.method public constructor blacklist <init>(FFFF)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const-string v0, "DrawRectBase"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mName:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2:F

    return-void
.end method


# virtual methods
.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_3
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1:F

    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1:F

    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2:F

    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2:F

    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    :goto_1
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    :goto_2
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    :goto_3
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2:F

    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 6

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method
