.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;
.source "DrawCircle.java"


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Companion;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle$1;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle$1;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Companion;

    return-void
.end method

.method public constructor blacklist <init>(FFF)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;-><init>(FFF)V

    const-string v0, "DrawCircle"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->mV1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->mV2:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->mV3:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawCircle(FFF)V

    return-void
.end method
