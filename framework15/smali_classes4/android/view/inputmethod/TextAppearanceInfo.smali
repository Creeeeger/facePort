.class public final Landroid/view/inputmethod/TextAppearanceInfo;
.super Ljava/lang/Object;
.source "TextAppearanceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/TextAppearanceInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/TextAppearanceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAllCaps:Z

.field private final blacklist mElegantTextHeight:Z

.field private final blacklist mFallbackLineSpacing:Z

.field private final blacklist mFontFeatureSettings:Ljava/lang/String;

.field private final blacklist mFontVariationSettings:Ljava/lang/String;

.field private final blacklist mHighlightTextColor:I

.field private final blacklist mHintTextColor:I

.field private final blacklist mLetterSpacing:F

.field private final blacklist mLineBreakStyle:I

.field private final blacklist mLineBreakWordStyle:I

.field private final blacklist mLinkTextColor:I

.field private final blacklist mShadowColor:I

.field private final blacklist mShadowDx:F

.field private final blacklist mShadowDy:F

.field private final blacklist mShadowRadius:F

.field private final blacklist mSystemFontFamilyName:Ljava/lang/String;

.field private final blacklist mTextColor:I

.field private final blacklist mTextFontWeight:I

.field private final blacklist mTextLocales:Landroid/os/LocaleList;

.field private final blacklist mTextScaleX:F

.field private final blacklist mTextSize:F

