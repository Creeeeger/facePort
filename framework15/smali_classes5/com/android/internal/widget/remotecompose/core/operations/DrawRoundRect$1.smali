.class Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect$1;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;
.source "DrawRoundRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist construct(FFFFFF)Lcom/android/internal/widget/remotecompose/core/Operation;
    .locals 8

    new-instance v7, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;-><init>(FFFFFF)V

    return-object v7
.end method
