.class public final synthetic Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;Landroid/graphics/Bitmap;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

    iput-object p2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda3;->f$2:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda3;->f$2:[I

    check-cast p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    sget v2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->start:I

    iget p1, p1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->length:I

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->nativeSetGaussianNoise(Landroid/graphics/Bitmap;II[I)V

    return-void
.end method
