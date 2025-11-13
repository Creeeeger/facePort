.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;
.source "DrawRect.java"


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect$1;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect$1;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    return-void
.end method

.method public constructor blacklist <init>(FFFF)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;-><init>(FFFF)V

    const-string v0, "DrawRect"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mX1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mY1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mX2:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mY2:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawRect(FFFF)V

    return-void
.end method
