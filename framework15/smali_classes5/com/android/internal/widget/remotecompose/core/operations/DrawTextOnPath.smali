.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawTextOnPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath$Companion;


# instance fields
.field blacklist mHOffset:F

.field blacklist mPathId:I

.field public blacklist mTextId:I

.field blacklist mVOffset:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IIFF)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextOnPath(IIFF)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawTextOnPath ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 6

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    return-void
.end method
