.class public Landroid/text/style/SuggestionSpan;
.super Landroid/text/style/CharacterStyle;
.source "SuggestionSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final whitelist ACTION_SUGGESTION_PICKED:Ljava/lang/String; = "android.text.style.SUGGESTION_PICKED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_AUTO_CORRECTION:I = 0x4

.field public static final whitelist FLAG_EASY_CORRECT:I = 0x1

.field public static final whitelist FLAG_GRAMMAR_ERROR:I = 0x8

.field public static final whitelist FLAG_MISSPELLED:I = 0x2

.field public static final blacklist SEM_FLAG_GRAMMAR_SUGGESTION:I = 0x1000

.field public static final blacklist SEM_FLAG_TYPO_SUGGESTION:I = 0x2000

.field public static final whitelist SUGGESTIONS_MAX_SIZE:I = 0x5

.field public static final whitelist SUGGESTION_SPAN_PICKED_AFTER:Ljava/lang/String; = "after"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUGGESTION_SPAN_PICKED_BEFORE:Ljava/lang/String; = "before"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUGGESTION_SPAN_PICKED_HASHCODE:Ljava/lang/String; = "hashcode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SuggestionSpan"


# instance fields
.field private greylist-max-o mAutoCorrectionUnderlineColor:I

.field private greylist-max-o mAutoCorrectionUnderlineThickness:F

.field private greylist-max-r mEasyCorrectUnderlineColor:I

.field private greylist-max-r mEasyCorrectUnderlineThickness:F

.field private greylist-max-o mFlags:I

.field private blacklist mGrammarErrorUnderlineColor:I

.field private blacklist mGrammarErrorUnderlineThickness:F

.field private blacklist mGrammarSuggestionUnderlineColor:I

.field private blacklist mGrammarSuggestionUnderlineThickness:F

.field private final greylist-max-o mHashCode:I

.field private final greylist-max-o mLanguageTag:Ljava/lang/String;

.field private final greylist-max-o mLocaleStringForCompatibility:Ljava/lang/String;

.field private greylist-max-o mMisspelledUnderlineColor:I

.field private greylist-max-o mMisspelledUnderlineThickness:F

.field private final greylist-max-o mSuggestions:[Ljava/lang/String;

.field private blacklist mTypoSuggestionUnderlineColor:I

.field private blacklist mTypoSuggestionUnderlineThickness:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/style/SuggestionSpan$1;

    invoke-direct {v0}, Landroid/text/style/SuggestionSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    const/4 v0, 0x5

    array-length v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    iput p4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    :cond_1
    const-string v1, "SuggestionSpan"

    const-string v2, "No locale or context specified in SuggestionSpan constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    const-string v2, ""

    if-nez v1, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/text/style/SuggestionSpan;->hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-direct {p0, p1}, Landroid/text/style/SuggestionSpan;->initStyle(Landroid/content/Context;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineThickness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineThickness:F

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;[Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    return-void
.end method

.method private static blacklist hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, p0, p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o initStyle(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    if-nez p1, :cond_0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return-void

    :cond_0
    const v2, 0x112018a

    sget-object v3, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const v2, 0x1120189

    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const v2, 0x1120188

    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const v2, 0x1120187

    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineColor:I

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineColor:I

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineThickness:F

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineThickness:F

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    const-string v0, "#0DB089"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineColor:I

    :cond_1
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2

    const-string v0, "#FF3D00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineColor:I

    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/text/style/SuggestionSpan;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/text/style/SuggestionSpan;

    invoke-virtual {v0}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v0

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public whitelist getFlags()I
    .locals 1

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    return v0
.end method

.method public whitelist getLocale()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLocaleObject()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public greylist getNotificationTargetClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/SuggestionSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public whitelist getSuggestions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUnderlineColor()I
    .locals 6

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineColor:I

    return v0

    :cond_0
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineColor:I

    return v0

    :cond_1
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    iget v5, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v3, :cond_8

    if-eqz v1, :cond_6

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    return v2

    :cond_6
    if-eqz v0, :cond_7

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v2

    :cond_7
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    return v2

    :cond_8
    if-eqz v4, :cond_9

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return v2

    :cond_9
    if-eqz v0, :cond_a

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v2

    :cond_a
    if-eqz v1, :cond_b

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    return v2

    :cond_b
    return v2
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    return v0
.end method

.method public greylist-max-r notifySelection(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SuggestionSpan"

    const-string/jumbo v1, "notifySelection() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist setFlags(I)V
    .locals 0

    iput p1, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    return-void
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .locals 6

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineColor:I

    iget v1, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineThickness:F

    invoke-virtual {p1, v0, v1}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    return-void

    :cond_0
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineColor:I

    iget v1, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineThickness:F

    invoke-virtual {p1, v0, v1}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    return-void

    :cond_1
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    iget v5, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_5

    move v1, v2

    :cond_5
    if-eqz v3, :cond_8

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    iget v5, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v2, v5}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3

    :cond_6
    iget v2, p1, Landroid/text/TextPaint;->underlineColor:I

    if-nez v2, :cond_b

    if-eqz v1, :cond_7

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    iget v5, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v2, v5}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3

    :cond_7
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v5, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v2, v5}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3

    :cond_8
    if-eqz v4, :cond_9

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    iget v5, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v2, v5}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v5, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v2, v5}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3

    :cond_a
    if-eqz v1, :cond_b

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    iget v5, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v2, v5}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    :cond_b
    :goto_3
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuggestionSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
