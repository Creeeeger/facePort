.class public Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
.super Ljava/lang/Object;
.source "ColorExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Operation;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression$Companion;

.field public static final blacklist HSV_MODE:I = 0x4


# instance fields
.field public blacklist mAlpha:I

.field public blacklist mColor1:I

.field public blacklist mColor2:I

.field public blacklist mHue:F

.field public blacklist mId:I

.field blacklist mMode:I

.field public blacklist mOutColor1:I

.field public blacklist mOutColor2:I

.field public blacklist mOutHue:F

.field public blacklist mOutSat:F

.field public blacklist mOutTween:F

.field public blacklist mOutValue:F

.field public blacklist mSat:F

.field public blacklist mTween:F

.field public blacklist mValue:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    return-void
.end method

.method public constructor blacklist <init>(IIFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    return-void
.end method

.method public constructor blacklist <init>(IIIIF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    and-int/lit16 v0, p2, 0xff

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    shr-int/lit8 v0, p2, 0x10

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    :cond_0
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    invoke-static {v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->hsvToRgb(FFF)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    invoke-static {v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->interpolateColor(IIF)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    :goto_0
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_5
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_6
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    const-string v2, ")"

    const-string v3, "ColorExpression["

    const-string v4, ", "

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = hsv ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const-string v5, "]"

    const-string v6, "["

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->colorInt(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v7, 0x2

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->colorInt(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] = tween("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    :cond_5
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 9

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression$Companion;

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    move-object v3, p1

    move v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    return-void
.end method
