.class Landroid/widget/TextView$TextAppearanceAttributes;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextAppearanceAttributes"
.end annotation


# instance fields
.field greylist-max-o mAllCaps:Z

.field greylist-max-o mElegant:Z

.field greylist-max-o mFallbackLineSpacing:Z

.field blacklist mFocusedSearchResultHighlightColor:I

.field greylist-max-o mFontFamily:Ljava/lang/String;

.field greylist-max-o mFontFamilyExplicit:Z

.field greylist-max-o mFontFeatureSettings:Ljava/lang/String;

.field greylist-max-o mFontTypeface:Landroid/graphics/Typeface;

.field blacklist mFontVariationSettings:Ljava/lang/String;

.field greylist-max-o mFontWeight:I

.field greylist-max-o mHasElegant:Z

.field greylist-max-o mHasFallbackLineSpacing:Z

.field greylist-max-o mHasLetterSpacing:Z

.field blacklist mHasLineBreakStyle:Z

.field blacklist mHasLineBreakWordStyle:Z

.field greylist-max-o mLetterSpacing:F

.field blacklist mLineBreakStyle:I

.field blacklist mLineBreakWordStyle:I

.field blacklist mSearchResultHighlightColor:I

.field greylist-max-o mShadowColor:I

.field greylist-max-o mShadowDx:F

.field greylist-max-o mShadowDy:F

.field greylist-max-o mShadowRadius:F

.field greylist-max-o mTextColor:Landroid/content/res/ColorStateList;

.field greylist-max-o mTextColorHighlight:I

.field greylist-max-o mTextColorHint:Landroid/content/res/ColorStateList;

.field greylist-max-o mTextColorLink:Landroid/content/res/ColorStateList;

.field blacklist mTextLocales:Landroid/os/LocaleList;

.field greylist-max-o mTextSize:I

.field blacklist mTextSizeUnit:I

.field blacklist mTextStyle:I

.field greylist-max-o mTypefaceIndex:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    iput v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mSearchResultHighlightColor:I

    iput v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFocusedSearchResultHighlightColor:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHint:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorLink:Landroid/content/res/ColorStateList;

    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSizeUnit:I

    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextLocales:Landroid/os/LocaleList;

    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontTypeface:Landroid/graphics/Typeface;

    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    iput v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextStyle:I

    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontWeight:I

    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mAllCaps:Z

    iput v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDx:F

    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDy:F

    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowRadius:F

    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasElegant:Z

    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mElegant:Z

    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasFallbackLineSpacing:Z

    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFallbackLineSpacing:Z

    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLetterSpacing:Z

    iput v2, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mLetterSpacing:F

    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontVariationSettings:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLineBreakStyle:Z

    iput-boolean v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLineBreakWordStyle:Z

    iput v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mLineBreakStyle:I

    iput v0, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mLineBreakWordStyle:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TextView$TextAppearanceAttributes-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextView$TextAppearanceAttributes;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextAppearanceAttributes {\n    mTextColorHighlight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHighlight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mSearchResultHighlightColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mSearchResultHighlightColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mFocusedSearchResultHighlightColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFocusedSearchResultHighlightColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mTextColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mTextColorHint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorHint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mTextColorLink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mTextSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mTextSizeUnit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextSizeUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mTextLocales:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mFontFamily:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mFontTypeface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mFontFamilyExplicit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFamilyExplicit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mTypefaceIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTypefaceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mTextStyle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mTextStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mFontWeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mAllCaps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mAllCaps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mShadowColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mShadowDx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mShadowDy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowDy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mShadowRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mShadowRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mHasElegant:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasElegant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mElegant:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mElegant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mHasFallbackLineSpacing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasFallbackLineSpacing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mFallbackLineSpacing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFallbackLineSpacing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mHasLetterSpacing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLetterSpacing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mLetterSpacing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mLetterSpacing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mFontFeatureSettings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mFontVariationSettings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mHasLineBreakStyle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLineBreakStyle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mHasLineBreakWordStyle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mHasLineBreakWordStyle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mLineBreakStyle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mLineBreakStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    mLineBreakWordStyle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView$TextAppearanceAttributes;->mLineBreakWordStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
