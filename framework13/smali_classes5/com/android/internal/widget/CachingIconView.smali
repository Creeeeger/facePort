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
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    .line 62
    iput v0, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/CachingIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    return-void
.end method

.method private blacklist init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 86
    if-nez p2, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/android/internal/R$styleable;->CachingIconView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void
.end method

.method private blacklist loadSizeRestrictedDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resId"    # I

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(ILandroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist loadSizeRestrictedIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist loadSizeRestrictedUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 180
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
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 259
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 260
    return-object v0

    .line 263
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    return-object v0

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/CachingIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    return-object v0

    .line 270
    :cond_2
    return-object v1
.end method

.method private declared-synchronized greylist-max-o resetCache()V
    .locals 1

    monitor-enter p0

    .line 274
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 273
    .end local p0    # "this":Lcom/android/internal/widget/CachingIconView;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized greylist-max-o testAndSetCache(I)Z
    .locals 2
    .param p1, "resId"    # I

    monitor-enter p0

    .line 243
    if-eqz p1, :cond_2

    :try_start_0
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/android/internal/widget/CachingIconView;
    :cond_1
    const/4 v0, 0x0

    .local v0, "isCached":Z
    :goto_0
    goto :goto_2

    .line 242
    .end local v0    # "isCached":Z
    .end local p1    # "resId":I
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 244
    .restart local p1    # "resId":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 248
    .restart local v0    # "isCached":Z
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    .line 249
    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return v0

    .line 242
    .end local v0    # "isCached":Z
    .end local p1    # "resId":I
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o testAndSetCache(Landroid/graphics/drawable/Icon;)Z
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    monitor-enter p0

    .line 221
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 222
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->normalizeIconPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "iconPackage":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    .line 226
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/android/internal/widget/CachingIconView;
    :cond_0
    nop

    .line 228
    .local v0, "isCached":Z
    :goto_0
    iput-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return v0

    .line 233
    .end local v0    # "isCached":Z
    .end local v1    # "iconPackage":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    monitor-exit p0

    return v0

    .line 220
    .end local p1    # "icon":Landroid/graphics/drawable/Icon;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private greylist-max-o updateVisibility()V
    .locals 3

    .line 302
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mDesiredVisibility:I

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 303
    :cond_0
    nop

    :goto_0
    nop

    .line 304
    .local v0, "visibility":I
    iget-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mOnVisibilityChangedListener:Ljava/util/function/Consumer;

    if-eqz v1, :cond_1

    .line 305
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 307
    :cond_1
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    return-void
.end method


# virtual methods
.method public blacklist getMaxDrawableHeight()I
    .locals 1

    .line 425
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    return v0
.end method

.method public blacklist getMaxDrawableWidth()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    return v0
.end method

.method public blacklist getOriginalIconColor()I
    .locals 1

    .line 395
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mIconColor:I

    return v0
.end method

.method public blacklist isForceHidden()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    return v0
.end method

.method synthetic blacklist lambda$setImageIconAsync$0$com-android-internal-widget-CachingIconView(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic blacklist lambda$setImageResourceAsync$1$com-android-internal-widget-CachingIconView(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic blacklist lambda$setImageURIAsync$2$com-android-internal-widget-CachingIconView(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 213
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 215
    return-void
.end method

.method public whitelist setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 329
    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mBackgroundColor:I

    .line 330
    return-void
.end method

.method public greylist-max-o setForceHidden(Z)V
    .locals 2
    .param p1, "forceHidden"    # Z

    .line 284
    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    if-eq p1, v0, :cond_0

    .line 285
    iput-boolean p1, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mWillBeForceHidden:Z

    .line 287
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->updateVisibility()V

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mOnForceHiddenChangedListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 289
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 292
    :cond_0
    return-void
.end method

.method public blacklist setGrayedOut(Z)V
    .locals 3
    .param p1, "grayedOut"    # Z

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 388
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mIconColor:I

    invoke-static {v1, v0, p1, v2}, Lcom/android/internal/widget/ColoredIconHelper;->applyGrayTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZI)V

    .line 392
    return-void
.end method

.method public whitelist setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 208
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    return-void
.end method

.method public whitelist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 197
    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 201
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    return-void
.end method

.method public whitelist setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->testAndSetCache(Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 107
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    .line 113
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public greylist-max-o setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 123
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 124
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/CachingIconView;Landroid/graphics/drawable/Drawable;)V

    return-object v1

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageResourceAsync"
    .end annotation

    .line 134
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->testAndSetCache(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 139
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    .line 145
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public greylist-max-o setImageResourceAsync(I)Ljava/lang/Runnable;
    .locals 2
    .param p1, "resId"    # I

    .line 155
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 156
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CachingIconView;Landroid/graphics/drawable/Drawable;)V

    return-object v1

    .line 161
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResourceAsync(I)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setImageURI(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    .line 167
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 168
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 169
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 170
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 172
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    .line 173
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    .line 176
    :goto_0
    return-void
.end method

.method public greylist-max-o setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 186
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 187
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 188
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 189
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    .line 191
    :cond_0
    new-instance v1, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/CachingIconView;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public blacklist setMaxDrawableHeight(I)V
    .locals 0
    .param p1, "maxDrawableHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 436
    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    .line 437
    return-void
.end method

.method public blacklist setMaxDrawableWidth(I)V
    .locals 0
    .param p1, "maxDrawableWidth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 431
    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    .line 432
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

    .line 315
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/internal/widget/CachingIconView;->mOnForceHiddenChangedListener:Ljava/util/function/Consumer;

    .line 316
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

    .line 311
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/internal/widget/CachingIconView;->mOnVisibilityChangedListener:Ljava/util/function/Consumer;

    .line 312
    return-void
.end method

.method public blacklist setOriginalIconColor(I)V
    .locals 5
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 339
    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mIconColor:I

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 341
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 342
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 343
    .local v2, "hasColor":Z
    :goto_0
    if-nez v0, :cond_1

    .line 345
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 346
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 363
    :cond_1
    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 297
    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mDesiredVisibility:I

    .line 298
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->updateVisibility()V

    .line 299
    return-void
.end method

.method public blacklist setWillBeForceHidden(Z)V
    .locals 0
    .param p1, "forceHidden"    # Z

    .line 411
    iput-boolean p1, p0, Lcom/android/internal/widget/CachingIconView;->mWillBeForceHidden:Z

    .line 412
    return-void
.end method

.method public blacklist updateColorizedIconTint(Z)V
    .locals 5
    .param p1, "colorized"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 368
    if-eqz p1, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 370
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 371
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/CachingIconView;->mIconColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 374
    :cond_0
    if-eqz v1, :cond_1

    .line 375
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/CachingIconView;->mBackgroundColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 378
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public blacklist willBeForceHidden()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mWillBeForceHidden:Z

    return v0
.end method
