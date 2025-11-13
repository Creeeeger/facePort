.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$Callback;


# static fields
.field static final FB_LAYER_BACKGROUND_COLOR:Ljava/lang/String; = "#CC1e1e1e"


# instance fields
.field mCurrentAnimationType:Ljava/lang/String;

.field public final mGetIconColorFilter:Ljava/util/function/Function;

.field public mHelpMessageOnAodView:Landroid/widget/TextView;

.field public final mKeyguardFingerIcon:Ljava/util/function/Supplier;

.field mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda1;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda2;)V
    .locals 9

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v8, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient$$ExternalSyntheticLambda0;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    sput-boolean p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;->mIsKeyguard:Z

    .line 15
    .line 16
    iput-object p5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mKeyguardFingerIcon:Ljava/util/function/Supplier;

    .line 17
    .line 18
    iput-object p6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mGetIconColorFilter:Ljava/util/function/Function;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final calculateLocationOfHelpMessageView()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 4
    .line 5
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentRotation:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 8
    .line 9
    iget v3, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorImageSize:I

    .line 10
    .line 11
    iget v4, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginBottom:I

    .line 12
    .line 13
    iget v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorAreaHeight:I

    .line 14
    .line 15
    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    .line 23
    iget-object v6, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v6}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const/4 v7, -0x2

    .line 30
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 31
    .line 32
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 33
    .line 34
    iget-object v7, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    .line 37
    .line 38
    invoke-static {v7, v8, v9}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    div-int/lit8 v2, v2, 0x2

    .line 43
    .line 44
    add-int/2addr v2, v4

    .line 45
    div-int/lit8 v7, v7, 0x2

    .line 46
    .line 47
    sub-int v4, v2, v7

    .line 48
    .line 49
    div-int/lit8 v3, v3, 0x2

    .line 50
    .line 51
    add-int/2addr v2, v3

    .line 52
    iget v7, v6, Landroid/util/DisplayMetrics;->density:F

    .line 53
    .line 54
    float-to-double v7, v7

    .line 55
    const-wide/high16 v9, 0x403a000000000000L    # 26.0

    .line 56
    .line 57
    mul-double/2addr v9, v7

    .line 58
    double-to-float v7, v9

    .line 59
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    add-int/2addr v7, v2

    .line 64
    const/16 v2, 0x51

    .line 65
    .line 66
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    .line 68
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 69
    .line 70
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 71
    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 75
    .line 76
    .line 77
    iget-object v9, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    .line 80
    .line 81
    invoke-static {v9, v10, v11}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    int-to-float v9, v9

    .line 86
    invoke-virtual {v2, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 87
    .line 88
    .line 89
    const-string v9, "#CC1e1e1e"

    .line 90
    .line 91
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    invoke-virtual {v2, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 96
    .line 97
    .line 98
    iget-object v9, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    const-wide/high16 v11, 0x4030000000000000L    # 16.0

    .line 103
    .line 104
    invoke-static {v10, v11, v12}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    iget-object v13, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    .line 111
    .line 112
    invoke-static {v13, v14, v15}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    iget-object v8, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    invoke-static {v8, v11, v12}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    invoke-static {v11, v14, v15}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    invoke-virtual {v9, v10, v13, v8, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 129
    .line 130
    .line 131
    iget-object v8, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    .line 135
    .line 136
    mul-int/lit8 v2, v1, 0x5a

    .line 137
    .line 138
    int-to-float v2, v2

    .line 139
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 140
    .line 141
    const/4 v7, 0x0

    .line 142
    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 146
    .line 147
    .line 148
    if-eqz v1, :cond_3

    .line 149
    .line 150
    const/4 v7, 0x1

    .line 151
    if-eq v1, v7, :cond_0

    .line 152
    .line 153
    const/4 v8, 0x3

    .line 154
    if-eq v1, v8, :cond_0

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_0
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 158
    .line 159
    float-to-double v8, v6

    .line 160
    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    .line 161
    .line 162
    mul-double/2addr v10, v8

    .line 163
    double-to-float v6, v10

    .line 164
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    iget-object v8, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 169
    .line 170
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    div-int/lit8 v8, v8, 0x2

    .line 175
    .line 176
    add-int/2addr v8, v6

    .line 177
    if-le v8, v4, :cond_1

    .line 178
    .line 179
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 180
    .line 181
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    div-int/lit8 v4, v4, 0x2

    .line 186
    .line 187
    add-int/2addr v4, v6

    .line 188
    :cond_1
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 189
    .line 190
    if-ne v1, v7, :cond_2

    .line 191
    .line 192
    add-int/2addr v3, v6

    .line 193
    goto :goto_0

    .line 194
    :cond_2
    add-int/2addr v3, v6

    .line 195
    neg-int v3, v3

    .line 196
    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_3
    const/4 v2, 0x0

    .line 201
    :goto_1
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRotation(F)V

    .line 204
    .line 205
    .line 206
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 207
    .line 208
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method public final initSensorLayout()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;->initSensorLayout()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    const v1, 0x7f0a01a2

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->init(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$Callback;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    const v1, 0x7f0a019a

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->calculateLocationOfHelpMessageView()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->calculateLocationOfHelpMessageView()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->stop()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 15
    .line 16
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->init(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$Callback;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onRotationInfoChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->onRotationInfoChanged(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->calculateLocationOfHelpMessageView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final removeView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->stop()V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;->removeView()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setAnimationTypeIfNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mKeyguardFingerIcon:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mCurrentAnimationType:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mCurrentAnimationType:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 27
    .line 28
    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mCurrentAnimationType:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "dark_theme"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const-string v0, "0"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mCurrentAnimationType:Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "light_theme"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    const-string v0, "1"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string v0, "2"

    .line 60
    .line 61
    :goto_0
    const-string v1, "animationType : "

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "BSS_UdfpsKeyguardSensorWindow"

    .line 68
    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mCurrentAnimationType:Ljava/lang/String;

    .line 73
    .line 74
    const-string v1, "aod"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setLottieViewColorFilter(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mGetIconColorFilter:Ljava/util/function/Function;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mCurrentAnimationType:Ljava/lang/String;

    .line 90
    .line 91
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setLottieViewColorFilter(I)V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void
.end method

.method public final setSensorIcon()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->setAnimationTypeIfNeeded()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final showHelpMessageOnAod(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/high16 v2, 0x41600000    # 14.0f

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->calculateLocationOfHelpMessageView()V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final showSensorIcon()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->setAnimationTypeIfNeeded()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->showSensorIcon()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final showSensorIconWithAnimation()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIcon()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
