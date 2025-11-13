.class public final synthetic Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

.field public final synthetic f$1:Lcom/android/systemui/media/controls/shared/model/MediaData;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Lcom/android/systemui/media/controls/shared/model/MediaData;IIILjava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$1:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iput p3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$2:I

    iput p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$3:I

    iput p5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$4:I

    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$5:Ljava/lang/String;

    iput p7, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$6:I

    iput-boolean p8, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$7:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v12, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-object v11, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$1:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget v9, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$2:I

    iget v10, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$3:I

    iget v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$4:I

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$5:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$6:I

    iget-boolean v6, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;->f$7:Z

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v11, Lcom/android/systemui/media/controls/shared/model/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    iget-object v0, v11, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v12, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->getWallpaperColor(Landroid/graphics/drawable/Icon;)Landroid/app/WallpaperColors;

    move-result-object v1

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/systemui/monet/ColorScheme;

    sget-object v7, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    invoke-direct {v0, v1, v5, v7}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V

    invoke-virtual {v12, p0, v0, v9, v10}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->addGradientToPlayerAlbum(Landroid/graphics/drawable/Icon;Lcom/android/systemui/monet/ColorScheme;II)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    move-object v8, p0

    move v7, v5

    move-object v5, v0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :try_start_0
    iget-object v7, v12, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/monet/ColorScheme;

    invoke-static {v7}, Landroid/app/WallpaperColors;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;

    move-result-object v7

    sget-object v13, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    invoke-direct {v8, v7, v5, v13}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v1

    move-object v5, v8

    move-object v8, p0

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Cannot find icon for package "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "MediaControlPanel"

    invoke-static {v7, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    move-object v8, p0

    move-object v5, v0

    move v7, v1

    :goto_0
    new-instance p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;

    move-object v0, p0

    move-object v1, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;ILjava/lang/String;ILcom/android/systemui/monet/ColorScheme;ZZLandroid/graphics/drawable/Drawable;IILcom/android/systemui/media/controls/shared/model/MediaData;)V

    iget-object v0, v12, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
