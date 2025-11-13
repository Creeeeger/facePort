.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawTextRun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun$Companion;


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

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IIIIIFFZ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mStart:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mEnd:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mContextStart:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mContextEnd:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mX:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mY:F

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mRtl:Z

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mTextID:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mStart:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mEnd:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mContextStart:I

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mContextEnd:I

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mX:F

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mY:F

    iput-boolean p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mRtl:Z

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 9

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mTextID:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mStart:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mEnd:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mContextStart:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mContextEnd:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mX:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mY:F

    iget-boolean v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mRtl:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextRun(IIIIIFFZ)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 10

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mTextID:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mStart:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mEnd:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mContextStart:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mContextEnd:I

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mX:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mY:F

    iget-boolean v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun;->mRtl:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextRun$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V

    return-void
.end method
