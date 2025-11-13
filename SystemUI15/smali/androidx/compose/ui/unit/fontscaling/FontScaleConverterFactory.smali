.class public final Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CommonFontSizes:[F

.field public static final INSTANCE:Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;

.field public static final LookupTablesWriteLock:[Ljava/lang/Object;

.field public static volatile sLookupTables:Landroidx/collection/SparseArrayCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;

    invoke-direct {v0}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;-><init>()V

    sput-object v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->INSTANCE:Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;

    const/high16 v0, 0x42c80000    # 100.0f

    const/16 v1, 0x9

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    sput-object v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->CommonFontSizes:[F

    new-instance v2, Landroidx/collection/SparseArrayCompat;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    new-array v2, v5, [Ljava/lang/Object;

    sput-object v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->LookupTablesWriteLock:[Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    new-instance v4, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    new-array v7, v1, [F

    fill-array-data v7, :array_2

    invoke-direct {v4, v6, v7}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    const/high16 v6, 0x42e60000    # 115.0f

    float-to-int v6, v6

    invoke-virtual {v3, v6, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    sget-object v3, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    new-instance v4, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    new-array v6, v1, [F

    fill-array-data v6, :array_3

    new-array v7, v1, [F

    fill-array-data v7, :array_4

    invoke-direct {v4, v6, v7}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    const/high16 v6, 0x43020000    # 130.0f

    float-to-int v6, v6

    invoke-virtual {v3, v6, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    sget-object v3, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    new-instance v4, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    new-array v6, v1, [F

    fill-array-data v6, :array_5

    new-array v7, v1, [F

    fill-array-data v7, :array_6

    invoke-direct {v4, v6, v7}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    const/high16 v6, 0x43160000    # 150.0f

    float-to-int v6, v6

    invoke-virtual {v3, v6, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    sget-object v3, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    new-instance v4, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    new-array v6, v1, [F

    fill-array-data v6, :array_7

    new-array v7, v1, [F

    fill-array-data v7, :array_8

    invoke-direct {v4, v6, v7}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    const/high16 v6, 0x43340000    # 180.0f

    float-to-int v6, v6

    invoke-virtual {v3, v6, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    sget-object v3, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    new-instance v4, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    new-array v6, v1, [F

    fill-array-data v6, :array_9

    new-array v1, v1, [F

    fill-array-data v1, :array_a

    invoke-direct {v4, v6, v1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    const/high16 v1, 0x43480000    # 200.0f

    float-to-int v1, v1

    invoke-virtual {v3, v1, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    sget-object v1, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v5}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    const v0, 0x3c23d70a    # 0.01f

    sub-float/2addr v1, v0

    const v0, 0x3f83d70a    # 1.03f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "You should only apply non-linear scaling to font scales > 1"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_1
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_2
    .array-data 4
        0x41133333    # 9.2f
        0x41380000    # 11.5f
        0x415ccccd    # 13.8f
        0x41833333    # 16.4f
        0x419e6666    # 19.8f
        0x41ae6666    # 21.8f
        0x41c9999a    # 25.2f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_3
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_4
    .array-data 4
        0x41266666    # 10.4f
        0x41500000    # 13.0f
        0x4179999a    # 15.6f
        0x41966666    # 18.8f
        0x41accccd    # 21.6f
        0x41bccccd    # 23.6f
        0x41d33333    # 26.4f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_5
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_6
    .array-data 4
        0x41400000    # 12.0f
        0x41700000    # 15.0f
        0x41900000    # 18.0f
        0x41b00000    # 22.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41e00000    # 28.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_7
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_8
    .array-data 4
        0x41666666    # 14.4f
        0x41900000    # 18.0f
        0x41accccd    # 21.6f
        0x41c33333    # 24.4f
        0x41dccccd    # 27.6f
        0x41f66666    # 30.8f
        0x42033333    # 32.8f
        0x420b3333    # 34.8f
        0x42c80000    # 100.0f
    .end array-data

    :array_9
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_a
    .array-data 4
        0x41800000    # 16.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41f00000    # 30.0f
        0x42080000    # 34.0f
        0x42100000    # 36.0f
        0x42180000    # 38.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forScale(F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x3f83d70a    # 1.03f

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_7

    sget-object v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->INSTANCE:Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, p0, v3

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    sget-object v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    iget-boolean v5, v2, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v5, :cond_1

    invoke-static {v2}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    :cond_1
    iget-object v5, v2, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v2, v2, Landroidx/collection/SparseArrayCompat;->size:I

    invoke-static {v2, v4, v5}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    move-result v2

    if-ltz v2, :cond_2

    sget-object p0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    return-object p0

    :cond_2
    add-int/2addr v2, v1

    neg-int v2, v2

    add-int/lit8 v4, v2, -0x1

    sget-object v5, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v5}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-lt v2, v5, :cond_3

    new-instance v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    new-array v3, v1, [F

    aput v6, v3, v0

    new-array v1, v1, [F

    aput p0, v1, v0

    invoke-direct {v2, v3, v1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    invoke-static {p0, v2}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->put(FLandroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;)V

    goto :goto_3

    :cond_3
    if-gez v4, :cond_4

    new-instance v4, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    sget-object v5, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->CommonFontSizes:[F

    invoke-direct {v4, v5, v5}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    move v5, v6

    goto :goto_0

    :cond_4
    sget-object v5, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v5, v4}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    sget-object v7, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v7, v4}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    :goto_0
    sget-object v7, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v7, v2}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    sget-object v3, Landroidx/compose/ui/unit/fontscaling/MathUtils;->INSTANCE:Landroidx/compose/ui/unit/fontscaling/MathUtils;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmpg-float v3, v5, v7

    const/4 v8, 0x0

    if-nez v3, :cond_5

    move v3, v8

    goto :goto_1

    :cond_5
    sub-float v3, p0, v5

    sub-float/2addr v7, v5

    div-float/2addr v3, v7

    :goto_1
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v8

    sget-object v5, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v5, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    sget-object v5, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->CommonFontSizes:[F

    array-length v6, v5

    new-array v6, v6, [F

    array-length v7, v5

    :goto_2
    if-ge v0, v7, :cond_6

    aget v8, v5, v0

    invoke-interface {v4, v8}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;->convertSpToDp(F)F

    move-result v9

    invoke-interface {v2, v8}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;->convertSpToDp(F)F

    move-result v8

    sget-object v10, Landroidx/compose/ui/unit/fontscaling/MathUtils;->INSTANCE:Landroidx/compose/ui/unit/fontscaling/MathUtils;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    add-float/2addr v8, v9

    aput v8, v6, v0

    add-int/2addr v0, v1

    goto :goto_2

    :cond_6
    new-instance v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    invoke-direct {v2, v5, v6}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    invoke-static {p0, v2}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->put(FLandroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;)V

    :goto_3
    return-object v2

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static put(FLandroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;)V
    .locals 3

    sget-object v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->LookupTablesWriteLock:[Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->INSTANCE:Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p0, v2

    float-to-int p0, p0

    invoke-virtual {v1, p0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    sput-object v1, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