.field private final blacklist mTextStyle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/TextAppearanceInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/TextAppearanceInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/TextAppearanceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextSize:F

    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextLocales:Landroid/os/LocaleList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mAllCaps:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mSystemFontFamilyName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextFontWeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDx:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDy:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowRadius:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mElegantTextHeight:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFallbackLineSpacing:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLetterSpacing:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakWordStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextScaleX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mHighlightTextColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mHintTextColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLinkTextColor:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmTextSize(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextSize:F

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmTextLocales(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextLocales:Landroid/os/LocaleList;

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmSystemFontFamilyName(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mSystemFontFamilyName:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmTextFontWeight(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextFontWeight:I

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmTextStyle(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextStyle:I

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmAllCaps(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mAllCaps:Z

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmShadowDx(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDx:F

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmShadowDy(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDy:F

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmShadowRadius(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowRadius:F

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmShadowColor(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowColor:I

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmElegantTextHeight(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mElegantTextHeight:Z

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFallbackLineSpacing:Z

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmLetterSpacing(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLetterSpacing:F

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmFontFeatureSettings(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontFeatureSettings:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmFontVariationSettings(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontVariationSettings:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmLineBreakStyle(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakStyle:I

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmLineBreakWordStyle(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakWordStyle:I

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmTextScaleX(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextScaleX:F

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmHighlightTextColor(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mHighlightTextColor:I

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmTextColor(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextColor:I

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmHintTextColor(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mHintTextColor:I

    invoke-static {p1}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->-$$Nest$fgetmLinkTextColor(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLinkTextColor:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/TextAppearanceInfo$Builder;Landroid/view/inputmethod/TextAppearanceInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/TextAppearanceInfo;-><init>(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)V

    return-void
.end method

.method public static blacklist createFromTextView(Landroid/widget/TextView;)Landroid/view/inputmethod/TextAppearanceInfo;
    .locals 10

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    if-lez v0, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/text/Spanned;

    add-int/lit8 v4, v0, -0x1

    const-class v5, Landroid/text/style/CharacterStyle;

    invoke-interface {v3, v4, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/CharacterStyle;

    if-eqz v5, :cond_1

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    invoke-interface {v3, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    if-gt v9, v4, :cond_0

    invoke-interface {v3, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    if-ge v4, v9, :cond_0

    invoke-virtual {v8, v2}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getWeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v6

    :cond_2
    new-instance v7, Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    invoke-direct {v7}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setTextSize(F)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setTextLocales(Landroid/os/LocaleList;)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setSystemFontFamilyName(Ljava/lang/String;)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setTextFontWeight(I)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setTextStyle(I)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setShadowDx(F)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setShadowDy(F)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setShadowRadius(F)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setShadowColor(I)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setElegantTextHeight(Z)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setLetterSpacing(F)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setFontFeatureSettings(Ljava/lang/String;)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setTextScaleX(F)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v9

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v9

    :goto_1
    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setTextColor(I)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    iget v9, v2, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setLinkTextColor(I)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/TextView;->isAllCaps()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setAllCaps(Z)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/TextView;->isFallbackLineSpacing()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setFallbackLineSpacing(Z)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineBreakStyle()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setLineBreakStyle(I)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineBreakWordStyle()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setLineBreakWordStyle(I)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getHighlightColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setHighlightTextColor(I)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentHintTextColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->setHintTextColor(I)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    invoke-virtual {v7}, Landroid/view/inputmethod/TextAppearanceInfo$Builder;->build()Landroid/view/inputmethod/TextAppearanceInfo;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/inputmethod/TextAppearanceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/inputmethod/TextAppearanceInfo;

    iget v3, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mTextSize:F

    iget v4, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextSize:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextFontWeight:I

    iget v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mTextFontWeight:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextStyle:I

    iget v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mTextStyle:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mAllCaps:Z

    iget-boolean v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mAllCaps:Z

    if-ne v3, v4, :cond_2

    iget v3, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDx:F

    iget v4, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDx:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDy:F

    iget v4, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDy:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowRadius:F

    iget v4, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowRadius:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowColor:I

    iget v4, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowColor:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mElegantTextHeight:Z

    iget-boolean v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mElegantTextHeight:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFallbackLineSpacing:Z

    iget-boolean v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mFallbackLineSpacing:Z

    if-ne v3, v4, :cond_2

    iget v3, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mLetterSpacing:F

    iget v4, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLetterSpacing:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakStyle:I

    iget v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakStyle:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakWordStyle:I

    iget v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakWordStyle:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mHighlightTextColor:I

    iget v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mHighlightTextColor:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextColor:I

    iget v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mTextColor:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLinkTextColor:I

    iget v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mLinkTextColor:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mHintTextColor:I

    iget v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mHintTextColor:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextLocales:Landroid/os/LocaleList;

    iget-object v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mTextLocales:Landroid/os/LocaleList;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mSystemFontFamilyName:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mSystemFontFamilyName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontFeatureSettings:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mFontFeatureSettings:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontVariationSettings:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mFontVariationSettings:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v1, Landroid/view/inputmethod/TextAppearanceInfo;->mTextScaleX:F

    iget v4, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextScaleX:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontVariationSettings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHighlightTextColor()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mHighlightTextColor:I

    return v0
.end method

.method public whitelist getHintTextColor()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mHintTextColor:I

    return v0
.end method

.method public whitelist getLetterSpacing()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLetterSpacing:F

    return v0
.end method

.method public whitelist getLineBreakStyle()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakStyle:I

    return v0
.end method

.method public whitelist getLineBreakWordStyle()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakWordStyle:I

    return v0
.end method

.method public whitelist getLinkTextColor()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLinkTextColor:I

    return v0
.end method

.method public whitelist getShadowColor()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowColor:I

    return v0
.end method

.method public whitelist getShadowDx()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDx:F

    return v0
.end method

.method public whitelist getShadowDy()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDy:F

    return v0
.end method

.method public whitelist getShadowRadius()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowRadius:F

    return v0
.end method

.method public whitelist getSystemFontFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mSystemFontFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTextColor()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextColor:I

    return v0
.end method

.method public whitelist getTextFontWeight()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextFontWeight:I

    return v0
.end method

.method public whitelist getTextLocales()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getTextScaleX()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextScaleX:F

    return v0
.end method

.method public whitelist getTextSize()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextSize:F

    return v0
.end method

.method public whitelist getTextStyle()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextStyle:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextLocales:Landroid/os/LocaleList;

    iget-object v4, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mSystemFontFamilyName:Ljava/lang/String;

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextFontWeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mAllCaps:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDx:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDy:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mElegantTextHeight:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mFallbackLineSpacing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mLetterSpacing:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iget-object v15, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontFeatureSettings:Ljava/lang/String;

    iget-object v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontVariationSettings:Ljava/lang/String;

    move-object/from16 v16, v1

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakWordStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextScaleX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mHighlightTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mHintTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v1, v0, Landroid/view/inputmethod/TextAppearanceInfo;->mLinkTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    filled-new-array/range {v2 .. v23}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isAllCaps()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mAllCaps:Z

    return v0
.end method

.method public whitelist isElegantTextHeight()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mElegantTextHeight:Z

    return v0
.end method

.method public whitelist isFallbackLineSpacing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFallbackLineSpacing:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextAppearanceInfo{mTextSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTextLocales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSystemFontFamilyName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mSystemFontFamilyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mTextFontWeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextFontWeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mTextStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextStyle:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAllCaps="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mAllCaps:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mShadowDx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDx:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mShadowDy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDy:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mShadowRadius="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowRadius:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mShadowColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mElegantTextHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mElegantTextHeight:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFallbackLineSpacing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFallbackLineSpacing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLetterSpacing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLetterSpacing:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFontFeatureSettings=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFontVariationSettings=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLineBreakStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLineBreakWordStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakWordStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTextScaleX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextScaleX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHighlightTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mHighlightTextColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHintTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mHintTextColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLinkTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLinkTextColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mAllCaps:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mSystemFontFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextFontWeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDx:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowDy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mShadowColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mElegantTextHeight:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFallbackLineSpacing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLetterSpacing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLineBreakWordStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextScaleX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mHighlightTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mHintTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/TextAppearanceInfo;->mLinkTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
