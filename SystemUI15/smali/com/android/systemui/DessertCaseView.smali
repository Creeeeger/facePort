.class public final Lcom/android/systemui/DessertCaseView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ALPHA_MASK:[F

.field public static final MASK:[F

.field public static final NUM_PASTRIES:I

.field public static final PASTRIES:[I

.field public static final RARE_PASTRIES:[I

.field public static final XRARE_PASTRIES:[I

.field public static final XXRARE_PASTRIES:[I


# instance fields
.field public final hsv:[F

.field public final mCellSize:I

.field public mCells:[Landroid/view/View;

.field public mColumns:I

.field public final mDrawables:Landroid/util/SparseArray;

.field public final mFreeList:Ljava/util/Set;

.field public final mHandler:Landroid/os/Handler;

.field public mHeight:I

.field public final mJuggle:Lcom/android/systemui/DessertCaseView$1;

.field public mRows:I

.field public mStarted:Z

.field public mWidth:I

.field public final tmpSet:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/android/systemui/DessertCaseView;

    const v0, 0x7f08075b

    const v1, 0x7f08074d

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    const v2, 0x7f080753

    const v3, 0x7f08075a

    const v4, 0x7f08075c

    const v5, 0x7f080751

    filled-new-array {v4, v5, v2, v3}, [I

    move-result-object v2

    sput-object v2, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    const v3, 0x7f08074f

    const v4, 0x7f080758

    const v5, 0x7f08075d

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    sput-object v3, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    array-length v0, v0

    array-length v1, v1

    add-int/2addr v0, v1

    array-length v1, v2

    add-int/2addr v0, v1

    array-length v1, v3

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    const/16 v0, 0x14

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/systemui/DessertCaseView;->MASK:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    return-void

    :array_0
    .array-data 4
        0x7f08074e
        0x7f080750
        0x7f080752
        0x7f080754
        0x7f080755
        0x7f080756
        0x7f080757
        0x7f080759
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, v0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/DessertCaseView$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/DessertCaseView$1;-><init>(Lcom/android/systemui/DessertCaseView;)V

    iput-object v2, v0, Lcom/android/systemui/DessertCaseView;->mJuggle:Lcom/android/systemui/DessertCaseView$1;

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    iput-object v3, v0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    const v5, 0x7f070326

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v7, 0x200

    if-ge v5, v7, :cond_0

    const/4 v5, 0x2

    iput v5, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    sget-object v5, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    sget-object v7, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    sget-object v8, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    sget-object v9, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    filled-new-array {v5, v7, v8, v9}, [[I

    move-result-object v5

    const/4 v7, 0x0

    move v8, v4

    :goto_0
    const/4 v9, 0x4

    if-ge v8, v9, :cond_2

    aget-object v9, v5, v8

    array-length v10, v9

    move v11, v4

    :goto_1
    if-ge v11, v10, :cond_1

    aget v12, v9, v11

    iput-object v7, v6, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v12, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Lcom/android/systemui/DessertCaseView;->MASK:[F

    invoke-direct {v4, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v2, 0x0

    invoke-virtual {v14, v7, v2, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-direct {v13, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v4, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    invoke-direct {v1, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v13, v1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget v1, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    const/4 v4, 0x0

    invoke-virtual {v13, v4, v4, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget-object v1, v0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x1

    add-int/2addr v11, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    add-int/2addr v8, v1

    goto :goto_0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method public static getOccupied(Landroid/view/View;)[Landroid/graphics/Point;
    .locals 10

    const v0, 0x2000002

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x2000001

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    mul-int v2, v0, v0

    new-array v2, v2, [Landroid/graphics/Point;

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    move v5, v1

    :goto_1
    if-ge v5, v0, :cond_1

    add-int/lit8 v6, v4, 0x1

    new-instance v7, Landroid/graphics/Point;

    iget v8, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v3

    iget v9, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v5

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v2, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_2
    new-array p0, v1, [Landroid/graphics/Point;

    return-object p0
.end method

.method public static irand(I)I
    .locals 3

    const/4 v0, 0x0

    int-to-float v0, v0

    int-to-float p0, p0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {p0, v0, v1, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized fillFreeList(I)V
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v6, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v4, v6

    add-int/2addr v4, v3

    aget-object v3, v5, v4

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/systemui/DessertCaseView$2;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/DessertCaseView$2;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    const/16 v5, 0xc

    invoke-static {v5}, Lcom/android/systemui/DessertCaseView;->irand(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41f00000    # 30.0f

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3a03126f    # 5.0E-4f

    cmpg-float v5, v4, v5

    const/high16 v7, 0x3f000000    # 0.5f

    if-gez v5, :cond_2

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const/4 v10, 0x3

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_2
    const v5, 0x3ba3d70a    # 0.005f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const/4 v10, 0x4

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    cmpg-float v5, v4, v7

    if-gez v5, :cond_4

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const/16 v10, 0x8

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_4
    const v5, 0x3f333333    # 0.7f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const/4 v10, 0x2

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3, v2, v6}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    if-lez p1, :cond_0

    const v2, 0x2000002

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v7, v2

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_7
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final declared-synchronized onSizeChanged(IIII)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget p3, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p3, p2, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :try_start_1
    iget-boolean p3, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    iput-boolean p4, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Lcom/android/systemui/DessertCaseView$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput p1, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iput p2, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    iget-object p1, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget p1, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    iget p2, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    iget v0, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    div-int/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr p1, v0

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    const/high16 p1, 0x3e800000    # 0.25f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget p2, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iget v0, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v0, v1

    sub-int/2addr p2, v0

    int-to-float p2, p2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget p2, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    mul-int/2addr v1, v2

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr p2, v0

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    move p1, p4

    :goto_0
    iget p2, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    if-ge p1, p2, :cond_3

    move p2, p4

    :goto_1
    iget v0, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized place(Landroid/view/View;Landroid/graphics/Point;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    double-to-float v7, v7

    const v8, 0x2000001

    invoke-virtual {v0, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v9

    array-length v11, v9

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v13, v9, v12

    iget-object v14, v1, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    check-cast v14, Ljava/util/HashSet;

    invoke-virtual {v14, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v14, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v15, v13, Landroid/graphics/Point;->y:I

    iget v3, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v15, v3

    iget v3, v13, Landroid/graphics/Point;->x:I

    add-int/2addr v15, v3

    aput-object v10, v14, v15

    add-int/2addr v12, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v3, v7, v3

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-gez v3, :cond_1

    iget v3, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    sub-int/2addr v3, v11

    if-ge v5, v3, :cond_3

    iget v3, v1, Lcom/android/systemui/DessertCaseView;->mRows:I

    sub-int/2addr v3, v11

    if-ge v6, v3, :cond_3

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v3, v7, v3

    if-gez v3, :cond_2

    iget v3, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    sub-int/2addr v3, v12

    if-ge v5, v3, :cond_3

    iget v3, v1, Lcom/android/systemui/DessertCaseView;->mRows:I

    sub-int/2addr v3, v12

    if-ge v6, v3, :cond_3

    move v3, v11

    goto :goto_1

    :cond_2
    const v3, 0x3ea8f5c3    # 0.33f

    cmpg-float v3, v7, v3

    if-gez v3, :cond_3

    iget v3, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    sub-int/2addr v3, v4

    if-eq v5, v3, :cond_3

    iget v3, v1, Lcom/android/systemui/DessertCaseView;->mRows:I

    sub-int/2addr v3, v4

    if-eq v6, v3, :cond_3

    move v3, v12

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v0, v8, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v7, 0x2000002

    invoke-virtual {v0, v7, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v2

    array-length v7, v2

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v7, :cond_5

    aget-object v14, v2, v13

    iget-object v15, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v11, v14, Landroid/graphics/Point;->y:I

    iget v12, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v11, v12

    iget v12, v14, Landroid/graphics/Point;->x:I

    add-int/2addr v11, v12

    aget-object v11, v15, v11

    if-eqz v11, :cond_4

    iget-object v12, v1, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/2addr v13, v4

    const/4 v11, 0x3

    const/4 v12, 0x2

    goto :goto_2

    :cond_5
    iget-object v7, v1, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-static {v11}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v14

    array-length v15, v14

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v15, :cond_6

    aget-object v12, v14, v9

    iget-object v13, v1, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    check-cast v13, Ljava/util/HashSet;

    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v13, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v8, v12, Landroid/graphics/Point;->y:I

    iget v4, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v8, v4

    iget v4, v12, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v4

    aput-object v10, v13, v8

    const/4 v4, 0x1

    add-int/2addr v9, v4

    const v8, 0x2000001

    goto :goto_4

    :cond_6
    if-eq v11, v0, :cond_8

    const v4, 0x2000001

    invoke-virtual {v11, v4, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p3, :cond_7

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v12, 0x1f4

    invoke-virtual {v8, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/DessertCaseView$4;

    invoke-direct {v9, v1, v11}, Lcom/android/systemui/DessertCaseView$4;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    :cond_7
    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_5

    :cond_8
    const v4, 0x2000001

    :goto_5
    move v8, v4

    const/4 v4, 0x1

    goto :goto_3

    :cond_9
    array-length v4, v2

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v4, :cond_a

    aget-object v8, v2, v7

    iget-object v9, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v10, v8, Landroid/graphics/Point;->y:I

    iget v11, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v10, v11

    iget v11, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v11

    aput-object v0, v9, v10

    iget-object v9, v1, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    check-cast v9, Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto :goto_6

    :cond_a
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/systemui/DessertCaseView;->irand(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42b40000    # 90.0f

    mul-float/2addr v2, v4

    if-eqz p3, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->bringToFront()V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x2

    new-array v8, v7, [Landroid/animation/Animator;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    int-to-float v9, v3

    const/4 v10, 0x1

    new-array v11, v10, [F

    const/4 v12, 0x0

    aput v9, v11, v12

    invoke-static {v0, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v8, v12

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v10, [F

    aput v9, v11, v12

    invoke-static {v0, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v8, v10

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v7, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {v4, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    sget-object v9, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v11, v10, [F

    const/4 v10, 0x0

    aput v2, v11, v10

    invoke-static {v0, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v8, v10

    sget-object v2, Landroid/view/View;->X:Landroid/util/Property;

    iget v9, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v5, v9

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    mul-int/2addr v9, v3

    const/4 v11, 0x2

    div-int/2addr v9, v11

    add-int/2addr v5, v9

    int-to-float v5, v5

    new-array v9, v10, [F

    const/4 v11, 0x0

    aput v5, v9, v11

    invoke-static {v0, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v8, v10

    sget-object v2, Landroid/view/View;->Y:Landroid/util/Property;

    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v6, v5

    mul-int/2addr v3, v5

    const/4 v5, 0x2

    div-int/2addr v3, v5

    add-int/2addr v6, v3

    int-to-float v3, v6

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v9, 0x0

    aput v3, v6, v9

    invoke-static {v0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v8, v5

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v7, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/DessertCaseView$3;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/DessertCaseView$3;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_7

    :cond_b
    iget v4, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v5, v4

    const/4 v7, 0x1

    add-int/lit8 v7, v3, -0x1

    mul-int/2addr v4, v7

    const/4 v8, 0x2

    div-int/2addr v4, v8

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    iget v4, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    mul-int/2addr v6, v4

    mul-int/2addr v7, v4

    div-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v4, v6

    invoke-virtual {v0, v4}, Landroid/view/View;->setY(F)V

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_7
    monitor-exit p0

    return-void

    :goto_8
    monitor-exit p0

    throw v0
.end method

.method public final start()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Lcom/android/systemui/DessertCaseView$1;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
