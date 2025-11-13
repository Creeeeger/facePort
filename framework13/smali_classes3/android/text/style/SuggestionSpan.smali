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

    .line 423
    new-instance v0, Landroid/text/style/SuggestionSpan$1;

    invoke-direct {v0}, Landroid/text/style/SuggestionSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "suggestions"    # [Ljava/lang/String;
    .param p4, "flags"    # I
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

    .line 201
    .local p5, "notificationTargetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 202
    array-length v0, p3

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 203
    .local v0, "N":I
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    .line 204
    iput p4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 206
    if-eqz p2, :cond_0

    .line 207
    move-object v2, p2

    .local v2, "sourceLocale":Ljava/util/Locale;
    goto :goto_0

    .line 208
    .end local v2    # "sourceLocale":Ljava/util/Locale;
    :cond_0
    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .restart local v2    # "sourceLocale":Ljava/util/Locale;
    goto :goto_0

    .line 212
    .end local v2    # "sourceLocale":Ljava/util/Locale;
    :cond_1
    const-string v2, "SuggestionSpan"

    const-string v3, "No locale or context specified in SuggestionSpan constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v2, 0x0

    .line 215
    .restart local v2    # "sourceLocale":Ljava/util/Locale;
    :goto_0
    const-string v3, ""

    if-nez v2, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    .line 216
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    .line 217
    invoke-static {v1, v3, v4}, Landroid/text/style/SuggestionSpan;->hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    .line 219
    invoke-direct {p0, p1}, Landroid/text/style/SuggestionSpan;->initStyle(Landroid/content/Context;)V

    .line 220
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .line 177
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 178
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 285
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineColor:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineThickness:F

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineColor:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineThickness:F

    .line 306
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .line 186
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 187
    return-void
.end method

.method private static blacklist hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "suggestions"    # [Ljava/lang/String;
    .param p1, "languageTag"    # Ljava/lang/String;
    .param p2, "localeStringForCompatibility"    # Ljava/lang/String;

    .line 419
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o initStyle(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 223
    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    if-nez p1, :cond_0

    .line 224
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 225
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    .line 226
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 227
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 228
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 229
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    .line 230
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 231
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 232
    return-void

    .line 235
    :cond_0
    const v2, 0x112014e

    .line 236
    .local v2, "defStyleAttr":I
    sget-object v3, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 238
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 240
    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 242
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    const v2, 0x112014d

    .line 245
    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 247
    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    .line 249
    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    .line 251
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    const v2, 0x112014c

    .line 254
    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 256
    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 258
    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 260
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    const v2, 0x112014b

    .line 263
    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 265
    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 267
    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 269
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineColor:I

    .line 273
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineColor:I

    .line 274
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineThickness:F

    .line 275
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineThickness:F

    .line 276
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 277
    const-string v0, "#0DB089"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineColor:I

    .line 279
    :cond_1
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2

    .line 280
    const-string v0, "#FF3D00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineColor:I

    .line 283
    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 406
    instance-of v0, p1, Landroid/text/style/SuggestionSpan;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 407
    move-object v0, p1

    check-cast v0, Landroid/text/style/SuggestionSpan;

    invoke-virtual {v0}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v0

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 409
    :cond_1
    return v1
.end method

.method public whitelist getFlags()I
    .locals 1

    .line 354
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    return v0
.end method

.method public whitelist getLocale()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLocaleObject()Ljava/util/Locale;
    .locals 1

    .line 338
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

    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSpanTypeId()I
    .locals 1

    .line 396
    invoke-virtual {p0}, Landroid/text/style/SuggestionSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 1

    .line 401
    const/16 v0, 0x13

    return v0
.end method

.method public whitelist getSuggestions()[Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUnderlineColor()I
    .locals 6

    .line 481
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_0

    .line 482
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineColor:I

    return v0

    .line 484
    :cond_0
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_1

    .line 485
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineColor:I

    return v0

    .line 490
    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 491
    .local v1, "misspelled":Z
    :goto_0
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    .line 492
    .local v4, "easy":Z
    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v3

    .line 493
    .local v5, "autoCorrection":Z
    :goto_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    move v0, v2

    .line 494
    .local v0, "grammarError":Z
    if-eqz v4, :cond_8

    .line 495
    if-eqz v0, :cond_6

    .line 496
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    return v2

    .line 497
    :cond_6
    if-eqz v1, :cond_7

    .line 498
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v2

    .line 500
    :cond_7
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    return v2

    .line 502
    :cond_8
    if-eqz v5, :cond_9

    .line 503
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return v2

    .line 504
    :cond_9
    if-eqz v1, :cond_a

    .line 505
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v2

    .line 506
    :cond_a
    if-eqz v0, :cond_b

    .line 507
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    return v2

    .line 509
    :cond_b
    return v3
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 414
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    return v0
.end method

.method public greylist-max-r notifySelection(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "original"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 521
    const-string v0, "SuggestionSpan"

    const-string/jumbo v1, "notifySelection() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method

.method public whitelist setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 358
    iput p1, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 359
    return-void
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .locals 6
    .param p1, "tp"    # Landroid/text/TextPaint;

    .line 439
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_0

    .line 440
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineColor:I

    iget v1, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineThickness:F

    invoke-virtual {p1, v0, v1}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 441
    return-void

    .line 443
    :cond_0
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_1

    .line 444
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineColor:I

    iget v1, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineThickness:F

    invoke-virtual {p1, v0, v1}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 445
    return-void

    .line 449
    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 450
    .local v1, "misspelled":Z
    :goto_0
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    .line 451
    .local v4, "easy":Z
    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v2

    .line 452
    .local v5, "autoCorrection":Z
    :goto_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    move v0, v2

    .line 453
    .local v0, "grammarError":Z
    if-eqz v4, :cond_8

    .line 454
    if-nez v1, :cond_6

    if-nez v0, :cond_6

    .line 455
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v2, v3}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3

    .line 456
    :cond_6
    iget v2, p1, Landroid/text/TextPaint;->underlineColor:I

    if-nez v2, :cond_b

    .line 459
    if-eqz v0, :cond_7

    .line 460
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v2, v3}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3

    .line 463
    :cond_7
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v2, v3}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3

    .line 466
    :cond_8
    if-eqz v5, :cond_9

    .line 467
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v2, v3}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3

    .line 468
    :cond_9
    if-eqz v1, :cond_a

    .line 469
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v2, v3}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3

    .line 470
    :cond_a
    if-eqz v0, :cond_b

    .line 471
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v2, v3}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 473
    :cond_b
    :goto_3
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 368
    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuggestionSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 369
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 373
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 374
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 380
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 382
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 384
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 387
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarSuggestionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 389
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mTypoSuggestionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 392
    return-void
.end method
