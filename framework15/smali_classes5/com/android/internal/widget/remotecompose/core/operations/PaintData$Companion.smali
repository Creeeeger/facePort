.class public Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion;
.super Ljava/lang/Object;
.source "PaintData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/CompanionOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/PaintData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Companion"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .locals 1

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->writeBundle(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist id()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "TextData"

    return-object v0
.end method

.method public blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;-><init>()V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->readBundle(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
