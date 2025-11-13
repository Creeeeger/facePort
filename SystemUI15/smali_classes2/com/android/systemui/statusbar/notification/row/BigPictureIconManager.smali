.class public final Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/widget/NotificationIconManager;
.implements Landroid/util/Dumpable;


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final context:Landroid/content/Context;

.field public displayedState:Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState;

.field public drawableConsumer:Lcom/android/internal/widget/NotificationDrawableConsumer;

.field public final imageLoader:Lcom/android/systemui/graphics/ImageLoader;

.field public final lastLoadingJob:Lkotlinx/coroutines/Job;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final maxHeight:I

.field public final maxWidth:I

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final statsManager:Lcom/android/systemui/statusbar/notification/row/BigPictureStatsManager;

.field public final viewShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/graphics/ImageLoader;Lcom/android/systemui/statusbar/notification/row/BigPictureStatsManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->imageLoader:Lcom/android/systemui/graphics/ImageLoader;

    sget-object p2, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$Initial;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$Initial;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->displayedState:Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x10502e4

    goto :goto_0

    :cond_0
    const p3, 0x10502e3

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->maxWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x10502e2

    goto :goto_1

    :cond_1
    const p2, 0x10502e1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->maxHeight:I

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->displayedState:Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->drawableConsumer:Lcom/android/internal/widget/NotificationDrawableConsumer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->viewShown:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{ state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", hasConsumer:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", viewShown:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "}"

    invoke-static {v1, p0, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "BigPictureIconManager "

    invoke-static {p1, p2, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadImageSync(Landroid/graphics/drawable/Icon;)Lkotlin/Pair;
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->imageLoader:Lcom/android/systemui/graphics/ImageLoader;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->context:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->maxWidth:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->maxHeight:I

    sget-object v4, Lcom/android/systemui/graphics/ImageLoader;->Companion:Lcom/android/systemui/graphics/ImageLoader$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    sget-object v4, Lcom/android/systemui/graphics/ImageLoader;->Companion:Lcom/android/systemui/graphics/ImageLoader$Companion;

    const-string v5, "Failed to load drawable for "

    const-string v6, "ImageLoader"

    const/4 v7, 0x0

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v0, v7

    goto/16 :goto_4

    :pswitch_0
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v7, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    invoke-static {v0, v2, v3, v8}, Lcom/android/systemui/graphics/ImageLoader;->loadDrawableSync(Landroid/graphics/ImageDecoder$Source;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v5

    invoke-static {v0, v1, v5}, Landroid/graphics/ImageDecoder;->createSource([BII)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    invoke-static {v0, v2, v3, v8}, Lcom/android/systemui/graphics/ImageLoader;->loadDrawableSync(Landroid/graphics/ImageDecoder$Source;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v9, 0x2

    if-eq v0, v9, :cond_1

    :goto_1
    move-object v0, v7

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :goto_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string v9, "android"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x2400

    :try_start_0
    invoke-virtual {v9, v0, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v9, "Failed to resolve resource package"

    invoke-static {v6, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v9

    invoke-static {v0, v9}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    invoke-static {v0, v2, v3, v8}, Lcom/android/systemui/graphics/ImageLoader;->loadDrawableSync(Landroid/graphics/ImageDecoder$Source;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_6
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->hasTint()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_5

    :cond_9
    move-object v0, v7

    :cond_a
    :goto_5
    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->displayedState:Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState;

    instance-of v1, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$PlaceHolder;

    if-eqz v1, :cond_c

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$PlaceHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$PlaceHolder;->drawableSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    new-instance v2, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-ne v1, v3, :cond_b

    if-eq p0, v2, :cond_c

    :cond_b
    const-string v4, "Mismatch in dimensions, when replacing PlaceHolder "

    const-string v5, " X "

    const-string v6, " with Drawable "

    invoke-static {v1, p0, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BigPicImageLoader"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance v7, Lkotlin/Pair;

    new-instance p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$FullImage;

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$FullImage;-><init>(Landroid/graphics/drawable/Icon;Landroid/util/Size;)V

    invoke-direct {v7, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final updateIcon(Lcom/android/internal/widget/NotificationDrawableConsumer;Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->drawableConsumer:Lcom/android/internal/widget/NotificationDrawableConsumer;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->lastLoadingJob:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    if-nez p2, :cond_1

    goto/16 :goto_b

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->viewShown:Z

    if-nez p1, :cond_11

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    goto :goto_4

    :cond_6
    :goto_2
    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_a

    goto/16 :goto_a

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->imageLoader:Lcom/android/systemui/graphics/ImageLoader;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_b

    const/4 v2, 0x6

    if-eq p1, v2, :cond_b

    :goto_5
    move-object p1, v0

    goto :goto_6

    :cond_b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->decodeHeader(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder$ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load source "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ImageLoader"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :goto_6
    if-eqz p1, :cond_10

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->maxWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->maxHeight:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-gt v2, v0, :cond_c

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-gt v2, v1, :cond_c

    goto :goto_9

    :cond_c
    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v0, :cond_d

    move v0, v2

    goto :goto_7

    :cond_d
    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    :goto_7
    if-gtz v1, :cond_e

    move v1, v2

    goto :goto_8

    :cond_e
    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    :goto_8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpg-float v1, v0, v2

    if-gez v1, :cond_f

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    move-object p1, v0

    :cond_f
    :goto_9
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/PlaceHolderDrawable;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/PlaceHolderDrawable;-><init>(II)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$PlaceHolder;

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/PlaceHolderDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/PlaceHolderDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$PlaceHolder;-><init>(Landroid/graphics/drawable/Icon;Landroid/util/Size;)V

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :cond_10
    if-nez v0, :cond_12

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->loadImageSync(Landroid/graphics/drawable/Icon;)Lkotlin/Pair;

    move-result-object p1

    move-object v0, p1

    goto :goto_b

    :cond_11
    :goto_a
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->loadImageSync(Landroid/graphics/drawable/Icon;)Lkotlin/Pair;

    move-result-object v0

    :cond_12
    :goto_b
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$updateIcon$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$updateIcon$1;-><init>(Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;Lkotlin/Pair;)V

    return-object p1
.end method
