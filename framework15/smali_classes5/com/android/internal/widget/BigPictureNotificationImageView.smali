.class public Lcom/android/internal/widget/BigPictureNotificationImageView;
.super Landroid/widget/ImageView;
.source "BigPictureNotificationImageView.java"

# interfaces
.implements Lcom/android/internal/widget/NotificationDrawableConsumer;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mIconManager:Lcom/android/internal/widget/NotificationIconManager;

.field private final blacklist mMaximumDrawableHeight:I

.field private final blacklist mMaximumDrawableWidth:I


# direct methods
.method public static synthetic blacklist $r8$lambda$9D-x-0XYX8QSYzCNvwGzHUxg1m8(Lcom/android/internal/widget/BigPictureNotificationImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->lambda$setImageURIAsync$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v1_dWjmdF0BNqawVnDiFf6Jxn6A(Lcom/android/internal/widget/BigPictureNotificationImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->lambda$setImageIconAsync$1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/widget/BigPictureNotificationImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/BigPictureNotificationImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/BigPictureNotificationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    const v2, 0x10502e4

    goto :goto_0

    :cond_0
    const v2, 0x10502e3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    const v2, 0x10502e2

    goto :goto_1

    :cond_1
    const v2, 0x10502e1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableHeight:I

    return-void
.end method

.method private synthetic blacklist lambda$setImageIconAsync$1(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic blacklist lambda$setImageURIAsync$0(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private blacklist loadImage(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableWidth:I

    iget v3, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableHeight:I

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    sget-object v2, Lcom/android/internal/widget/BigPictureNotificationImageView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load drawable for icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist setIconManager(Lcom/android/internal/widget/NotificationIconManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mIconManager:Lcom/android/internal/widget/NotificationIconManager;

    return-void
.end method

.method public whitelist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/widget/flags/Flags;->bigPictureStyleDiscardEmptyIconBitmapDrawables()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/widget/BigPictureNotificationImageView;->TAG:Ljava/lang/String;

    const-string v2, "discarding BitmapDrawable with null Bitmap (invalid image file?)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/internal/widget/BigPictureNotificationImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setting BitmapDrawable with null Bitmap (invalid image file?)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public whitelist setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mIconManager:Lcom/android/internal/widget/NotificationIconManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mIconManager:Lcom/android/internal/widget/NotificationIconManager;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/NotificationIconManager;->updateIcon(Lcom/android/internal/widget/NotificationDrawableConsumer;Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public blacklist setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mIconManager:Lcom/android/internal/widget/NotificationIconManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mIconManager:Lcom/android/internal/widget/NotificationIconManager;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/NotificationIconManager;->updateIcon(Lcom/android/internal/widget/NotificationDrawableConsumer;Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/BigPictureNotificationImageView;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setImageURI(Landroid/net/Uri;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public blacklist setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/BigPictureNotificationImageView;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method
