.class public abstract Lcom/android/internal/widget/remotecompose/core/PaintContext;
.super Ljava/lang/Object;
.source "PaintContext.java"


# instance fields
.field protected blacklist mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-void
.end method


# virtual methods
.method public abstract blacklist applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
.end method

.method public abstract blacklist clipPath(II)V
.end method

.method public abstract blacklist clipRect(FFFF)V
.end method

.method public abstract blacklist drawArc(FFFFFF)V
.end method

.method public abstract blacklist drawBitmap(IFFFF)V
.end method

.method public abstract blacklist drawBitmap(IIIIIIIIII)V
.end method

.method public abstract blacklist drawCircle(FFF)V
.end method

.method public abstract blacklist drawLine(FFFF)V
.end method

.method public abstract blacklist drawOval(FFFF)V
.end method

.method public abstract blacklist drawPath(IFF)V
.end method

.method public abstract blacklist drawRect(FFFF)V
.end method

.method public abstract blacklist drawRoundRect(FFFFFF)V
.end method

.method public abstract blacklist drawTextOnPath(IIFF)V
.end method

.method public abstract blacklist drawTextRun(IIIIIFFZ)V
.end method

.method public abstract blacklist drawTweenPath(IIFFF)V
.end method

.method public abstract blacklist getTextBounds(IIIZ[F)V
.end method

.method public abstract blacklist matrixRestore()V
.end method

.method public abstract blacklist matrixRotate(FFF)V
.end method

.method public abstract blacklist matrixSave()V
.end method

.method public abstract blacklist matrixScale(FFFF)V
.end method

.method public abstract blacklist matrixSkew(FF)V
.end method

.method public abstract blacklist matrixTranslate(FF)V
.end method

.method public abstract blacklist reset()V
.end method

.method public abstract blacklist scale(FF)V
.end method

.method public blacklist setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-void
.end method

.method public abstract blacklist translate(FF)V
.end method
