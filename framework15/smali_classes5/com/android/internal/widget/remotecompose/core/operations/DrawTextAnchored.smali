.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawTextAnchored.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored$Companion;
    }
.end annotation


# static fields
.field public static final blacklist ANCHOR_MONOSPACE_MEASURE:I = 0x2

.field public static final blacklist ANCHOR_TEXT_RTL:I = 0x1

.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored$Companion;


# instance fields
.field blacklist mBounds:[F

.field blacklist mFlags:I

.field blacklist mOutPanX:F

.field blacklist mOutPanY:F

.field blacklist mOutX:F

.field blacklist mOutY:F

.field blacklist mPanX:F

.field blacklist mPanY:F

.field blacklist mTextID:I

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IFFFFI)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutX:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanX:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    return-void
.end method

.method private static blacklist floatToStr(F)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getHorizontalOffset()F
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    const/4 v2, 0x0

    sub-float v4, v2, v1

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanX:F

    add-float/2addr v6, v5

    mul-float/2addr v4, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    aget v3, v5, v3

    mul-float/2addr v3, v0

    sub-float/2addr v4, v3

    return v4
.end method

.method private blacklist getVerticalOffset()F
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    sub-float v3, v1, v2

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    aget v4, v5, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    return v3
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mBounds:[F

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getTextBounds(IIIZ[F)V

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutX:F

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->getHorizontalOffset()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    goto :goto_1

    :cond_1
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->getVerticalOffset()F

    move-result v3

    add-float/2addr v2, v3

    :goto_1
    move/from16 v16, v2

    iget v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_2

    move/from16 v17, v8

    goto :goto_2

    :cond_2
    move/from16 v17, v7

    :goto_2
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v9, p1

    move v15, v1

    invoke-virtual/range {v9 .. v17}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextRun(IIIIIFFZ)V

    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_3
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawTextAnchored ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->floatToStr(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->floatToStr(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->floatToStr(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->floatToStr(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutX:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    :goto_1
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutY:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    :goto_2
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanX:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    :goto_3
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mOutPanY:F

    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 8

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mTextID:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mX:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mY:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanX:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mPanY:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->mFlags:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    return-void
.end method
