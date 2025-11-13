.class public Lcom/android/internal/widget/CachingIconView;
.super Landroid/widget/ImageView;
.source "CachingIconView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mBackgroundColor:I

.field private greylist-max-o mDesiredVisibility:I

.field private greylist-max-o mForceHidden:Z

.field private blacklist mIconColor:I

.field private greylist-max-o mInternalSetDrawable:Z

.field private greylist-max-o mLastPackage:Ljava/lang/String;

.field private greylist-max-o mLastResId:I

.field private blacklist mMaxDrawableHeight:I

.field private blacklist mMaxDrawableWidth:I

.field private blacklist mOnForceHiddenChangedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnVisibilityChangedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWillBeForceHidden:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$Ztd9O2w0AViVlIvaAGHSKALk_EA(Lcom/android/internal/widget/CachingIconView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->lambda$setImageIconAsync$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nIUDJ4tpCUTYD80581FMH4zYS5o(Lcom/android/internal/widget/CachingIconView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->lambda$setImageResourceAsync$1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wFzJ4um9KSK-7Tt7aubguEeLHkU(Lcom/android/internal/widget/CachingIconView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->lambda$setImageURIAsync$2(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    iput v0, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/CachingIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private blacklist init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/R$styleable;->CachingIconView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private synthetic blacklist lambda$setImageIconAsync$0(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic blacklist lambda$setImageResourceAsync$1(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic blacklist lambda$setImageURIAsync$2(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private blacklist loadSizeRestrictedDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(ILandroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist loadSizeRestrictedUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o normalizeIconPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/CachingIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method private declared-synchronized greylist-max-o resetCache()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized greylist-max-o testAndSetCache(I)Z
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o testAndSetCache(Landroid/graphics/drawable/Icon;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->normalizeIconPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private greylist-max-o updateVisibility()V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mDesiredVisibility:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mDesiredVisibility:I

    :goto_0
    nop

    iget-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mOnVisibilityChangedListener:Ljava/util/function/Consumer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mOnVisibilityChangedListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public blacklist getMaxDrawableHeight()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    return v0
.end method

.method public blacklist getMaxDrawableWidth()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    return v0
.end method

.method public blacklist getOriginalIconColor()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mIconColor:I

    return v0
.end method

.method public blacklist isForceHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    return v0
.end method

.method blacklist loadSizeRestrictedIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    return-void
.end method

.method public whitelist setBackgroundColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mBackgroundColor:I

    return-void
.end method

.method public greylist-max-o setForceHidden(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mWillBeForceHidden:Z

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->updateVisibility()V

    iget-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mOnForceHiddenChangedListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mOnForceHiddenChangedListener:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist setGrayedOut(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mIconColor:I

    invoke-static {v1, v0, p1, v2}, Lcom/android/internal/widget/ColoredIconHelper;->applyGrayTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZI)V

    return-void
.end method

.method public whitelist setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public whitelist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public whitelist setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->testAndSetCache(Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    :cond_1
    return-void
.end method

.method public greylist-max-o setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/CachingIconView;Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setImageResource(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageResourceAsync"
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->testAndSetCache(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    :cond_1
    return-void
.end method

.method public greylist-max-o setImageResourceAsync(I)Ljava/lang/Runnable;
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CachingIconView;Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResourceAsync(I)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setImageURI(Landroid/net/Uri;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    :goto_0
    return-void
.end method

.method public greylist-max-o setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/CachingIconView;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public blacklist setMaxDrawableHeight(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    return-void
.end method

.method public blacklist setMaxDrawableWidth(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    return-void
.end method

.method public blacklist setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/CachingIconView;->mOnForceHiddenChangedListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public blacklist setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/CachingIconView;->mOnVisibilityChangedListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public blacklist setOriginalIconColor(I)V
    .locals 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mIconColor:I

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mDesiredVisibility:I

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->updateVisibility()V

    return-void
.end method

.method public blacklist setWillBeForceHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/CachingIconView;->mWillBeForceHidden:Z

    return-void
.end method

.method public blacklist updateColorizedIconTint(Z)V
    .locals 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/CachingIconView;->mIconColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/CachingIconView;->mBackgroundColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public blacklist willBeForceHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mWillBeForceHidden:Z

    return v0
.end method
