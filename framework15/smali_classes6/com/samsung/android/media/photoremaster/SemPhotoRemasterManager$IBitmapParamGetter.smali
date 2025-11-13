.class Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IBitmapParamGetter;
.super Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;
.source "SemPhotoRemasterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IBitmapParamGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;-><init>(I)V

    return-void
.end method


# virtual methods
.method blacklist getParam()Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->-$$Nest$smgetEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IBitmapParamGetter;->mID:I

    invoke-interface {v0, v1}, Lcom/samsung/android/photoremaster/IDirector;->getBitmapParam(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getParam()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IBitmapParamGetter;->getParam()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
