.class public final synthetic Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;Landroid/graphics/Bitmap;II)V
    .locals 0

    iput p4, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

    iput-object p2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

    iget-object v2, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    iget v0, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$2:I

    move-object/from16 v3, p1

    check-cast v3, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    sget v4, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->start:I

    iget v3, v3, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->length:I

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->nativeSetHighLightFilter(Landroid/graphics/Bitmap;III)V

    return-void

    :pswitch_0
    iget-object v5, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

    iget-object v6, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    iget v9, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$2:I

    move-object/from16 v0, p1

    check-cast v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    sget v1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->$r8$clinit:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->start:I

    iget v8, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->length:I

    const/4 v10, 0x2

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->nativeStackBlur(Landroid/graphics/Bitmap;IIII)V

    return-void

    :pswitch_1
    iget-object v11, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

    iget-object v12, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    iget v15, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;->f$2:I

    move-object/from16 v0, p1

    check-cast v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    sget v1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->$r8$clinit:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v13, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->start:I

    iget v14, v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->length:I

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->nativeStackBlur(Landroid/graphics/Bitmap;IIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
