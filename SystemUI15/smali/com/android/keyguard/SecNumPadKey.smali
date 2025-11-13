.class public Lcom/android/keyguard/SecNumPadKey;
.super Lcom/android/keyguard/NumPadKey;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAccessibilityDelegate:Lcom/android/keyguard/SecNumPadKey$1;

.field public mDigitImage:Landroid/widget/ImageView;

.field public mIsImagePinLock:Z

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mOnSettingsChangedCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x7f0d017f

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/SecNumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/keyguard/SecNumPadKey$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/SecNumPadKey$1;-><init>(Lcom/android/keyguard/SecNumPadKey;)V

    iput-object p2, p0, Lcom/android/keyguard/SecNumPadKey;->mAccessibilityDelegate:Lcom/android/keyguard/SecNumPadKey$1;

    new-instance p2, Lcom/android/keyguard/SecNumPadKey$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/keyguard/SecNumPadKey$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/SecNumPadKey;)V

    iput-object p2, p0, Lcom/android/keyguard/SecNumPadKey;->mOnSettingsChangedCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget p2, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const p2, 0x7f080ba3

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/RippleDrawable;

    iput-object p2, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    iput-object p2, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/keyguard/SecNumPadKey$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/SecNumPadKey$2;-><init>(Lcom/android/keyguard/SecNumPadKey;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public final doHapticKeyClick()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isHapticFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/SecNumPadKey;->mOnSettingsChangedCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "accessibility_reduce_transparency"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/SecNumPadKey;->mOnSettingsChangedCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mAccessibilityDelegate:Lcom/android/keyguard/SecNumPadKey$1;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p3, p1, 0x2

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget-object p4, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    add-int/2addr p1, p2

    iget-object p0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p0, p3, p2, p4, p1}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/NumPadKey;->onLayout(ZIIII)V

    :goto_0
    return-void
.end method

.method public updateDigitTextSize()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0705b2

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public updateKlondikeTextSize()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0705ae

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final updateViewStyle()V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f050091

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0d015b

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0d0180

    goto :goto_1

    :cond_2
    const v0, 0x7f0d017f

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/SecNumPadKey;->mIsImagePinLock:Z

    const v3, 0x7f080ba3

    const v4, 0x7f080ba5

    if-eqz v0, :cond_11

    const v0, 0x7f0a0386

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const-string v0, "background"

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    const v5, 0x7f080d97

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v2, "SecNumPadKey"

    const-string v6, "return null - bitmap is null"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    iget v2, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    const v1, 0x7f080da7

    goto :goto_3

    :cond_5
    const v1, 0x7f080da6

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    const v1, 0x7f080da5

    goto :goto_4

    :cond_6
    const v1, 0x7f080da4

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    const v1, 0x7f080da3

    goto :goto_5

    :cond_7
    const v1, 0x7f080da2

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    :pswitch_3
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    const v1, 0x7f080da1

    goto :goto_6

    :cond_8
    const v1, 0x7f080da0

    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    :pswitch_4
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    const v1, 0x7f080d9f

    goto :goto_7

    :cond_9
    const v1, 0x7f080d9e

    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    :pswitch_5
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    const v1, 0x7f080d9d

    goto :goto_8

    :cond_a
    const v1, 0x7f080d9c

    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    :pswitch_6
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    const v1, 0x7f080d9b

    goto :goto_9

    :cond_b
    const v1, 0x7f080d9a

    :goto_9
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    :pswitch_7
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    const v1, 0x7f080d99

    goto :goto_a

    :cond_c
    const v1, 0x7f080d98

    :goto_a
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    :pswitch_8
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    goto :goto_b

    :cond_d
    const v5, 0x7f080d96

    :goto_b
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    :pswitch_9
    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mDigitImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    const v1, 0x7f080d95

    goto :goto_c

    :cond_e
    const v1, 0x7f080d94

    :goto_c
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_d
    iget v1, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_f

    const v2, 0x7f080d93

    goto :goto_e

    :cond_f
    const v2, 0x7f080d92

    :goto_e
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_16

    :catch_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_10

    move v3, v4

    :cond_10
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_16

    :cond_11
    const v0, 0x7f0a0387

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a05d6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-lez v2, :cond_14

    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    :cond_12
    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    array-length v2, v0

    iget v5, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-le v2, v5, :cond_15

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_13
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f

    :cond_14
    if-nez v2, :cond_15

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_15
    :goto_f
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    instance-of v2, v0, Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_1a

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getOpenThemeNumericFont()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_16
    const/4 v2, 0x0

    :goto_10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_18

    sget v1, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    const-class v1, Lcom/android/keyguard/SecurityUtils;

    monitor-enter v1

    :try_start_1
    sget-object v5, Lcom/android/keyguard/SecurityUtils;->sTypefaceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    if-nez v6, :cond_17

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_11

    :catchall_0
    move-exception p0

    goto :goto_12

    :cond_17
    :goto_11
    monitor-exit v1

    goto :goto_13

    :goto_12
    monitor-exit v1

    throw p0

    :cond_18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f130db0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    const/16 v6, 0x190

    invoke-static {v5, v6, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "SecNumPadKey"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist. Use default font."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_13
    if-eqz v6, :cond_1a

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    const-wide/16 v0, 0x200

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(J)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/SecNumPadKey;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_1b

    const v0, 0x7f080ba6

    goto :goto_14

    :cond_1b
    const v0, 0x7f080ba4

    :goto_14
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_15

    :cond_1c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_1d

    move v3, v4

    :cond_1d
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    :goto_15
    iget-object v0, p0, Lcom/android/keyguard/SecNumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1e
    :goto_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
