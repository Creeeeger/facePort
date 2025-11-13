.class Lcom/android/internal/widget/remotecompose/core/operations/DrawRect$1;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;
.source "DrawRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist construct(FFFF)Lcom/android/internal/widget/remotecompose/core/Operation;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;-><init>(FFFF)V

    return-object v0
.end method
