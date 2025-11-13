.class public Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBroadcastMode:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentMediaIconState:I

.field public mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

.field public mIcon:Landroid/view/View;

.field public final mIconActiveColor:Landroid/content/res/ColorStateList;

.field public final mIconEarShockColor:Landroid/content/res/ColorStateList;

.field public final mIconMutedColor:Landroid/content/res/ColorStateList;

.field public mIconType:I

.field public mIsAnimatedType:Z

.field public final mMuteIcons:Ljava/util/HashMap;

.field public final mNormalIcons:Ljava/util/HashMap;

.field public mSecVolumeIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

.field public mShouldUpdateIcon:Z

.field public mStream:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mCurrentMediaIconState:I

    iput v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconType:I

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mBroadcastMode:I

    move-object/from16 v5, p1

    iput-object v5, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    const v6, 0x7f080dfe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f080df5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080e01

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f080dfb

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x7f080df3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v13, 0xb

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x7f080dee

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0xa

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const v16, 0x7f080df0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x65

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v16, 0x7f0806ab

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x69

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v16, 0x7f080df2

    move-object/from16 v18, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x4

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v16, 0x7f080def

    move-object/from16 v20, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f080df9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7f080df4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7f080e02

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7f080dfc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v19

    move-object/from16 v3, v20

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0606fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const/4 v1, 0x0

    new-array v3, v1, [I

    filled-new-array {v3}, [[I

    move-result-object v3

    new-instance v4, Landroid/content/res/ColorStateList;

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {v4, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0606ff

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    new-array v4, v1, [I

    filled-new-array {v4}, [[I

    move-result-object v4

    new-instance v5, Landroid/content/res/ColorStateList;

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v5, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v5, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0606fe

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    new-array v1, v1, [I

    filled-new-array {v1}, [[I

    move-result-object v1

    new-instance v3, Landroid/content/res/ColorStateList;

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v3, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public final getIconType(I)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    iget-object p1, p1, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :cond_2
    :goto_0
    return v0
.end method

.method public final initialize(Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iput p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    new-instance p1, Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    iget-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->getAudioStream(I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    iget-object p2, p2, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->getIconType(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconType:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->updateLayout(Z)V

    return-void
.end method

.method public final setAnimatedIcon(II)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    sget v7, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->EAR_PROTECT_LIMIT_LEVEL_FOR_ROUTINE:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v4

    :goto_0
    const v9, 0x7f0a112c

    const v10, 0x7f0a1120

    const v11, 0x7f0a1121

    const v12, 0x7f0a1119

    if-nez v8, :cond_8

    invoke-static {v6}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->isSpeakerType(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget v9, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_2

    iget-object v9, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080dfb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080dfc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080dfd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    if-ne v9, v5, :cond_3

    iget-object v9, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080e01

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080e02

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    const/16 v9, 0x8

    if-eqz v2, :cond_6

    if-eq v2, v5, :cond_5

    if-eq v2, v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconType:I

    if-eq v1, v2, :cond_7

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startSplashAnimation(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconType:I

    if-eq v1, v2, :cond_7

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startVibrationAnimation(Landroid/view/View;)V

    :cond_7
    :goto_2
    iput v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconType:I

    goto/16 :goto_13

    :cond_8
    :goto_3
    iget v6, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    invoke-static {v6}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->getAudioStream(I)I

    move-result v6

    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    iget-object v8, v8, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iget v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    const/16 v13, 0x65

    if-ne v8, v13, :cond_9

    mul-int/lit8 v6, v6, 0xa

    :cond_9
    int-to-double v13, v1

    int-to-double v3, v6

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    mul-double v17, v17, v3

    cmpl-double v6, v13, v17

    if-lez v6, :cond_a

    move v1, v7

    goto :goto_4

    :cond_a
    const-wide/high16 v17, 0x3fd0000000000000L    # 0.25

    mul-double v3, v3, v17

    cmpl-double v3, v13, v3

    if-lez v3, :cond_b

    const/4 v1, 0x2

    goto :goto_4

    :cond_b
    if-lez v1, :cond_c

    move v1, v5

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    :goto_4
    invoke-static {v8}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->isSpeakerType(I)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1b

    iget v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mCurrentMediaIconState:I

    if-ne v1, v3, :cond_d

    iget-boolean v6, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mShouldUpdateIcon:Z

    if-nez v6, :cond_d

    iget v6, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconType:I

    if-eq v6, v2, :cond_25

    :cond_d
    if-eq v3, v4, :cond_11

    if-eqz v1, :cond_11

    if-ne v1, v3, :cond_e

    goto :goto_6

    :cond_e
    if-nez v2, :cond_f

    const/4 v6, 0x0

    goto :goto_5

    :cond_f
    move v6, v3

    :goto_5
    sub-int v6, v1, v6

    if-lez v6, :cond_10

    add-int/lit8 v6, v3, 0x1

    goto :goto_7

    :cond_10
    add-int/lit8 v6, v3, -0x1

    goto :goto_7

    :cond_11
    :goto_6
    move v6, v1

    :goto_7
    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    const v13, 0x7f0a1128

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iget-object v13, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    const v14, 0x7f0a1129

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iget-object v14, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v14, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    if-eq v3, v4, :cond_12

    if-ne v3, v1, :cond_13

    :cond_12
    iget v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconType:I

    if-ne v3, v2, :cond_13

    move v3, v5

    goto :goto_8

    :cond_13
    const/4 v3, 0x0

    :goto_8
    if-nez v1, :cond_18

    if-ne v2, v5, :cond_15

    iget-object v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iget v5, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v11

    move-object/from16 v20, v13

    move-object/from16 v21, v12

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v8

    move/from16 v25, v3

    invoke-virtual/range {v17 .. v25}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_14
    :goto_9
    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_15
    iget-object v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x4

    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v4, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mHandler:Landroid/os/Handler;

    iget-object v7, v4, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, v4, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0713cd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v7

    const/4 v8, 0x0

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/16 v16, 0x0

    aput v7, v14, v16

    aput v8, v14, v5

    const-string v7, "alpha"

    invoke-static {v13, v7, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v14

    new-array v15, v10, [F

    move-object v10, v15

    aput v14, v10, v16

    aput v8, v10, v5

    invoke-static {v12, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v12, v5, [Landroid/animation/Animator;

    aput-object v13, v12, v16

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v12, v5, [Landroid/animation/Animator;

    aput-object v7, v12, v16

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz v3, :cond_16

    const-wide/16 v12, 0x0

    goto :goto_a

    :cond_16
    const-wide/16 v17, 0x32

    move-wide/from16 v12, v17

    :goto_a
    invoke-virtual {v10, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v7

    int-to-float v6, v6

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v7, v12, v13

    aput v6, v12, v5

    const-string/jumbo v6, "x"

    invoke-static {v11, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v3, :cond_17

    const-wide/16 v12, 0x0

    goto :goto_b

    :cond_17
    const-wide/16 v12, 0xc8

    :goto_b
    invoke-virtual {v6, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const/high16 v11, 0x3e800000    # 0.25f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3e6147ae    # 0.22f

    invoke-direct {v7, v13, v11, v8, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v8, v5, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v6, v5, v11

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    if-nez v3, :cond_14

    invoke-virtual {v4, v9}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startVibrationAnimation(Landroid/view/View;)V

    goto/16 :goto_9

    :cond_18
    if-ne v6, v7, :cond_19

    iget-object v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iget v5, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v11

    move-object/from16 v20, v13

    move-object/from16 v21, v12

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v8

    move/from16 v25, v3

    invoke-virtual/range {v17 .. v25}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto/16 :goto_9

    :cond_19
    const/4 v4, 0x2

    if-ne v6, v4, :cond_1a

    iget-object v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iget v5, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v1

    move-object/from16 v20, v11

    move-object/from16 v21, v13

    move-object/from16 v22, v12

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v8

    move/from16 v26, v3

    invoke-virtual/range {v17 .. v26}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto/16 :goto_9

    :cond_1a
    if-ne v6, v5, :cond_14

    iget-object v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iget v5, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v1

    move-object/from16 v20, v11

    move-object/from16 v21, v13

    move-object/from16 v22, v12

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v8

    move/from16 v26, v3

    invoke-virtual/range {v17 .. v26}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto/16 :goto_9

    :goto_c
    iput-boolean v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mShouldUpdateIcon:Z

    iput v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mCurrentMediaIconState:I

    iput v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconType:I

    goto/16 :goto_13

    :cond_1b
    iget v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mCurrentMediaIconState:I

    if-ne v1, v2, :cond_1c

    iget-boolean v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mShouldUpdateIcon:Z

    if-eqz v3, :cond_25

    :cond_1c
    if-eq v2, v4, :cond_1f

    if-ne v1, v2, :cond_1d

    goto :goto_d

    :cond_1d
    sub-int v3, v1, v2

    if-lez v3, :cond_1e

    add-int/lit8 v3, v2, 0x1

    goto :goto_e

    :cond_1e
    add-int/lit8 v3, v2, -0x1

    goto :goto_e

    :cond_1f
    :goto_d
    move v3, v1

    :goto_e
    iget-object v6, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    const v9, 0x7f0a111c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    const v10, 0x7f0a111d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    const v11, 0x7f0a111e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iget-object v11, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    const v12, 0x7f0a111f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    if-eq v2, v4, :cond_21

    if-ne v2, v1, :cond_20

    goto :goto_f

    :cond_20
    const/4 v2, 0x0

    goto :goto_10

    :cond_21
    :goto_f
    move v2, v5

    :goto_10
    if-ne v3, v7, :cond_22

    iget-object v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iget v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    const/16 v22, 0x0

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v21, v10

    move-object/from16 v23, v8

    move-object/from16 v24, v6

    move/from16 v25, v2

    invoke-virtual/range {v17 .. v25}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :goto_11
    const/4 v2, 0x0

    goto :goto_12

    :cond_22
    const/4 v4, 0x2

    if-ne v3, v4, :cond_23

    iget-object v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iget v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    const/16 v23, 0x0

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v1

    move-object/from16 v20, v9

    move-object/from16 v21, v11

    move-object/from16 v22, v10

    move-object/from16 v24, v8

    move-object/from16 v25, v6

    move/from16 v26, v2

    invoke-virtual/range {v17 .. v26}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_11

    :cond_23
    if-ne v3, v5, :cond_24

    iget-object v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iget v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    const/16 v23, 0x0

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v1

    move-object/from16 v20, v9

    move-object/from16 v21, v11

    move-object/from16 v22, v10

    move-object/from16 v24, v8

    move-object/from16 v25, v6

    move/from16 v26, v2

    invoke-virtual/range {v17 .. v26}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_11

    :cond_24
    iget-object v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mSecVolumeIconMotion:Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    iget v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    const/16 v22, 0x0

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v21, v10

    move-object/from16 v23, v8

    move-object/from16 v24, v6

    move/from16 v25, v2

    invoke-virtual/range {v17 .. v25}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_11

    :goto_12
    iput-boolean v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mShouldUpdateIcon:Z

    iput v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mCurrentMediaIconState:I

    :cond_25
    :goto_13
    return-void
.end method

.method public final setDefaultIcon(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->getIconType(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f080df5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    iget v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x7f080df2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    iget v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f080df4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const v0, 0x7f080dfd

    goto :goto_0

    :cond_4
    const v0, 0x7f080e03

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final supportAnimatedIcon()Z
    .locals 2

    iget p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_1

    const/16 v0, 0x65

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final updateIconTintColor(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;->isEarDeviceStatusOn()Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->getIconType(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    const/16 v5, 0x66

    if-eq v4, v5, :cond_1

    const/16 v5, 0x69

    if-ne v4, v5, :cond_2

    :cond_1
    sget v5, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->EAR_PROTECT_LIMIT_LEVEL_FOR_ROUTINE:I

    if-le p1, v5, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mBroadcastMode:I

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    sget p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->EAR_PROTECT_LIMIT_LEVEL_FOR_ROUTINE:I

    if-ne v4, v2, :cond_3

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;->getEarProtectLevel()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->getAudioStream(I)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    iget-object v4, v4, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez p1, :cond_3

    mul-int/lit8 v0, v0, 0x64

    if-ge p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->supportAnimatedIcon()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    sget v4, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->EAR_PROTECT_LIMIT_LEVEL_FOR_ROUTINE:I

    if-ne v0, v2, :cond_5

    if-eq v1, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    const v1, 0x7f0a111d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    const v2, 0x7f0a111e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    const v2, 0x7f0a111f

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final updateLayout(Z)V
    .locals 9

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    invoke-static {v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->getAudioStream(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    iget-object v2, v2, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->isBluetoothLeBroadcastEnabled(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    array-length v5, v2

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v2, v6

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    const/16 v8, 0x1a

    if-ne v7, v8, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    add-int/2addr v6, v0

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    iput v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mBroadcastMode:I

    goto :goto_2

    :cond_2
    iput v4, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mBroadcastMode:I

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->supportAnimatedIcon()Z

    move-result v2

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIsAnimatedType:Z

    if-eq p1, v2, :cond_3

    goto :goto_3

    :cond_3
    move p1, v4

    goto :goto_4

    :cond_4
    :goto_3
    move p1, v0

    :goto_4
    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mShouldUpdateIcon:Z

    const/4 v5, 0x3

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_5
    const/4 p1, 0x0

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    if-ne v2, v5, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f0d0c06

    invoke-virtual {v2, v6, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    goto :goto_5

    :cond_6
    invoke-static {v2}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->isSpeakerType(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f0d0c07

    invoke-virtual {v2, v6, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f0d0c05

    invoke-virtual {v2, v6, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIsAnimatedType:Z

    goto :goto_6

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f0d0c08

    invoke-virtual {v2, v6, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    iput-boolean v4, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIsAnimatedType:Z

    :goto_6
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIcon:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->supportAnimatedIcon()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIsAnimatedType:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->getIconType(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->setAnimatedIcon(II)V

    goto :goto_7

    :cond_a
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->setDefaultIcon(I)V

    :goto_7
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->updateIconTintColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    iget-object p1, p1, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v0, :cond_b

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    iget-object p1, p1, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    if-eq p1, v1, :cond_d

    if-ne p1, v0, :cond_c

    goto :goto_8

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->isMuteAllSoundEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    :goto_8
    move v0, v4

    goto :goto_a

    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    const-string/jumbo v2, "no_adjust_volume"

    invoke-virtual {p1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_8

    :cond_f
    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mBroadcastMode:I

    if-ne p1, v0, :cond_10

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    if-eq p1, v1, :cond_d

    if-ne p1, v0, :cond_11

    goto :goto_9

    :cond_10
    if-ne p1, v3, :cond_11

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    if-eq p1, v5, :cond_d

    const/16 v2, 0xb

    if-eq p1, v2, :cond_d

    if-eq p1, v0, :cond_d

    if-ne p1, v1, :cond_11

    :goto_9
    goto :goto_8

    :cond_11
    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    sget v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->EAR_PROTECT_LIMIT_LEVEL_FOR_ROUTINE:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_12

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->isUseGlobalAlarmVolume(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_8

    :cond_12
    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz v0, :cond_13

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_13
    const p1, 0x3ecccccd    # 0.4f

    :goto_b
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public final updateLayoutForRoutine(II)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    invoke-static {v3}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->getAudioStream(I)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    if-ne v2, v1, :cond_4

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->supportAnimatedIcon()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mIsAnimatedType:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->setAnimatedIcon(II)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->setDefaultIcon(I)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->updateIconTintColor(I)V

    if-eq v2, v0, :cond_7

    const/4 p1, 0x2

    if-eq p2, p1, :cond_7

    iget p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->mStream:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_6

    if-ne p1, v1, :cond_7

    :cond_6
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_3
    return-void
.end method
