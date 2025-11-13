.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;
.source "DrawArc.java"


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc$1;

    const/16 v1, 0x34

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc$1;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;

    return-void
.end method

.method public constructor blacklist <init>(FFFFFF)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;-><init>(FFFFFF)V

    const-string v0, "DrawArc"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 7

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV2:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV3:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV4:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV5:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV6:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawArc(FFFFFF)V

    return-void
.end method
