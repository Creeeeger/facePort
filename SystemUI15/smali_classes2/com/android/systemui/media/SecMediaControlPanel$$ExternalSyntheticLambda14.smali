.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;

.field public final synthetic f$1:Lcom/android/systemui/media/controls/shared/model/MediaData;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/controls/shared/model/MediaData;IIILjava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$1:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iput p3, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$2:I

    iput p4, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$3:I

    iput p5, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$4:I

    iput-object p6, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$5:Ljava/lang/String;

    iput p7, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$6:I

    iput-boolean p8, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$7:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object v7, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$1:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget v11, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$2:I

    iget v12, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$3:I

    iget v2, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$4:I

    iget-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$5:Ljava/lang/String;

    iget v4, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$6:I

    iget-boolean v5, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$7:Z

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    iget-object v1, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v9

    if-eq v9, v8, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_5

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/monet/ColorScheme;

    sget-object v13, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    invoke-direct {v10, v9, v8, v13}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V

    new-instance v13, Lcom/android/systemui/monet/ColorScheme;

    sget-object v15, Lcom/android/systemui/monet/Style;->VIBRANT:Lcom/android/systemui/monet/Style;

    invoke-direct {v13, v9, v8, v15}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V

    iget-object v9, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    if-gt v9, v11, :cond_3

    if-le v15, v11, :cond_1

    goto :goto_1

    :cond_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-le v9, v15, :cond_2

    sub-int/2addr v9, v15

    div-int/lit8 v9, v9, 0x2

    invoke-static {v0, v6, v9, v15, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    sub-int/2addr v15, v9

    div-int/lit8 v15, v15, 0x2

    invoke-static {v0, v15, v6, v9, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v15, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v0, v11, v12, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v9, v15, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v9

    :cond_3
    :goto_1
    iget-boolean v9, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    if-eqz v9, :cond_4

    iget-object v9, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-nez v9, :cond_4

    iput-boolean v6, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    :cond_4
    iput-object v1, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevBitmap:Landroid/graphics/Bitmap;

    move v6, v8

    move-object v8, v0

    move-object v0, v13

    move-object v13, v10

    move-object v10, v8

    goto :goto_4

    :cond_5
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :try_start_0
    iget-object v0, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    new-instance v15, Lcom/android/systemui/monet/ColorScheme;

    invoke-static {v10}, Landroid/app/WallpaperColors;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;

    move-result-object v0

    sget-object v6, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    invoke-direct {v15, v0, v8, v6}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/android/systemui/monet/ColorScheme;

    invoke-static {v10}, Landroid/app/WallpaperColors;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;

    move-result-object v6

    sget-object v13, Lcom/android/systemui/monet/Style;->VIBRANT:Lcom/android/systemui/monet/Style;

    invoke-direct {v0, v6, v8, v13}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v10

    move-object v13, v15

    :goto_2
    const/4 v6, 0x0

    move-object v10, v9

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Cannot find icon for package "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "MediaControlPanel"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v10

    move-object v13, v15

    const/4 v0, 0x0

    goto :goto_2

    :goto_4
    if-eqz v13, :cond_6

    iget-object v0, v0, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v0}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    move-result v0

    move v9, v0

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    :goto_5
    new-instance v15, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;

    move-object v0, v15

    move-object v1, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;ILjava/lang/String;IZZLcom/android/systemui/media/controls/shared/model/MediaData;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;IILcom/android/systemui/monet/ColorScheme;)V

    iget-object v0, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v0, v15}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
