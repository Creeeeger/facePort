.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawPath$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawPath$Companion;


# instance fields
.field blacklist mEnd:F

.field blacklist mId:I

.field blacklist mStart:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/DrawPath$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawPath$Companion;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->mStart:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->mEnd:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->mId:I

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->mStart:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->mEnd:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawPath(IFF)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawPath ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->mStart:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->mEnd:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawPath$Companion;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->mId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method
