.class public Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "MatrixSkew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion;


# instance fields
.field blacklist mSkewX:F

.field blacklist mSkewY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion;

    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->mSkewX:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->mSkewY:F

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->mSkewX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->mSkewY:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixSkew(FF)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawArc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->mSkewY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->mSkewY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 3

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->mSkewX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->mSkewY:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    return-void
.end method
