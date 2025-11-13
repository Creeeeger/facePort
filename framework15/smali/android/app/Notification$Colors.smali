.class public Landroid/app/Notification$Colors;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colors"
.end annotation


# instance fields
.field private blacklist mBackgroundColor:I

.field private blacklist mContrastColor:I

.field private blacklist mErrorColor:I

.field private blacklist mOnTertiaryAccentTextColor:I

.field private blacklist mOnTertiaryFixedAccentTextColor:I

.field private blacklist mPaletteIsForColorized:Z

.field private blacklist mPaletteIsForNightMode:Z

.field private blacklist mPaletteIsForRawColor:I

.field private blacklist mPrimaryAccentColor:I

.field private blacklist mPrimaryTextColor:I

.field private blacklist mProtectionColor:I

.field private blacklist mRippleAlpha:I

.field private blacklist mSecondaryAccentColor:I

.field private blacklist mSecondaryTextColor:I

.field private blacklist mTertiaryAccentColor:I

.field private blacklist mTertiaryFixedDimAccentColor:I

.field private blacklist mThirdTextColor:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smflattenAlpha(II)I
    .locals 0

    invoke-static {p0, p1}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mThirdTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    const/16 v0, 0x33

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return-void
.end method

.method private static blacklist calculateContrastColor(Landroid/content/Context;IIIZ)I
    .locals 2

    if-nez p1, :cond_0

    move v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    :cond_1
    :goto_0
    invoke-static {v0, p3}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result v1

    return v1
.end method

.method private static blacklist flattenAlpha(II)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static blacklist getColor(Landroid/content/res/TypedArray;II)I
    .locals 1

    if-nez p0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static blacklist obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getBackgroundColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    return v0
.end method

.method public blacklist getContrastColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    return v0
.end method

.method public blacklist getErrorColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    return v0
.end method

.method public blacklist getOnTertiaryAccentTextColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    return v0
.end method

.method public blacklist getOnTertiaryFixedAccentTextColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    return v0
.end method

.method public blacklist getPrimaryAccentColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    return v0
.end method

.method public blacklist getPrimaryTextColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    return v0
.end method

.method public blacklist getProtectionColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    return v0
.end method

.method public blacklist getRippleAlpha()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return v0
.end method

.method public blacklist getSecondaryAccentColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    return v0
.end method

.method public blacklist getSecondaryTextColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    return v0
.end method

.method public blacklist getTertiaryAccentColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    return v0
.end method

.method public blacklist getTertiaryFixedDimAccentColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    return v0
.end method

.method public blacklist getThirdTextColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$Colors;->mThirdTextColor:I

    return v0
.end method

.method public blacklist resolvePalette(Landroid/content/Context;IZZ)V
    .locals 6

    iget v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    if-ne v0, p3, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    if-ne v0, p4, :cond_0

    return-void

    :cond_0
    iput p2, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    iput-boolean p3, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    iput-boolean p4, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    if-nez p2, :cond_3

    const v2, 0x11200c4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-static {p1, v2}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    :try_start_0
    invoke-static {v3, v1, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V

    :cond_1
    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0

    :cond_3
    iput p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    :goto_1
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {v0, v1}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    const/16 v0, 0x33

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    goto/16 :goto_2

    :cond_4
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p1, v2}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    if-eqz p4, :cond_5

    const/high16 v0, -0x1000000

    :cond_5
    :try_start_2
    invoke-static {v3, v1, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    const/4 v0, 0x1

    invoke-static {v3, v0, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    const/4 v4, 0x2

    invoke-static {v3, v4, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    const/4 v4, 0x3

    invoke-static {v3, v4, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    const/4 v4, 0x4

    invoke-static {v3, v4, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    const/4 v4, 0x5

    invoke-static {v3, v4, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    const/4 v4, 0x6

    invoke-static {v3, v4, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    const/4 v4, 0x7

    invoke-static {v3, v4, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    const/16 v4, 0x8

    invoke-static {v3, v4, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    const/16 v4, 0x9

    invoke-static {v3, v4, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    const/16 v4, 0xa

    const v5, 0x33ffffff

    invoke-static {v3, v4, v5}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    iput v4, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V

    :cond_6
    iget v3, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iget v4, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, v3, v4, p4}, Landroid/app/Notification$Colors;->calculateContrastColor(Landroid/content/Context;IIIZ)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v3, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    iput v3, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveThirdColor(Landroid/content/Context;IZ)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mThirdTextColor:I

    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    if-ne v1, v0, :cond_7

    iget v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    :cond_7
    iget v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    const/16 v3, 0xff

    if-ne v1, v0, :cond_8

    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v1

    invoke-static {v1, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    :cond_8
    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    if-ne v1, v0, :cond_9

    iget v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    :cond_9
    iget v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    if-ne v1, v0, :cond_a

    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v1

    invoke-static {v1, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    :cond_a
    iget v1, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    if-ne v1, v0, :cond_b

    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    :cond_b
    :goto_2
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    const v2, 0x3f666666    # 0.9f

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    return-void

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_c

    :try_start_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_3
    throw v0

    :array_0
    .array-data 4
        0x11200cb
        0x11200b6
        0x11200b8
        0x11200bf
        0x11200c4
        0x11200d2
        0x11200b9
        0x11200d5
        0x11200bb
        0x1010543
        0x101042c
    .end array-data
.end method
