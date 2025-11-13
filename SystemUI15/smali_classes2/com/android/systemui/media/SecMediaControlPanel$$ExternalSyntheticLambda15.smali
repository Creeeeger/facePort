.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:Lcom/android/systemui/monet/ColorScheme;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lcom/android/systemui/media/controls/shared/model/MediaData;

.field public final synthetic f$7:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$8:I

.field public final synthetic f$9:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;ILjava/lang/String;IZZLcom/android/systemui/media/controls/shared/model/MediaData;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;IILcom/android/systemui/monet/ColorScheme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iput p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$3:I

    iput-boolean p5, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$4:Z

    iput-boolean p6, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$5:Z

    iput-object p7, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$6:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iput-object p8, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$7:Landroid/graphics/drawable/Drawable;

    iput p9, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$8:I

    iput-object p10, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$9:Landroid/graphics/drawable/Drawable;

    iput p11, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$10:I

    iput p12, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$11:I

    iput-object p13, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$12:Lcom/android/systemui/monet/ColorScheme;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget v3, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$1:I

    iget-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iget v5, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$3:I

    iget-boolean v6, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$4:Z

    iget-boolean v7, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$5:Z

    iget-object v8, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$6:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v9, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$7:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$8:I

    iget-object v11, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$9:Landroid/graphics/drawable/Drawable;

    iget v12, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$10:I

    iget v13, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$11:I

    iget-object v0, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;->f$12:Lcom/android/systemui/monet/ColorScheme;

    iget v14, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mArtworkBoundId:I

    if-ge v3, v14, :cond_0

    invoke-static {v4, v5}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    goto/16 :goto_10

    :cond_0
    iput v3, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mArtworkBoundId:I

    iget-object v3, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v3, v3, Lcom/android/systemui/media/SecPlayerViewHolder;->albumView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v15, 0x0

    invoke-virtual {v3, v15, v15, v15, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    if-nez v6, :cond_3

    iget-boolean v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    if-nez v6, :cond_2

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v21, v0

    move-object/from16 v17, v4

    move/from16 v18, v5

    move v5, v15

    goto/16 :goto_d

    :cond_3
    :goto_1
    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    if-eqz v6, :cond_a

    iget-object v14, v8, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    iget-object v1, v8, Lcom/android/systemui/media/controls/shared/model/MediaData;->clickIntent:Landroid/app/PendingIntent;

    iget-object v15, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    move-object/from16 v17, v4

    iget-object v4, v6, Lcom/android/systemui/media/CoverMusicCapsuleController;->bundle:Landroid/os/Bundle;

    move/from16 v18, v5

    const-string v5, "capsule_action_pkg"

    invoke-virtual {v4, v5, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "capsule_action"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v9, :cond_7

    iget-object v1, v6, Lcom/android/systemui/media/CoverMusicCapsuleController;->capsule:Landroid/widget/RemoteViews;

    instance-of v4, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_4

    move-object v4, v9

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    const/16 v5, 0x28

    if-nez v4, :cond_6

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v14}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    move-object/from16 v20, v4

    invoke-virtual {v14}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    move-object/from16 v21, v0

    const/4 v0, 0x0

    invoke-virtual {v9, v0, v0, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v4, v20

    goto :goto_4

    :cond_6
    move-object/from16 v21, v0

    :goto_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v5, 0x28

    invoke-static {v5, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v9, 0x1

    invoke-static {v4, v5, v5, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move/from16 v19, v7

    const/4 v7, 0x0

    invoke-direct {v5, v7, v7, v14, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v14, -0xbdbdbe

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v14, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/16 v16, 0x2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v22, v12

    div-int/lit8 v12, v20, 0x2

    int-to-float v12, v12

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v23, v13

    div-int/lit8 v13, v20, 0x2

    int-to-float v13, v13

    invoke-virtual {v14, v7, v12, v13, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v14, v4, v5, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const v4, 0x7f0a0aac

    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_7
    move-object/from16 v21, v0

    move/from16 v19, v7

    move/from16 v22, v12

    move/from16 v23, v13

    :goto_5
    iget-object v0, v6, Lcom/android/systemui/media/CoverMusicCapsuleController;->bundle:Landroid/os/Bundle;

    const-string v1, "bg_startColor"

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {v10, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v4, 0x0

    aget v5, v1, v4

    const/high16 v7, 0x43160000    # 150.0f

    cmpg-float v7, v5, v7

    if-gez v7, :cond_8

    const/high16 v7, 0x42200000    # 40.0f

    add-float/2addr v5, v7

    goto :goto_6

    :cond_8
    const/high16 v7, 0x42700000    # 60.0f

    sub-float/2addr v5, v7

    :goto_6
    aput v5, v1, v4

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    const-string v4, "bg_endColor"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v15, :cond_9

    invoke-virtual {v15}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v6, v0}, Lcom/android/systemui/media/CoverMusicCapsuleController;->updateEqualizerState(Landroid/media/session/PlaybackState;)V

    goto :goto_8

    :cond_a
    move-object/from16 v21, v0

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v7

    move/from16 v22, v12

    move/from16 v23, v13

    :goto_8
    iget-object v0, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportOAChip()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mOAMusicChipController:Lcom/android/systemui/media/OAMusicChipController;

    if-eqz v0, :cond_d

    iget-object v0, v8, Lcom/android/systemui/media/controls/shared/model/MediaData;->song:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_b
    const-string v0, ""

    :goto_9
    iget-object v1, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mOAMusicChipController:Lcom/android/systemui/media/OAMusicChipController;

    iget-object v4, v8, Lcom/android/systemui/media/controls/shared/model/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    iget-object v5, v8, Lcom/android/systemui/media/controls/shared/model/MediaData;->clickIntent:Landroid/app/PendingIntent;

    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    iput-object v4, v1, Lcom/android/systemui/media/OAMusicChipController;->appIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, v1, Lcom/android/systemui/media/OAMusicChipController;->songTitle:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/media/OAMusicChipController;->bgColor:Ljava/lang/Integer;

    iput-object v5, v1, Lcom/android/systemui/media/OAMusicChipController;->clickIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v14

    goto :goto_a

    :cond_c
    const/4 v14, 0x0

    :goto_a
    invoke-virtual {v1, v14}, Lcom/android/systemui/media/OAMusicChipController;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_d
    iget-object v0, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_e

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    goto :goto_c

    :cond_e
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v4, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const/4 v4, 0x1

    aput-object v11, v1, v4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move/from16 v1, v22

    move/from16 v6, v23

    invoke-static {v0, v5, v1, v6}, Lcom/android/systemui/media/SecMediaControlPanel;->scaleTransitionDrawableLayer(Landroid/graphics/drawable/TransitionDrawable;III)V

    invoke-static {v0, v4, v1, v6}, Lcom/android/systemui/media/SecMediaControlPanel;->scaleTransitionDrawableLayer(Landroid/graphics/drawable/TransitionDrawable;III)V

    const/16 v1, 0x11

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/TransitionDrawable;->setLayerGravity(II)V

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/TransitionDrawable;->setLayerGravity(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v19, :cond_f

    const/16 v1, 0x14d

    goto :goto_b

    :cond_f
    const/16 v1, 0x50

    :goto_b
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_c
    iput-object v11, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v19

    iput-boolean v0, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    :goto_d
    iget-object v0, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    iget-boolean v1, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->isGradientEnabled:Z

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->colorTransitions:[Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    array-length v1, v0

    move v15, v5

    :goto_e
    if-ge v15, v1, :cond_12

    aget-object v2, v0, v15

    if-nez v21, :cond_10

    iget v3, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->defaultColor:I

    move-object/from16 v4, v21

    goto :goto_f

    :cond_10
    iget-object v3, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->extractColor:Lkotlin/jvm/functions/Function1;

    move-object/from16 v4, v21

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    :goto_f
    iget v5, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->targetColor:I

    if-eq v3, v5, :cond_11

    iget v5, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->currentColor:I

    iput v5, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->sourceColor:I

    iput v3, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->targetColor:I

    iget-object v3, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_11
    const/4 v2, 0x1

    add-int/2addr v15, v2

    move-object/from16 v21, v4

    goto :goto_e

    :cond_12
    move-object/from16 v3, v17

    move/from16 v5, v18

    invoke-static {v3, v5}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :goto_10
    return-void
.end method
