.class public Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;
.source "MatrixScale.java"


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale$1;

    const/16 v1, 0x7e

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale$1;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    return-void
.end method

.method public constructor blacklist <init>(FFFF)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;-><init>(FFFF)V

    const-string v0, "MatrixScale"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->mX1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->mY1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->mX2:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->mY2:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixScale(FFFF)V

    return-void
.end method
