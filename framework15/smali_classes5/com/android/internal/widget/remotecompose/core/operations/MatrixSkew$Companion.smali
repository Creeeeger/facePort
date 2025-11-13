.class public Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion;
.super Ljava/lang/Object;
.source "MatrixSkew.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/CompanionOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;
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

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    return-void
.end method

.method public blacklist id()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "Matrix"

    return-object v0
.end method

.method public blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 3
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

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;-><init>(FF)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
