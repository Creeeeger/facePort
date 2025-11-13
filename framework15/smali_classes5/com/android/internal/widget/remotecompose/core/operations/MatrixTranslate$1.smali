.class Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate$1;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Companion;
.source "MatrixTranslate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Companion;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist construct(FF)Lcom/android/internal/widget/remotecompose/core/Operation;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;-><init>(FF)V

    return-object v0
.end method
