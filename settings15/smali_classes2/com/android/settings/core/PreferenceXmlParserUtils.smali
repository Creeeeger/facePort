.class public abstract Lcom/android/settings/core/PreferenceXmlParserUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SUPPORTED_PREF_TYPES:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v11, "SwitchPreferenceCompat"

    const-string v12, "com.android.settings.widget.WorkOnlyCategory"

    const-string v0, "SecPreference"

    const-string v1, "SecPreferenceCategory"

    const-string v2, "SecPreferenceScreen"

    const-string v3, "SecSwitchPreferenceScreen"

    const-string v4, "com.samsung.android.settings.widget.SecRestrictedSwitchPreferenceScreen"

    const-string v5, "com.samsung.android.settings.widget.SecDisabledAppearanceSwitchPreferenceScreen"

    const-string v6, "com.samsung.android.settings.multidevices.SecMultiDevicesSwitchPreferenceScreen"

    const-string v7, "com.samsung.android.settings.usefulfeature.intelligenceservice.SecIntelligenceSwitchPreferenceScreen"

    const-string v8, "Preference"

    const-string v9, "PreferenceCategory"

    const-string v10, "PreferenceScreen"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/core/PreferenceXmlParserUtils;->SUPPORTED_PREF_TYPES:Ljava/util/List;

    return-void
.end method

.method public static extractMetadata(Landroid/content/Context;II)Ljava/util/List;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

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

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    invoke-static {p2, v3}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v5

    :cond_2
    if-eq v1, v2, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v5, :cond_4

    const-string v6, "PreferenceScreen"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_3

    :cond_4
    sget-object v6, Lcom/android/settings/core/PreferenceXmlParserUtils;->SUPPORTED_PREF_TYPES:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "Preference"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_3

    :cond_5
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    sget-object v8, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    if-eqz v5, :cond_6

    sget-object v9, Lcom/android/settings/R$styleable;->PreferenceScreen:[I

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x4

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "type"

    invoke-virtual {v6, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {p2, v2}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v11, "key"

    invoke-virtual {v6, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 v1, 0x8

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x12

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v11, "controller"

    invoke-virtual {v6, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/16 v1, 0x10

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v10, "title"

    invoke-virtual {v6, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/16 v1, 0x20

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x7

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v10, "summary"

    invoke-virtual {v6, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/16 v1, 0x40

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v8, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const-string v11, "icon"

    invoke-virtual {v6, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_c
    const/16 v1, 0x100

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x1f

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v11, "keywords"

    invoke-virtual {v6, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const/16 v1, 0x200

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x23

    invoke-virtual {v8, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const-string v11, "searchable"

    invoke-virtual {v6, v11, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_e
    const/16 v1, 0x400

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v5, :cond_10

    invoke-virtual {v9, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-ne v1, v3, :cond_f

    move v1, v3

    goto :goto_2

    :cond_f
    move v1, v10

    :goto_2
    const-string v11, "staticPreferenceLocation"

    invoke-virtual {v6, v11, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_10
    const/16 v1, 0x800

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x29

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v11, "unavailable_slice_subtitle"

    invoke-virtual {v6, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/16 v1, 0x1000

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x17

    invoke-virtual {v8, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const-string v10, "for_work"

    invoke-virtual {v6, v10, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_12
    const/16 v1, 0x2000

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0x19

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v10, "highlightable_menu_key"

    invoke-virtual {v6, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const/16 v1, 0x4000

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/settingslib/R$styleable;->RestrictedPreference:[I

    invoke-virtual {p0, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string v1, "userRestriction"

    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v9, :cond_15

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :cond_15
    :goto_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_16

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-gt v6, v4, :cond_2

    :cond_16
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v0
.end method

.method public static getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method public static getTitleResId(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 1

    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static hasFlag(II)Z
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
