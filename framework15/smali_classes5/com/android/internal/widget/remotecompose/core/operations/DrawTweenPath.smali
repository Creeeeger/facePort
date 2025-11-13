.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawTweenPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath$Companion;


# instance fields
.field blacklist mPath1Id:I

.field blacklist mPath2Id:I

.field blacklist mStart:F

.field blacklist mStop:F

.field blacklist mTween:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IIFFF)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mTween:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStart:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStop:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath1Id:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath2Id:I

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 6

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath1Id:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath2Id:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mTween:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStart:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStop:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTweenPath(IIFFF)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawTweenPath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath1Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath2Id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mTween:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStart:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 7

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath1Id:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath2Id:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mTween:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStart:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStop:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFF)V

    return-void
.end method
