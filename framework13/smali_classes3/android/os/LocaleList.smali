.class public final Landroid/os/LocaleList;
.super Ljava/lang/Object;
.source "LocaleList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/LocaleList;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EN_LATN:Ljava/util/Locale;

.field private static final greylist-max-o LOCALE_AR_XB:Ljava/util/Locale;

.field private static final greylist-max-o LOCALE_EN_XA:Ljava/util/Locale;

.field private static final greylist-max-o NUM_PSEUDO_LOCALES:I = 0x2

.field private static final greylist-max-o STRING_AR_XB:Ljava/lang/String; = "ar-XB"

.field private static final greylist-max-o STRING_EN_XA:Ljava/lang/String; = "en-XA"

.field private static greylist-max-o sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

.field private static greylist-max-o sDefaultLocaleList:Landroid/os/LocaleList;

.field private static final greylist-max-o sEmptyList:[Ljava/util/Locale;

.field private static final greylist-max-o sEmptyLocaleList:Landroid/os/LocaleList;

.field private static greylist-max-o sLastDefaultLocale:Ljava/util/Locale;

.field private static greylist-max-o sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

.field private static final greylist-max-o sLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mList:[Ljava/util/Locale;

.field private final greylist-max-o mStringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 47
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/Locale;

    sput-object v1, Landroid/os/LocaleList;->sEmptyList:[Ljava/util/Locale;

    .line 48
    new-instance v1, Landroid/os/LocaleList;

    new-array v0, v0, [Ljava/util/Locale;

    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    sput-object v1, Landroid/os/LocaleList;->sEmptyLocaleList:Landroid/os/LocaleList;

    .line 240
    new-instance v0, Landroid/os/LocaleList$1;

    invoke-direct {v0}, Landroid/os/LocaleList$1;-><init>()V

    sput-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 293
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "XA"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/os/LocaleList;->LOCALE_EN_XA:Ljava/util/Locale;

    .line 294
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    const-string v2, "XB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/os/LocaleList;->LOCALE_AR_XB:Ljava/util/Locale;

    .line 364
    const-string v0, "en-Latn"

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/os/LocaleList;->EN_LATN:Ljava/util/Locale;

    .line 480
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    .line 483
    const/4 v0, 0x0

    sput-object v0, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    .line 485
    sput-object v0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    .line 487
    sput-object v0, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    .line 489
    sput-object v0, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Locale;Landroid/os/LocaleList;)V
    .locals 7
    .param p1, "topLocale"    # Ljava/util/Locale;
    .param p2, "otherLocales"    # Landroid/os/LocaleList;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    if-eqz p1, :cond_a

    .line 202
    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v1

    .line 203
    .local v1, "inputLength":I
    :goto_0
    const/4 v2, -0x1

    .line 204
    .local v2, "topLocaleIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 205
    iget-object v4, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    move v2, v3

    .line 207
    goto :goto_2

    .line 204
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 211
    .end local v3    # "i":I
    :cond_2
    :goto_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move v4, v0

    :goto_3
    add-int/2addr v4, v1

    .line 212
    .local v4, "outputLength":I
    new-array v5, v4, [Ljava/util/Locale;

    .line 213
    .local v5, "localeList":[Ljava/util/Locale;
    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v0

    .line 214
    if-ne v2, v3, :cond_5

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_4

    .line 217
    add-int/lit8 v3, v0, 0x1

    iget-object v6, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v3

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    :cond_4
    goto :goto_7

    .line 220
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v2, :cond_6

    .line 221
    add-int/lit8 v3, v0, 0x1

    iget-object v6, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v3

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 223
    .end local v0    # "i":I
    :cond_6
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    :goto_6
    if-ge v0, v1, :cond_7

    .line 224
    iget-object v3, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    aput-object v3, v5, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 228
    .end local v0    # "i":I
    :cond_7
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8
    if-ge v3, v4, :cond_9

    .line 230
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_8

    .line 232
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 236
    .end local v3    # "i":I
    :cond_9
    iput-object v5, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    .line 238
    return-void

    .line 199
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "inputLength":I
    .end local v2    # "topLocaleIndex":I
    .end local v4    # "outputLength":I
    .end local v5    # "localeList":[Ljava/util/Locale;
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "topLocale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor whitelist <init>([Ljava/util/Locale;)V
    .locals 8
    .param p1, "list"    # [Ljava/util/Locale;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    array-length v0, p1

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Landroid/os/LocaleList;->sEmptyList:[Ljava/util/Locale;

    iput-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    goto :goto_2

    .line 167
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 169
    .local v1, "seenLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 171
    aget-object v4, p1, v3

    .line 172
    .local v4, "l":Ljava/util/Locale;
    if-eqz v4, :cond_3

    .line 174
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {v4}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    .line 178
    .local v5, "localeClone":Ljava/util/Locale;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_2

    .line 181
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v4    # "l":Ljava/util/Locale;
    .end local v5    # "localeClone":Ljava/util/Locale;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .restart local v4    # "l":Ljava/util/Locale;
    :cond_3
    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "list["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 186
    .end local v3    # "i":I
    .end local v4    # "l":Ljava/util/Locale;
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Locale;

    iput-object v3, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    .line 189
    .end local v0    # "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    .end local v1    # "seenLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-void
.end method

.method private greylist-max-o computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .locals 2
    .param p2, "assumeEnglishIsSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 406
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    .line 407
    .local v0, "bestIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    :goto_0
    return-object v1
.end method

.method private greylist-max-o computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .locals 6
    .param p2, "assumeEnglishIsSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 368
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 369
    return v2

    .line 371
    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    .line 372
    const/4 v0, -0x1

    return v0

    .line 375
    :cond_1
    const v0, 0x7fffffff

    .line 377
    .local v0, "bestIndex":I
    if-eqz p2, :cond_3

    .line 378
    sget-object v1, Landroid/os/LocaleList;->EN_LATN:Ljava/util/Locale;

    invoke-direct {p0, v1}, Landroid/os/LocaleList;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v1

    .line 379
    .local v1, "idx":I
    if-nez v1, :cond_2

    .line 380
    return v2

    .line 381
    :cond_2
    if-ge v1, v0, :cond_3

    .line 382
    move v0, v1

    .line 385
    .end local v1    # "idx":I
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 386
    .local v3, "languageTag":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .line 389
    .local v4, "supportedLocale":Ljava/util/Locale;
    invoke-direct {p0, v4}, Landroid/os/LocaleList;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v5

    .line 390
    .local v5, "idx":I
    if-nez v5, :cond_4

    .line 391
    return v2

    .line 392
    :cond_4
    if-ge v5, v0, :cond_5

    .line 393
    move v0, v5

    .line 395
    .end local v3    # "languageTag":Ljava/lang/String;
    .end local v4    # "supportedLocale":Ljava/util/Locale;
    .end local v5    # "idx":I
    :cond_5
    goto :goto_0

    .line 396
    :cond_6
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_7

    .line 398
    return v2

    .line 400
    :cond_7
    return v0
.end method

.method private greylist-max-o findFirstMatchIndex(Ljava/util/Locale;)I
    .locals 3
    .param p1, "supportedLocale"    # Ljava/util/Locale;

    .line 356
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 357
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    return v0

    .line 356
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "idx":I
    :cond_1
    const v0, 0x7fffffff

    return v0
.end method

.method public static whitelist forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .locals 4
    .param p0, "list"    # Ljava/lang/String;

    .line 269
    if-eqz p0, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 272
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "tags":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Ljava/util/Locale;

    .line 274
    .local v1, "localeArray":[Ljava/util/Locale;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 275
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroid/os/LocaleList;

    invoke-direct {v2, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    return-object v2

    .line 270
    .end local v0    # "tags":[Ljava/lang/String;
    .end local v1    # "localeArray":[Ljava/util/Locale;
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getAdjustedDefault()Landroid/os/LocaleList;
    .locals 2

    .line 534
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 535
    sget-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_0
    sget-object v1, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    monitor-exit v0

    return-object v1

    .line 537
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist getDefault()Landroid/os/LocaleList;
    .locals 4

    .line 504
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 505
    .local v0, "defaultLocale":Ljava/util/Locale;
    sget-object v1, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_0
    sget-object v2, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 507
    sput-object v0, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    .line 511
    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 512
    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    monitor-exit v1

    return-object v2

    .line 517
    :cond_0
    new-instance v2, Landroid/os/LocaleList;

    sget-object v3, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    invoke-direct {v2, v0, v3}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    sput-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    .line 518
    sput-object v2, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    .line 524
    :cond_1
    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    monitor-exit v1

    return-object v2

    .line 525
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static whitelist getEmptyLocaleList()Landroid/os/LocaleList;
    .locals 1

    .line 258
    sget-object v0, Landroid/os/LocaleList;->sEmptyLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method private static greylist-max-o getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 282
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "script":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    return-object v0

    .line 287
    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist isPseudoLocale(Landroid/icu/util/ULocale;)Z
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 313
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isPseudoLocale(Ljava/lang/String;)Z
    .locals 1
    .param p0, "locale"    # Ljava/lang/String;

    .line 298
    const-string v0, "en-XA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ar-XB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static greylist-max-o isPseudoLocale(Ljava/util/Locale;)Z
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 306
    sget-object v0, Landroid/os/LocaleList;->LOCALE_EN_XA:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/LocaleList;->LOCALE_AR_XB:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static greylist-max-o isPseudoLocalesOnly([Ljava/lang/String;)Z
    .locals 6
    .param p0, "supportedLocales"    # [Ljava/lang/String;

    .line 461
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 462
    return v0

    .line 465
    :cond_0
    array-length v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    .line 470
    return v3

    .line 472
    :cond_1
    array-length v1, p0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, p0, v2

    .line 473
    .local v4, "locale":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 474
    return v3

    .line 472
    .end local v4    # "locale":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    :cond_3
    return v0
.end method

.method public static whitelist matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 5
    .param p0, "supported"    # Ljava/util/Locale;
    .param p1, "desired"    # Ljava/util/Locale;

    .line 330
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 331
    return v1

    .line 333
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 334
    return v2

    .line 336
    :cond_1
    invoke-static {p0}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 341
    :cond_2
    invoke-static {p0}, Landroid/os/LocaleList;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "supportedScr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 346
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "supportedRegion":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1

    .line 349
    .end local v3    # "supportedRegion":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Landroid/os/LocaleList;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "desiredScr":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 339
    .end local v0    # "supportedScr":Ljava/lang/String;
    .end local v1    # "desiredScr":Ljava/lang/String;
    :cond_6
    :goto_1
    return v2
.end method

.method public static whitelist setDefault(Landroid/os/LocaleList;)V
    .locals 1
    .param p0, "locales"    # Landroid/os/LocaleList;

    .line 548
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 549
    return-void
.end method

.method public static greylist-max-r setDefault(Landroid/os/LocaleList;I)V
    .locals 4
    .param p0, "locales"    # Landroid/os/LocaleList;
    .param p1, "localeIndex"    # I

    .line 561
    if-eqz p0, :cond_2

    .line 564
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 567
    sget-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    .line 569
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 570
    sput-object p0, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    .line 571
    sput-object p0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    .line 572
    if-nez p1, :cond_0

    .line 573
    sput-object p0, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    goto :goto_0

    .line 575
    :cond_0
    new-instance v1, Landroid/os/LocaleList;

    sget-object v2, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v3, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    invoke-direct {v1, v2, v3}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    sput-object v1, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    .line 578
    :goto_0
    monitor-exit v0

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 565
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locales is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "locales is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 98
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 99
    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Landroid/os/LocaleList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 101
    return v2

    .line 102
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/os/LocaleList;

    iget-object v1, v1, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    .line 103
    .local v1, "otherList":[Ljava/util/Locale;
    iget-object v3, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v3, v3

    array-length v4, v1

    if-eq v3, v4, :cond_2

    .line 104
    return v2

    .line 105
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 106
    aget-object v4, v4, v3

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 107
    return v2

    .line 105
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public whitelist get(I)Ljava/util/Locale;
    .locals 2
    .param p1, "index"    # I

    .line 57
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 419
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/LocaleList;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getFirstMatchIndex([Ljava/lang/String;)I
    .locals 2
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 427
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 445
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getFirstMatchIndexWithEnglishSupported([Ljava/lang/String;)I
    .locals 1
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 452
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 437
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/LocaleList;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 114
    const/4 v0, 0x1

    .line 115
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 116
    mul-int/lit8 v3, v0, 0x1f

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int v0, v3, v2

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public whitelist indexOf(Ljava/util/Locale;)I
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 89
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    return v0

    .line 88
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist isEmpty()Z
    .locals 1

    .line 67
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist size()I
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method public whitelist toLanguageTags()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 126
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 128
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 142
    iget-object v0, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 143
    return-void
.end method
