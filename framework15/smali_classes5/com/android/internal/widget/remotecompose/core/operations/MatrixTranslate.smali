.class public Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;
.source "MatrixTranslate.java"


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Companion;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate$1;

    const/16 v1, 0x7f

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate$1;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Companion;

    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;-><init>(FF)V

    const-string v0, "MatrixTranslate"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->mV1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->mV2:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixTranslate(FF)V

    return-void
.end method
