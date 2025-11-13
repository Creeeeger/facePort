.class public Lcom/android/settings/widget/VideoPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mAnimationAvailable:Z

.field mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

.field public final mAnimationId:I

.field public mAspectRatio:F

.field public final mContext:Landroid/content/Context;

.field public final mHeight:I

.field public mPlayButton:Landroid/widget/ImageView;

.field public final mPreviewId:I

.field public mPreviewImage:Landroid/widget/ImageView;

.field public final mVectorAnimationId:I

.field public mVideo:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    iget p2, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    if-nez p2, :cond_0

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    iput p2, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    iget p2, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewId:I

    const/4 v0, 0x1

    if-nez p2, :cond_1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    :cond_1
    iput p2, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewId:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/VideoPreference;->mVectorAnimationId:I

    iget v2, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewId:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreference;->initAnimationController()V

    iget-object p2, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/android/settings/widget/VideoPreference$AnimationController;->getDuration()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    const p2, 0x7f0d0c00

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreference;->updateAspectRatio()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "VideoPreference"

    const-string p2, "Animation resource not found. Will not show animation."

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public final initAnimationController()V
    .locals 5

    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mVectorAnimationId:I

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/widget/VectorAnimationController;

    iget-object v2, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    new-instance v0, Lcom/android/settings/widget/VectorAnimationController$1;

    invoke-direct {v0, v1}, Lcom/android/settings/widget/VectorAnimationController$1;-><init>(Lcom/android/settings/widget/VectorAnimationController;)V

    iput-object v0, v1, Lcom/android/settings/widget/VectorAnimationController;->mAnimationCallback:Lcom/android/settings/widget/VectorAnimationController$1;

    iput-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/settings/widget/MediaAnimationController;

    iget-object v2, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "android.resource"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, v1, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/settings/widget/MediaAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/settings/widget/MediaAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/MediaAnimationController;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, v1, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/settings/widget/MediaAnimationController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_1
    iput-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewImage:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/widget/VideoPreference;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/settings/widget/MediaAnimationController;->attachView(Landroid/view/TextureView;Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a10fe

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideo:Landroid/view/TextureView;

    const v0, 0x7f0a10fd

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewImage:Landroid/widget/ImageView;

    const v0, 0x7f0a10fc

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mPlayButton:Landroid/widget/ImageView;

    const v0, 0x7f0a10fa

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideo:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewImage:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/widget/VideoPreference;->mPlayButton:Landroid/widget/ImageView;

    invoke-interface {p1, v0, v1, p0}, Lcom/android/settings/widget/VideoPreference$AnimationController;->attachView(Landroid/view/TextureView;Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final onDetached()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreference;->releaseAnimationController()V

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public final releaseAnimationController()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/settings/widget/VideoPreference$AnimationController;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    :cond_0
    return-void
.end method

.method public updateAspectRatio()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    invoke-interface {v0}, Lcom/android/settings/widget/VideoPreference$AnimationController;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    invoke-interface {v1}, Lcom/android/settings/widget/VideoPreference$AnimationController;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    return-void
.end method
