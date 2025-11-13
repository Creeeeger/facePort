.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;
.source "DrawRoundRect.java"


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect$1;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect$1;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;

    return-void
.end method

.method public constructor blacklist <init>(FFFFFF)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;-><init>(FFFFFF)V

    const-string v0, "ClipRect"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 7

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mV1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mV2:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mV3:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mV4:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mV5:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mV6:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawRoundRect(FFFFFF)V

    return-void
.end method
