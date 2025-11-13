.class public final Landroid/text/PrecomputedText$Params;
.super Ljava/lang/Object;
.source "PrecomputedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/PrecomputedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/PrecomputedText$Params$CheckResultUsableResult;,
        Landroid/text/PrecomputedText$Params$Builder;
    }
.end annotation


# static fields
.field public static final blacklist NEED_RECOMPUTE:I = 0x1

.field public static final blacklist UNUSABLE:I = 0x0

.field public static final blacklist USABLE:I = 0x2


# instance fields
.field private final greylist-max-o mBreakStrategy:I

.field private final greylist-max-o mHyphenationFrequency:I

.field private final blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private final greylist-max-o mPaint:Landroid/text/TextPaint;

.field private final greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBreakStrategy(Landroid/text/PrecomputedText$Params;)I
    .locals 0

    iget p0, p0, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHyphenationFrequency(Landroid/text/PrecomputedText$Params;)I
    .locals 0

    iget p0, p0, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLineBreakConfig(Landroid/text/PrecomputedText$Params;)Landroid/graphics/text/LineBreakConfig;
    .locals 0

    iget-object p0, p0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPaint(Landroid/text/PrecomputedText$Params;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextDir(Landroid/text/PrecomputedText$Params;)Landroid/text/TextDirectionHeuristic;
    .locals 0

    iget-object p0, p0, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/text/TextDirectionHeuristic;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    iput-object p3, p0, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iput p4, p0, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    iput p5, p0, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    iput-object p2, p0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-void
.end method


# virtual methods
.method public blacklist checkResultUsable(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILandroid/graphics/text/LineBreakConfig;)I
    .locals 1

    iget v0, p0, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    if-ne v0, p4, :cond_1

    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-virtual {v0, p5}, Landroid/graphics/text/LineBreakConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->equalsForTextMeasurement(Landroid/graphics/Paint;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-ne v0, p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/text/PrecomputedText$Params;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/text/PrecomputedText$Params;

    iget-object v4, v2, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    iget-object v5, v2, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v6, v2, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    iget v7, v2, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    iget-object v8, v2, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/text/PrecomputedText$Params;->checkResultUsable(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILandroid/graphics/text/LineBreakConfig;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getBreakStrategy()I
    .locals 1

    iget v0, p0, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    return v0
.end method

.method public whitelist getHyphenationFrequency()I
    .locals 1

    iget v0, p0, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    return v0
.end method

.method public whitelist getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;
    .locals 1

    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object v0
.end method

.method public whitelist getTextDirection()Landroid/text/TextDirectionHeuristic;
    .locals 1

    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public whitelist getTextPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v1, v0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v1, v0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v1, v0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v1, v0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v1, v0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v1, v0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v8

    iget-object v1, v0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    iget-object v1, v0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object v12, v0, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v1, v0, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v1, v0, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-static {v1}, Landroid/graphics/text/LineBreakConfig;->getResolvedLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v1, v0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-static {v1}, Landroid/graphics/text/LineBreakConfig;->getResolvedLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{textSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textScaleX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textSkewX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", letterSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typeface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", variationSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elegantTextHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", breakStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hyphenationFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lineBreakStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-static {v1}, Landroid/graphics/text/LineBreakConfig;->getResolvedLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lineBreakWordStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-static {v1}, Landroid/graphics/text/LineBreakConfig;->getResolvedLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
