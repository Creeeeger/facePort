.class public Landroid/text/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# static fields
.field public static greylist-max-o CANCEL_TAG:I

.field public static greylist-max-o COMBINING_ENCLOSING_KEYCAP:I

.field public static greylist-max-o VARIATION_SELECTOR_16:I

.field public static greylist-max-o ZERO_WIDTH_JOINER:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 27
    const/16 v0, 0x20e3

    sput v0, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    .line 29
    const/16 v0, 0x200d

    sput v0, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    .line 31
    const v0, 0xfe0f

    sput v0, Landroid/text/Emoji;->VARIATION_SELECTOR_16:I

    .line 33
    const v0, 0xe007f

    sput v0, Landroid/text/Emoji;->CANCEL_TAG:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o isEmoji(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .line 85
    invoke-static {p0}, Landroid/text/Emoji;->isNewEmoji(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x39

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

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

.method public static greylist-max-o isEmojiModifier(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .line 46
    const/16 v0, 0x3b

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isEmojiModifierBase(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 60
    const v0, 0x1f91d

    if-eq p0, v0, :cond_1

    const v0, 0x1f93c

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    const/16 v0, 0x3c

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0

    .line 61
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist-max-o isKeycapBase(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .line 90
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static greylist-max-o isNewEmoji(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 75
    const v0, 0x1f6dc

    if-eq p0, v0, :cond_7

    const v0, 0x1fa75

    if-gt v0, p0, :cond_0

    const v0, 0x1fa77

    if-le p0, v0, :cond_7

    :cond_0
    const v0, 0x1fa87

    if-gt v0, p0, :cond_1

    const v0, 0x1fa88

    if-le p0, v0, :cond_7

    :cond_1
    const v0, 0x1faad

    if-gt v0, p0, :cond_2

    const v0, 0x1faaf

    if-le p0, v0, :cond_7

    :cond_2
    const v0, 0x1fabb

    if-gt v0, p0, :cond_3

    const v0, 0x1fabd

    if-le p0, v0, :cond_7

    :cond_3
    const v0, 0x1fabf

    if-eq p0, v0, :cond_7

    const v0, 0x1face

    if-gt v0, p0, :cond_4

    const v0, 0x1facf

    if-le p0, v0, :cond_7

    :cond_4
    const v0, 0x1fada

    if-gt v0, p0, :cond_5

    const v0, 0x1fadb

    if-le p0, v0, :cond_7

    :cond_5
    const v0, 0x1fae8

    if-eq p0, v0, :cond_7

    const v0, 0x1faf7

    if-gt v0, p0, :cond_6

    const v0, 0x1faf8

    if-gt p0, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static greylist-max-o isRegionalIndicatorSymbol(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .line 39
    const v0, 0x1f1e6

    if-gt v0, p0, :cond_0

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isTagSpecChar(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .line 99
    const v0, 0xe0020

    if-gt v0, p0, :cond_0

    const v0, 0xe007e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
