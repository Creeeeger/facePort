.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bundle:[Landroid/os/Parcelable;

.field public final car:Landroid/graphics/Bitmap;

.field public final context:Landroid/content/Context;

.field public final paint:Landroid/graphics/Paint;

.field public final progress:F

.field public final progressColor:I

.field public final segments:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/os/Parcelable;FLandroid/graphics/drawable/Icon;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->bundle:[Landroid/os/Parcelable;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->progress:F

    iput p5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->progressColor:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->segments:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f070c46

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c47

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const p3, 0x7f080fae

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p4}, Lcom/android/systemui/biometrics/Utils;->toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-nez p4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->car:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->car:Landroid/graphics/Bitmap;

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->car:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p3, 0x1

    invoke-static {p1, p2, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->car:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->bundle:[Landroid/os/Parcelable;

    array-length p2, p1

    sub-int/2addr p2, p3

    if-ltz p2, :cond_4

    const/4 p3, 0x0

    :goto_2
    const-string p4, "android.ongoingActivityNoti.progressSegments.segmentColor"

    const-string p5, "android.ongoingActivityNoti.progressSegments.segmentStart"

    if-ge p3, p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->segments:Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;

    aget-object v2, p1, p3

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p4

    add-int/lit8 v2, p3, 0x1

    aget-object v2, p1, v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2, p5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    aget-object v3, p1, p3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3, p5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p5

    sub-float/2addr v2, p5

    invoke-direct {v1, p4, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;-><init>(IF)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->segments:Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;

    aget-object v2, p1, p3

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p4

    aget-object v2, p1, p3

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2, p5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p5

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p5

    invoke-direct {v1, p4, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;-><init>(IF)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    if-eq p3, p2, :cond_4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public final makeImage()Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c47

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->getOngoingCardWidth(Landroid/content/Context;)I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c45

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070c3c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c41

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v4, v12, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v14, 0x2

    div-int/2addr v3, v14

    int-to-float v3, v3

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->segments:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v15, v5, -0x1

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->segments:Ljava/util/List;

    if-eqz v5, :cond_1

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;

    if-eqz v5, :cond_1

    int-to-float v6, v2

    iget v7, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->width:F

    mul-float v8, v6, v7

    sub-float v8, v6, v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v7, v7, v9

    if-nez v7, :cond_0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    int-to-float v8, v14

    div-float/2addr v7, v8

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->color:I

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    int-to-float v8, v14

    div-float/2addr v5, v8

    sub-float v8, v6, v5

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    move-object v5, v11

    move v6, v7

    move v7, v3

    move v9, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->segments:Ljava/util/List;

    if-eqz v5, :cond_5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v5, 0x0

    move/from16 v18, v12

    move v12, v5

    move/from16 v5, v18

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;

    if-eq v12, v15, :cond_2

    int-to-float v7, v2

    iget v8, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->width:F

    mul-float/2addr v7, v8

    if-nez v12, :cond_3

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_2

    :cond_3
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :goto_2
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator$TintedProgressSegment;->color:I

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    if-nez v12, :cond_4

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    int-to-float v8, v14

    div-float/2addr v6, v8

    goto :goto_3

    :cond_4
    move v6, v5

    :goto_3
    add-float v17, v5, v7

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    move-object v5, v11

    move v7, v3

    move/from16 v8, v17

    move v9, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v17

    goto :goto_1

    :cond_5
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->progressColor:I

    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->context:Landroid/content/Context;

    const v7, 0x7f060534

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    :cond_6
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    int-to-float v12, v2

    iget v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->progress:F

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    mul-float v15, v5, v12

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    int-to-float v10, v14

    div-float v6, v5, v10

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    move-object v5, v11

    move v7, v3

    move v8, v15

    move-object/from16 v16, v9

    move v9, v3

    move/from16 v17, v10

    move-object/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->car:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v5, v14

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    cmpg-float v6, v15, v5

    if-gez v6, :cond_7

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float v1, v1, v17

    goto :goto_4

    :cond_7
    add-float v6, v15, v5

    cmpl-float v6, v6, v12

    if-ltz v6, :cond_8

    sub-int/2addr v2, v1

    int-to-float v1, v2

    goto :goto_4

    :cond_8
    sub-float v1, v15, v5

    :goto_4
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->car:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v0, v1, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v4
.end method
