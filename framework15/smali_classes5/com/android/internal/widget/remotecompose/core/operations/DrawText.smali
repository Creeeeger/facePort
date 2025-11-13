.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawText;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;


# instance fields
.field blacklist mContextEnd:I

.field blacklist mContextStart:I

.field blacklist mEnd:I

.field blacklist mRtl:Z

.field blacklist mStart:I

.field blacklist mTextID:I

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IIIIIFFZ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mStart:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mEnd:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextStart:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextEnd:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mRtl:Z

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mTextID:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mStart:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mEnd:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextStart:I

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextEnd:I

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    iput-boolean p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mRtl:Z

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 9

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mTextID:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mStart:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mEnd:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextStart:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextEnd:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    iget-boolean v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mRtl:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextRun(IIIIIFFZ)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawTextRun ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mTextID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mEnd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 10

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mTextID:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mStart:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mEnd:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextStart:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextEnd:I

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    iget-boolean v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mRtl:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V

    return-void
.end method
