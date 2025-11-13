.class public Lcom/android/settings/core/PreferenceXmlParserUtils;
.super Ljava/lang/Object;
.source "PreferenceXmlParserUtils.java"


# static fields
.field static final PREF_SCREEN_TAG:Ljava/lang/String; = "PreferenceScreen"

.field private static final SUPPORTED_PREF_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "SecPreference"

    const-string v1, "SecPreferenceCategory"

    const-string v2, "SecPreferenceScreen"

    const-string v3, "SecSwitchPreferenceScreen"

    const-string v4, "com.samsung.android.settings.widget.SecRestrictedSwitchPreferenceScreen"

    const-string v5, "com.samsung.android.settings.widget.SecDisabledAppearanceSwitchPreferenceScreen"

    const-string v6, "com.samsung.android.settings.multidevices.SecMultiDevicesSwitchPreferenceScreen"

    const-string v7, "Preference"

    const-string v8, "PreferenceCategory"

    const-string v9, "PreferenceScreen"

    const-string v10, "com.android.settings.widget.WorkOnlyCategory"

    .line 61
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/core/PreferenceXmlParserUtils;->SUPPORTED_PREF_TYPES:Ljava/util/List;

    return-void
.end method

.method public static extractMetadata(Landroid/content/Context;II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

    .line 234
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreferenceXmlParserUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 237
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 240
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 245
    invoke-static {p2, v3}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v5

    :cond_2
    if-eq v1, v2, :cond_3

    goto/16 :goto_1

    .line 250
    :cond_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v5, :cond_4

    const-string v6, "PreferenceScreen"

    .line 251
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_1

    .line 254
    :cond_4
    sget-object v6, Lcom/android/settings/core/PreferenceXmlParserUtils;->SUPPORTED_PREF_TYPES:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "Preference"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_1

    .line 257
    :cond_5
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 258
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 260
    sget-object v8, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v5, :cond_6

    .line 264
    sget-object v9, Lcom/android/settings/R$styleable;->PreferenceScreen:[I

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    :cond_6
    const/4 v7, 0x4

    .line 268
    invoke-static {p2, v7}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "type"

    .line 269
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_7
    invoke-static {p2, v2}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 272
    invoke-static {v8}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getKey(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "key"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 v1, 0x8

    .line 274
    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 276
    invoke-static {v8}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getController(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "controller"

    .line 275
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/16 v1, 0x10

    .line 278
    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 279
    invoke-static {v8}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getTitle(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/16 v1, 0x20

    .line 281
    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 282
    invoke-static {v8}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getSummary(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "summary"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/16 v1, 0x40

    .line 284
    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 285
    invoke-static {v8}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getIcon(Landroid/content/res/TypedArray;)I

    move-result v1

    const-string v7, "icon"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_c
    const/16 v1, 0x100

    .line 287
    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 288
    invoke-static {v8}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getKeywords(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "keywords"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const/16 v1, 0x200

    .line 290
    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 292
    invoke-static {v8}, Lcom/android/settings/core/PreferenceXmlParserUtils;->isSearchable(Landroid/content/res/TypedArray;)Z

    move-result v1

    const-string/jumbo v7, "searchable"

    .line 291
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_e
    const/16 v1, 0x400

    .line 294
    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v5, :cond_f

    .line 296
    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->isAppended(Landroid/content/res/TypedArray;)Z

    move-result v1

    const-string/jumbo v7, "staticPreferenceLocation"

    .line 295
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_f
    const/16 v1, 0x800

    .line 298
    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 300
    invoke-static {v8}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getUnavailableSliceSubtitle(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "unavailable_slice_subtitle"

    .line 299
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const/16 v1, 0x1000

    .line 302
    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 304
    invoke-static {v8}, Lcom/android/settings/core/PreferenceXmlParserUtils;->isForWork(Landroid/content/res/TypedArray;)Z

    move-result v1

    const-string v7, "for_work"

    .line 303
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_11
    const/16 v1, 0x2000

    .line 306
    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 308
    invoke-static {v8}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getHighlightableMenuKey(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "highlightable_menu_key"

    .line 307
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/16 v1, 0x4000

    .line 311
    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 313
    invoke-static {v8}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getOrder(Landroid/content/res/TypedArray;)I

    move-result v1

    const-string/jumbo v7, "order"

    .line 312
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    :cond_13
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v9, :cond_14

    .line 321
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    :cond_14
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_15

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    .line 325
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-gt v6, v4, :cond_2

    .line 326
    :cond_15
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v0
.end method

.method private static getController(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    .line 382
    sget v0, Lcom/android/settings/R$styleable;->Preference_controller:I

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHierarchicalParentFragment(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    .line 204
    sget-object v0, Lcom/android/settings/R$styleable;->PreferenceScreen:[I

    sget v1, Lcom/android/settings/R$styleable;->PreferenceScreen_hierarchicalParentFragment:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHighlightableMenuKey(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    .line 386
    sget v0, Lcom/android/settings/R$styleable;->Preference_highlightableMenuKey:I

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIcon(Landroid/content/res/TypedArray;)I
    .locals 1

    const/4 v0, 0x0

    .line 390
    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method

.method private static getKey(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    .line 370
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getKeywords(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    .line 398
    sget v0, Lcom/android/settings/R$styleable;->Preference_keywords:I

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getOrder(Landroid/content/res/TypedArray;)I
    .locals 2

    .line 418
    sget v0, Lcom/android/settings/R$styleable;->Preference_order:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private static getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 337
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method private static getSummary(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    .line 378
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTitle(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    .line 374
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTitleResId(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 1

    .line 196
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 198
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getTopLevelPreferenceKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    .line 209
    sget-object v0, Lcom/android/settings/R$styleable;->PreferenceScreen:[I

    sget v1, Lcom/android/settings/R$styleable;->PreferenceScreen_topLevelPreferenceKey:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUnavailableSliceSubtitle(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    .line 407
    sget v0, Lcom/android/settings/R$styleable;->Preference_unavailableSliceSubtitle:I

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAppended(Landroid/content/res/TypedArray;)Z
    .locals 2

    .line 402
    sget v0, Lcom/android/settings/R$styleable;->PreferenceScreen_staticPreferenceLocation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static isForWork(Landroid/content/res/TypedArray;)Z
    .locals 2

    .line 412
    sget v0, Lcom/android/settings/R$styleable;->Preference_forWork:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method private static isSearchable(Landroid/content/res/TypedArray;)Z
    .locals 2

    .line 394
    sget v0, Lcom/android/settings/R$styleable;->Preference_searchable:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method
