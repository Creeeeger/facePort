.class public Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentMediaIconState:I

.field public mIcon:Landroid/view/View;

.field public mIconActiveColor:Landroid/content/res/ColorStateList;

.field public final mIconMutedColor:Landroid/content/res/ColorStateList;

.field public mIconType:I

.field public mIsAnimatedType:Z

.field public final mMuteIcons:Ljava/util/HashMap;

.field public final mNormalIcons:Ljava/util/HashMap;

.field public mSecVibrationIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

.field public mShouldUpdateIcon:Z

.field public mStream:I

.field public mSystemDbName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mCurrentMediaIconState:I

    iput p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIconType:I

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mNormalIcons:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mMuteIcons:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f080dfe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f080df5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f080dfb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f080e01

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p2, 0x7f080df9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p2, 0x7f080df4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p2, 0x7f080dfc

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p2, 0x7f080e02

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0606fd

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    new-array v0, v6, [I

    filled-new-array {v0}, [[I

    move-result-object v0

    new-instance v2, Landroid/content/res/ColorStateList;

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {v2, v0, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0606ff

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    new-array p2, v6, [I

    filled-new-array {p2}, [[I

    move-result-object p2

    new-instance v0, Landroid/content/res/ColorStateList;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public final getIconType()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mSystemDbName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    if-nez p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    :goto_0
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method public final supportAnimatedIcon()Z
    .locals 2

    iget p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final updateLayout(Z)V
    .locals 27

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->supportAnimatedIcon()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    iget-boolean v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIsAnimatedType:Z

    if-eq v4, v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    iput-boolean v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mShouldUpdateIcon:Z

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_2
    if-eqz v1, :cond_5

    iget v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    if-ne v1, v6, :cond_3

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0d0c06

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    goto :goto_2

    :cond_3
    if-ne v1, v5, :cond_4

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0d0c07

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0d0c05

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    :goto_2
    iput-boolean v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIsAnimatedType:Z

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0d0c08

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    iput-boolean v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIsAnimatedType:Z

    :goto_3
    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->supportAnimatedIcon()Z

    move-result v1

    const v9, 0x7f0a111f

    const v10, 0x7f0a111e

    const v11, 0x7f0a111d

    const v12, 0x7f0a1121

    if-eqz v1, :cond_2f

    iget-boolean v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIsAnimatedType:Z

    if-eqz v1, :cond_2f

    iget v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    if-ne v1, v6, :cond_7

    move v13, v3

    goto :goto_4

    :cond_7
    move v13, v2

    :goto_4
    const/16 v14, 0x8

    const v15, 0x7f0a1120

    const/4 v7, 0x5

    const v4, 0x7f0a1119

    if-nez v13, :cond_f

    if-ne v1, v5, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->getIconType()I

    move-result v1

    iget-object v13, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v13, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v15, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget v15, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    if-ne v15, v7, :cond_9

    iget-object v7, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v15, 0x7f080dfb

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v15, 0x7f080dfc

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_9
    if-eq v15, v3, :cond_a

    if-nez v15, :cond_b

    :cond_a
    iget-object v7, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v15, 0x7f080e01

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v15, 0x7f080e02

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    :goto_5
    if-eq v1, v3, :cond_d

    if-eq v1, v6, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_d
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIconType:I

    if-eq v2, v1, :cond_e

    iget-object v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startSplashAnimation(Landroid/view/View;)V

    :cond_e
    :goto_6
    iput v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIconType:I

    goto/16 :goto_18

    :cond_f
    :goto_7
    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v1, :cond_14

    if-eq v1, v3, :cond_13

    if-eq v1, v5, :cond_12

    if-eq v1, v6, :cond_11

    if-eq v1, v7, :cond_10

    move v1, v7

    const/4 v8, 0x0

    goto :goto_8

    :cond_10
    const v1, 0x10e0184

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v8, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    goto :goto_8

    :cond_11
    const v1, 0x10e0183

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v8, "media_vibration_intensity"

    goto :goto_8

    :cond_12
    const v1, 0x10e0185

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v8, "VIB_RECVCALL_MAGNITUDE"

    goto :goto_8

    :cond_13
    const v1, 0x10e0180

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v8, "VIB_FEEDBACK_MAGNITUDE"

    goto :goto_8

    :cond_14
    const v1, 0x10e0181

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v8, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    :goto_8
    iget-object v13, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    if-eqz v8, :cond_16

    if-eq v8, v3, :cond_15

    if-eq v8, v5, :cond_17

    if-eq v8, v6, :cond_17

    if-eq v8, v7, :cond_17

    move v7, v2

    goto :goto_9

    :cond_15
    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_17

    move v7, v6

    goto :goto_9

    :cond_16
    const/4 v7, 0x4

    :cond_17
    :goto_9
    int-to-double v12, v1

    int-to-double v14, v7

    const-wide v18, 0x3fe3333333333333L    # 0.6

    mul-double v18, v18, v14

    cmpl-double v7, v12, v18

    if-lez v7, :cond_18

    move v1, v6

    goto :goto_a

    :cond_18
    const-wide/high16 v18, 0x3fd0000000000000L    # 0.25

    mul-double v14, v14, v18

    cmpl-double v7, v12, v14

    if-lez v7, :cond_19

    move v1, v5

    goto :goto_a

    :cond_19
    if-lez v1, :cond_1a

    move v1, v3

    goto :goto_a

    :cond_1a
    move v1, v2

    :goto_a
    iget v7, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    if-ne v7, v6, :cond_1b

    move v7, v3

    goto :goto_b

    :cond_1b
    move v7, v2

    :goto_b
    const/4 v12, -0x1

    if-eqz v7, :cond_25

    iget v7, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mCurrentMediaIconState:I

    if-ne v1, v7, :cond_1c

    iget-boolean v13, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mShouldUpdateIcon:Z

    if-eqz v13, :cond_32

    :cond_1c
    if-eq v7, v12, :cond_1f

    if-ne v1, v7, :cond_1d

    goto :goto_c

    :cond_1d
    sub-int v13, v1, v7

    if-lez v13, :cond_1e

    add-int/lit8 v13, v7, 0x1

    goto :goto_d

    :cond_1e
    add-int/lit8 v13, v7, -0x1

    goto :goto_d

    :cond_1f
    :goto_c
    move v13, v1

    :goto_d
    iget-object v14, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v14, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const v15, 0x7f0a111c

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iget-object v15, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    if-eq v7, v12, :cond_21

    if-ne v7, v1, :cond_20

    goto :goto_e

    :cond_20
    move v7, v2

    goto :goto_f

    :cond_21
    :goto_e
    move v7, v3

    :goto_f
    if-ne v13, v6, :cond_22

    iget-object v12, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    iget v13, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object/from16 v18, v15

    move-object/from16 v19, v10

    move-object/from16 v20, v8

    move-object/from16 v21, v14

    move-object/from16 v22, v4

    move/from16 v23, v7

    invoke-virtual/range {v16 .. v23}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_10

    :cond_22
    if-ne v13, v5, :cond_23

    iget-object v12, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    iget v13, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    move-object/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v1

    move-object/from16 v21, v15

    move-object/from16 v22, v10

    move-object/from16 v23, v8

    move-object/from16 v24, v14

    move-object/from16 v25, v4

    move/from16 v26, v7

    invoke-virtual/range {v18 .. v26}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_10

    :cond_23
    if-ne v13, v3, :cond_24

    iget-object v12, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    iget v13, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    move-object/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v1

    move-object/from16 v21, v15

    move-object/from16 v22, v10

    move-object/from16 v23, v8

    move-object/from16 v24, v14

    move-object/from16 v25, v4

    move/from16 v26, v7

    invoke-virtual/range {v18 .. v26}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_10

    :cond_24
    iget-object v12, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    iget v13, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object/from16 v18, v15

    move-object/from16 v19, v10

    move-object/from16 v20, v8

    move-object/from16 v21, v14

    move-object/from16 v22, v4

    move/from16 v23, v7

    invoke-virtual/range {v16 .. v23}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :goto_10
    iput-boolean v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mShouldUpdateIcon:Z

    iput v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mCurrentMediaIconState:I

    goto/16 :goto_18

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->getIconType()I

    move-result v7

    iget v10, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mCurrentMediaIconState:I

    if-ne v1, v10, :cond_26

    iget-boolean v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mShouldUpdateIcon:Z

    if-nez v8, :cond_26

    iget v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIconType:I

    if-eq v8, v7, :cond_32

    :cond_26
    if-eq v10, v12, :cond_29

    if-eqz v1, :cond_29

    if-ne v1, v10, :cond_27

    goto :goto_12

    :cond_27
    sub-int v8, v1, v10

    if-lez v8, :cond_28

    add-int/lit8 v8, v10, 0x1

    :goto_11
    move v13, v8

    goto :goto_13

    :cond_28
    add-int/lit8 v8, v10, -0x1

    goto :goto_11

    :cond_29
    :goto_12
    move v13, v1

    :goto_13
    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const v14, 0x7f0a1120

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const v15, 0x7f0a1121

    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const v9, 0x7f0a1128

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const v11, 0x7f0a1129

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v11, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const v2, 0x7f0a112c

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eq v10, v12, :cond_2a

    if-ne v10, v1, :cond_2b

    :cond_2a
    iget v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIconType:I

    if-ne v2, v7, :cond_2b

    move v2, v3

    goto :goto_14

    :cond_2b
    const/4 v2, 0x0

    :goto_14
    if-ne v13, v6, :cond_2c

    iget-object v10, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    iget v11, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    move-object/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v20, v15

    move-object/from16 v21, v9

    move-object/from16 v22, v8

    move-object/from16 v23, v14

    move-object/from16 v24, v4

    move/from16 v25, v2

    invoke-virtual/range {v18 .. v25}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :goto_15
    const/4 v2, 0x0

    goto :goto_16

    :cond_2c
    if-ne v13, v5, :cond_2d

    iget-object v10, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    iget v11, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    move-object/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v1

    move-object/from16 v21, v15

    move-object/from16 v22, v9

    move-object/from16 v23, v8

    move-object/from16 v24, v14

    move-object/from16 v25, v4

    move/from16 v26, v2

    invoke-virtual/range {v18 .. v26}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_15

    :cond_2d
    if-ne v13, v3, :cond_2e

    iget-object v10, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    iget v11, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    move-object/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v1

    move-object/from16 v21, v15

    move-object/from16 v22, v9

    move-object/from16 v23, v8

    move-object/from16 v24, v14

    move-object/from16 v25, v4

    move/from16 v26, v2

    invoke-virtual/range {v18 .. v26}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_15

    :cond_2e
    iget-object v10, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mSecVibrationIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    iget v11, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    move-object/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v20, v15

    move-object/from16 v21, v9

    move-object/from16 v22, v8

    move-object/from16 v23, v14

    move-object/from16 v24, v4

    move/from16 v25, v2

    invoke-virtual/range {v18 .. v25}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_15

    :goto_16
    iput-boolean v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mShouldUpdateIcon:Z

    iput v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mCurrentMediaIconState:I

    iput v7, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIconType:I

    goto :goto_18

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->getIconType()I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mNormalIcons:Ljava/util/HashMap;

    iget v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v7, 0x7f080df5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v3, :cond_31

    if-eq v1, v6, :cond_30

    goto :goto_17

    :cond_30
    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mNormalIcons:Ljava/util/HashMap;

    iget v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_17

    :cond_31
    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mMuteIcons:Ljava/util/HashMap;

    iget v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v4, 0x7f080df4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_17
    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_32
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->getIconType()I

    move-result v1

    if-ne v1, v3, :cond_33

    iget-object v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    goto :goto_19

    :cond_33
    iget-object v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->supportAnimatedIcon()Z

    move-result v4

    if-nez v4, :cond_34

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1a

    :cond_34
    if-eq v1, v3, :cond_37

    iget v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mStream:I

    if-ne v1, v6, :cond_35

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const v4, 0x7f0a111d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const v5, 0x7f0a111e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const v6, 0x7f0a111f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1a

    :cond_35
    if-ne v1, v5, :cond_36

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const v4, 0x7f0a1121

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const v5, 0x7f0a1128

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const v6, 0x7f0a1129

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1a

    :cond_36
    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->mIcon:Landroid/view/View;

    const v4, 0x7f0a1121

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_37
    :goto_1a
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
