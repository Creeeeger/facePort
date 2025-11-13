.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;
.super Ljava/lang/Object;
.source "DrawBase6.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/CompanionOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Companion"
.end annotation


# instance fields
.field public final blacklist OP_CODE:I


# direct methods
.method protected constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;->OP_CODE:I

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;->OP_CODE:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p1, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p1, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p1, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    return-void
.end method

.method public blacklist construct(FFFFFF)Lcom/android/internal/widget/remotecompose/core/Operation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist id()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;->OP_CODE:I

    return v0
.end method

.method public blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "DrawRect"

    return-object v0
.end method

.method public blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v8

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v9

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v10

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v11

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v12

    move-object v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;->construct(FFFFFF)Lcom/android/internal/widget/remotecompose/core/Operation;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
