.class public final synthetic Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

.field public final synthetic f$1:I

.field public final synthetic f$10:Lcom/android/systemui/media/controls/shared/model/MediaData;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/systemui/monet/ColorScheme;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z

.field public final synthetic f$7:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;ILjava/lang/String;ILcom/android/systemui/monet/ColorScheme;ZZLandroid/graphics/drawable/Drawable;IILcom/android/systemui/media/controls/shared/model/MediaData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iput p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$4:Lcom/android/systemui/monet/ColorScheme;

    iput-boolean p6, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$5:Z

    iput-boolean p7, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$6:Z

    iput-object p8, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$7:Landroid/graphics/drawable/Drawable;

    iput p9, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$8:I

    iput p10, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$9:I

    iput-object p11, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$10:Lcom/android/systemui/media/controls/shared/model/MediaData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$1:I

    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$2:Ljava/lang/String;

    iget v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$3:I

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$4:Lcom/android/systemui/monet/ColorScheme;

    iget-boolean v6, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$5:Z

    iget-boolean v7, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$6:Z

    iget-object v8, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$7:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$8:I

    iget v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$9:I

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;->f$10:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget v11, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mArtworkBoundId:I

    if-ge v2, v11, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_0
    iput v2, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mArtworkBoundId:I

    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v11, v2, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->colorTransitions:[Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    array-length v12, v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v14, v12, :cond_6

    aget-object v13, v11, v14

    if-nez v5, :cond_1

    move-object/from16 v16, v11

    iget v11, v13, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;->defaultColor:I

    :goto_1
    move/from16 v17, v12

    goto :goto_2

    :cond_1
    move-object/from16 v16, v11

    iget-object v11, v13, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;->extractColor:Lkotlin/jvm/functions/Function1;

    invoke-interface {v11, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    goto :goto_1

    :goto_2
    iget v12, v13, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;->targetColor:I

    const/16 v18, 0x1

    if-eq v11, v12, :cond_2

    iget v12, v13, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;->currentColor:I

    iput v12, v13, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;->sourceColor:I

    iput v11, v13, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;->targetColor:I

    iget-object v11, v13, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v11, v13, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    move/from16 v11, v18

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    :goto_3
    iget-object v12, v2, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->colorSeamless:Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    if-nez v11, :cond_4

    if-eqz v15, :cond_3

    goto :goto_4

    :cond_3
    const/4 v15, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    move/from16 v15, v18

    :cond_5
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, v16

    move/from16 v12, v17

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    iput-object v5, v2, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->colorScheme:Lcom/android/systemui/monet/ColorScheme;

    :cond_7
    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    if-nez v6, :cond_8

    if-nez v15, :cond_8

    iget-boolean v6, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsArtworkBound:Z

    if-nez v6, :cond_b

    if-eqz v7, :cond_b

    :cond_8
    iget-object v6, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_9

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_9
    new-instance v6, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v11, 0x2

    new-array v11, v11, [Landroid/graphics/drawable/Drawable;

    iget-object v12, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    aput-object v12, v11, v5

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-direct {v6, v11}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v6, v5, v9, v10}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->scaleTransitionDrawableLayer(Landroid/graphics/drawable/TransitionDrawable;III)V

    invoke-static {v6, v12, v9, v10}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->scaleTransitionDrawableLayer(Landroid/graphics/drawable/TransitionDrawable;III)V

    const/16 v9, 0x11

    invoke-virtual {v6, v5, v9}, Landroid/graphics/drawable/TransitionDrawable;->setLayerGravity(II)V

    invoke-virtual {v6, v12, v9}, Landroid/graphics/drawable/TransitionDrawable;->setLayerGravity(II)V

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_a

    const/16 v2, 0x14d

    goto :goto_6

    :cond_a
    const/16 v2, 0x50

    :goto_6
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_7
    iput-object v8, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    iput-boolean v7, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsArtworkBound:Z

    :cond_b
    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v5, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    iget-object v6, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-boolean v0, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumption:Z

    if-nez v0, :cond_c

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->accentPrimary:Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    iget v0, v0, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;->targetColor:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_8

    :cond_c
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Cannot find icon for package "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "MediaControlPanel"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f080a5c

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_8
    invoke-static {v3, v4}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :goto_9
    return-void
.end method
