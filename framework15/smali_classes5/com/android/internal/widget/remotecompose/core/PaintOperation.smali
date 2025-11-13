.class public abstract Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.super Ljava/lang/Object;
.source "PaintOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Operation;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getMode()Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->PAINT:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    :cond_0
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
.end method
