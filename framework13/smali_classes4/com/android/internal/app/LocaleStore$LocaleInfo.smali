.class public Lcom/android/internal/app/LocaleStore$LocaleInfo;
.super Ljava/lang/Object;
.source "LocaleStore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocaleStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation


# static fields
.field private static final blacklist SUGGESTION_TYPE_CFG:I = 0x2

.field private static final blacklist SUGGESTION_TYPE_CURRENT:I = 0x4

.field private static final blacklist SUGGESTION_TYPE_NONE:I = 0x0

.field private static final blacklist SUGGESTION_TYPE_SEC:I = 0x10

.field private static final blacklist SUGGESTION_TYPE_SIM:I = 0x1

.field private static final blacklist SUGGESTION_TYPE_SYSTEM_LANGUAGE:I = 0x8

.field private static final blacklist SUGGESTION_TYPE_XML:I = 0x20


# instance fields
.field private blacklist mFullCountryNameNative:Ljava/lang/String;

.field private blacklist mFullNameNative:Ljava/lang/String;

.field private final blacklist mId:Ljava/lang/String;

.field private blacklist mIsChecked:Z

.field private blacklist mIsPriorityLocale:Z

.field private blacklist mIsPseudo:Z

.field private blacklist mIsSelected:Z

.field private blacklist mIsTranslated:Z

.field private blacklist mLangScriptKey:Ljava/lang/String;

.field private final blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mParent:Ljava/util/Locale;

.field private blacklist mSuggestionFlags:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLangScriptKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSuggestionOfType(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggestionOfType(I)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "localeId"    # Ljava/lang/String;

    .line 150
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    .line 151
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    .line 135
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    .line 137
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    .line 138
    iput v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 139
    iput-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsSelected:Z

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/android/internal/app/LocaleStore;->-$$Nest$sfgetsPriorityLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPriorityLocale:Z

    .line 147
    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method private blacklist getFullNameFromSpecialLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10701ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "spLocaleCodes":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10701ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "spLocaleNames":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "id":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 294
    aget-object v4, v0, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    aget-object v4, v1, v3

    return-object v4

    .line 293
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    .end local v3    # "i":I
    :cond_1
    const-string v3, ""

    return-object v3
.end method

.method private blacklist getLangScriptKey()Ljava/lang/String;
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    .line 313
    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    const/16 v1, 0x75

    .line 314
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 319
    .local v0, "baseLocale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/internal/app/LocaleHelper;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 324
    .local v1, "parentWithScript":Ljava/util/Locale;
    nop

    .line 325
    if-nez v1, :cond_0

    .line 326
    iget-object v2, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    .line 329
    .end local v0    # "baseLocale":Ljava/util/Locale;
    .end local v1    # "parentWithScript":Ljava/util/Locale;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist getParent(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 154
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    .line 158
    invoke-virtual {v0, p0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 159
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    const/16 v2, 0x75

    .line 160
    invoke-virtual {v0, v2, v1}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method private blacklist isSuggestionOfType(I)Z
    .locals 2
    .param p1, "suggestionMask"    # I

    .line 226
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 227
    return v1

    .line 229
    :cond_0
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public blacklist getChecked()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    return v0
.end method

.method blacklist getContentDescription(Z)Ljava/lang/String;
    .locals 1
    .param p1, "countryMode"    # Z

    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getFullCountryNameInUiLanguage()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getFullCountryNameNative()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v0}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getFullNameInUiLanguage()Ljava/lang/String;
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFullNameInUiLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 282
    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameFromSpecialLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "specialName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public greylist getFullNameNative()Ljava/lang/String;
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "sr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const-string v1, "Srpski"

    iput-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    goto :goto_0

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    const/4 v2, 0x1

    .line 242
    invoke-static {v1, v1, v2}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    .line 246
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFullNameNative(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 252
    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameFromSpecialLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "specialName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public greylist getId()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getLabel(Z)Ljava/lang/String;
    .locals 1
    .param p1, "countryMode"    # Z

    .line 333
    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameNative()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLocale()Ljava/util/Locale;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public greylist getParent()Ljava/util/Locale;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    return-object v0
.end method

.method public blacklist getSelected()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsSelected:Z

    return v0
.end method

.method public blacklist isAppCurrentLocale()Z
    .locals 1

    .line 357
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isPriorityLocale()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPriorityLocale:Z

    return v0
.end method

.method blacklist isSecSuggested()Z
    .locals 1

    .line 211
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isSecXmlSuggested()Z
    .locals 1

    .line 216
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isSuggested()Z
    .locals 4

    .line 193
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 194
    return v1

    .line 197
    :cond_0
    invoke-static {}, Lcom/android/internal/app/LocaleStore;->-$$Nest$sfgetsCountryMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 198
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 200
    :cond_2
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    if-eqz v0, :cond_3

    const/16 v3, 0x10

    if-eq v0, v3, :cond_3

    const/16 v3, 0x12

    if-eq v0, v3, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public blacklist isSystemLocale()Z
    .locals 1

    .line 361
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isTranslated()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    return v0
.end method

.method public blacklist setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 353
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    .line 354
    return-void
.end method

.method public blacklist setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 306
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsSelected:Z

    .line 307
    return-void
.end method

.method public blacklist setTranslated(Z)V
    .locals 0
    .param p1, "isTranslated"    # Z

    .line 189
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    .line 190
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    return-object v0
.end method
