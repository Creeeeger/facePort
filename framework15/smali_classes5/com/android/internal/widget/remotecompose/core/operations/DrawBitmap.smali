.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBitmap.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap$Companion;


# instance fields
.field blacklist mBottom:F

.field blacklist mDescriptionId:I

.field blacklist mId:I

.field blacklist mLeft:F

.field blacklist mOutputBottom:F

.field blacklist mOutputLeft:F

.field blacklist mOutputRight:F

.field blacklist mOutputTop:F

.field blacklist mRight:F

.field blacklist mTop:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IFFFFI)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mDescriptionId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mId:I

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mDescriptionId:I

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 6

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputLeft:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputTop:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputRight:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputBottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IFFFF)V

    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_3
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawBitmap (desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mDescriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputLeft:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    :goto_1
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputTop:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    :goto_2
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputRight:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    :goto_3
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputBottom:F

    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 8

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mDescriptionId:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    return-void
.end method
