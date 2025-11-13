.class public Landroid/view/RoundedCorners;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist CACHE_LOCK:Ljava/lang/Object;

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RoundedCorners;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

.field public static final blacklist ROUNDED_CORNER_POSITION_LENGTH:I = 0x4

.field private static blacklist sCachedDisplayHeight:I

.field private static blacklist sCachedDisplayWidth:I

.field private static blacklist sCachedPhysicalPixelDisplaySizeRatio:F

.field private static blacklist sCachedRadii:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCachedRoundedCorners:Landroid/view/RoundedCorners;


# instance fields
.field public final blacklist mRoundedCorners:[Landroid/view/RoundedCorner;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    new-instance v0, Landroid/view/RoundedCorners;

    new-instance v1, Landroid/view/RoundedCorner;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/RoundedCorner;-><init>(I)V

    new-instance v2, Landroid/view/RoundedCorner;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/RoundedCorner;-><init>(I)V

    new-instance v3, Landroid/view/RoundedCorner;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/view/RoundedCorner;-><init>(I)V

    new-instance v4, Landroid/view/RoundedCorner;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/view/RoundedCorner;-><init>(I)V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/RoundedCorners;-><init>(Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;)V

    sput-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/RoundedCorners;->CACHE_LOCK:Ljava/lang/Object;

    new-instance v0, Landroid/view/RoundedCorners$1;

    invoke-direct {v0}, Landroid/view/RoundedCorners$1;-><init>()V

    sput-object v0, Landroid/view/RoundedCorners;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/RoundedCorner;

    iput-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    const/4 v1, 0x3

    aput-object p4, v0, v1

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/RoundedCorners;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/RoundedCorner;

    iput-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    new-instance v3, Landroid/view/RoundedCorner;

    iget-object v4, p1, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Landroid/view/RoundedCorner;-><init>(Landroid/view/RoundedCorner;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>([Landroid/view/RoundedCorner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    return-void
.end method

.method private static blacklist createRoundedCorner(IIII)Landroid/view/RoundedCorner;
    .locals 4

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The position is not one of the RoundedCornerPosition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v1, Landroid/view/RoundedCorner;

    if-lez p1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-lez p1, :cond_1

    sub-int v0, p3, p1

    :cond_1
    const/4 v3, 0x3

    invoke-direct {v1, v3, p1, v2, v0}, Landroid/view/RoundedCorner;-><init>(IIII)V

    return-object v1

    :pswitch_1
    new-instance v1, Landroid/view/RoundedCorner;

    if-lez p1, :cond_2

    sub-int v2, p2, p1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-lez p1, :cond_3

    sub-int v0, p3, p1

    :cond_3
    const/4 v3, 0x2

    invoke-direct {v1, v3, p1, v2, v0}, Landroid/view/RoundedCorner;-><init>(IIII)V

    return-object v1

    :pswitch_2
    new-instance v1, Landroid/view/RoundedCorner;

    if-lez p1, :cond_4

    sub-int v2, p2, p1

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    if-lez p1, :cond_5

    move v0, p1

    :cond_5
    const/4 v3, 0x1

    invoke-direct {v1, v3, p1, v2, v0}, Landroid/view/RoundedCorner;-><init>(IIII)V

    return-object v1

    :pswitch_3
    new-instance v1, Landroid/view/RoundedCorner;

    if-lez p1, :cond_6

    move v2, p1

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    if-lez p1, :cond_7

    move v3, p1

    goto :goto_4

    :cond_7
    move v3, v0

    :goto_4
    invoke-direct {v1, v0, p1, v2, v3}, Landroid/view/RoundedCorner;-><init>(IIII)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist fromCustomResources(Landroid/content/res/Resources;Ljava/lang/String;IIIILandroid/util/DisplayMetrics;Z)Landroid/view/RoundedCorners;
    .locals 1

    invoke-static {p0, p1, p6, p7}, Landroid/view/RoundedCorners;->loadCustomRoundedCornerRadii(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/DisplayMetrics;Z)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/view/RoundedCorners;->fromRadii(Landroid/util/Pair;IIII)Landroid/view/RoundedCorners;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromRadii(Landroid/util/Pair;II)Landroid/view/RoundedCorners;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)",
            "Landroid/view/RoundedCorners;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p1, p2}, Landroid/view/RoundedCorners;->fromRadii(Landroid/util/Pair;IIII)Landroid/view/RoundedCorners;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist fromRadii(Landroid/util/Pair;IIII)Landroid/view/RoundedCorners;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIII)",
            "Landroid/view/RoundedCorners;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result v0

    sget-object v1, Landroid/view/RoundedCorners;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/view/RoundedCorners;->sCachedRadii:Landroid/util/Pair;

    invoke-virtual {p0, v2}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/view/RoundedCorners;->sCachedDisplayWidth:I

    if-ne v2, p3, :cond_1

    sget v2, Landroid/view/RoundedCorners;->sCachedDisplayHeight:I

    if-ne v2, p4, :cond_1

    sget v2, Landroid/view/RoundedCorners;->sCachedPhysicalPixelDisplaySizeRatio:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_1

    sget-object v2, Landroid/view/RoundedCorners;->sCachedRoundedCorners:Landroid/view/RoundedCorners;

    monitor-exit v1

    return-object v2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x4

    new-array v2, v1, [Landroid/view/RoundedCorner;

    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_2

    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    iget-object v5, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v4, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_5

    nop

    const/4 v6, 0x1

    if-gt v5, v6, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    invoke-static {v5, v6, p3, p4}, Landroid/view/RoundedCorners;->createRoundedCorner(IIII)Landroid/view/RoundedCorner;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    new-instance v1, Landroid/view/RoundedCorners;

    invoke-direct {v1, v2}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    move-object v5, v1

    sget-object v6, Landroid/view/RoundedCorners;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    sput p3, Landroid/view/RoundedCorners;->sCachedDisplayWidth:I

    sput p4, Landroid/view/RoundedCorners;->sCachedDisplayHeight:I

    sput-object p0, Landroid/view/RoundedCorners;->sCachedRadii:Landroid/util/Pair;

    sput-object v5, Landroid/view/RoundedCorners;->sCachedRoundedCorners:Landroid/view/RoundedCorners;

    sput v0, Landroid/view/RoundedCorners;->sCachedPhysicalPixelDisplaySizeRatio:F

    monitor-exit v6

    return-object v5

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public static blacklist fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/RoundedCorners;
    .locals 1

    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->loadRoundedCornerRadii(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/view/RoundedCorners;->fromRadii(Landroid/util/Pair;IIII)Landroid/view/RoundedCorners;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getBuiltInDisplayIsRound(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x10700ae

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x11101dc

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method public static blacklist getCustomRoundedCornerRadius(ILandroid/content/res/Resources;Ljava/lang/String;Landroid/util/DisplayMetrics;)I
    .locals 3

    invoke-static {p1, p2}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x107014c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-ltz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {p1, p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private static blacklist getRotatedIndex(II)I
    .locals 1

    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static blacklist getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3

    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x107014a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x105039a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method public static blacklist getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 4

    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x107014c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x1050398

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v3, 0x2

    :cond_1
    return v2
.end method

.method public static blacklist getRoundedCornerRadiusAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3

    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x107014b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x1050399

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method public static blacklist getRoundedCornerRadiusBottomAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3

    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x1070149

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x105039b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method public static blacklist getRoundedCornerRadiusTopAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3

    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x107014d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x105039f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method public static blacklist getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3

    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x107014e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x105039e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method private blacklist insetRoundedCorner(IIIIIIII)Landroid/view/RoundedCorner;
    .locals 4

    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/RoundedCorner;

    invoke-direct {v0, p1}, Landroid/view/RoundedCorner;-><init>(I)V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The position is not one of the RoundedCornerPosition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-le p2, p8, :cond_1

    if-le p2, p5, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    goto :goto_4

    :pswitch_1
    if-le p2, p8, :cond_2

    if-le p2, p7, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    goto :goto_4

    :pswitch_2
    if-le p2, p6, :cond_3

    if-le p2, p7, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    goto :goto_4

    :pswitch_3
    if-le p2, p6, :cond_4

    if-le p2, p5, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    nop

    :goto_4
    new-instance v2, Landroid/view/RoundedCorner;

    if-eqz v0, :cond_5

    sub-int v3, p3, p5

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    if-eqz v0, :cond_6

    sub-int v1, p4, p6

    :cond_6
    invoke-direct {v2, p1, p2, v3, v1}, Landroid/view/RoundedCorner;-><init>(IIII)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist loadCustomRoundedCornerRadii(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/DisplayMetrics;Z)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Landroid/util/DisplayMetrics;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v0, 0x1050398

    invoke-static {v0, p0, p1, p2}, Landroid/view/RoundedCorners;->getCustomRoundedCornerRadius(ILandroid/content/res/Resources;Ljava/lang/String;Landroid/util/DisplayMetrics;)I

    move-result v0

    const v1, 0x105039e

    invoke-static {v1, p0, p1, p2}, Landroid/view/RoundedCorners;->getCustomRoundedCornerRadius(ILandroid/content/res/Resources;Ljava/lang/String;Landroid/util/DisplayMetrics;)I

    move-result v1

    const v2, 0x105039a

    invoke-static {v2, p0, p1, p2}, Landroid/view/RoundedCorners;->getCustomRoundedCornerRadius(ILandroid/content/res/Resources;Ljava/lang/String;Landroid/util/DisplayMetrics;)I

    move-result v2

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    new-instance v3, Landroid/util/Pair;

    if-lez v1, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-lez v2, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private static blacklist loadRoundedCornerRadii(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v2

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    new-instance v3, Landroid/util/Pair;

    if-lez v1, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-lez v2, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Landroid/view/RoundedCorners;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/RoundedCorners;

    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    iget-object v2, v0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllRoundedCorners()[Landroid/view/RoundedCorner;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/RoundedCorner;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Landroid/view/RoundedCorner;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Landroid/view/RoundedCorner;-><init>(Landroid/view/RoundedCorner;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public blacklist getRoundedCorner(I)Landroid/view/RoundedCorner;
    .locals 2

    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/RoundedCorner;

    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Landroid/view/RoundedCorner;-><init>(Landroid/view/RoundedCorner;)V

    :goto_0
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {v4}, Landroid/view/RoundedCorner;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public blacklist inset(IIII)Landroid/view/RoundedCorners;
    .locals 13

    move-object v9, p0

    const/4 v10, 0x4

    new-array v11, v10, [Landroid/view/RoundedCorner;

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v10, :cond_0

    iget-object v0, v9, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v2

    iget-object v0, v9, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, v9, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v0

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object v0, p0

    move v1, v12

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/RoundedCorners;->insetRoundedCorner(IIIIIIII)Landroid/view/RoundedCorner;

    move-result-object v0

    aput-object v0, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/RoundedCorners;

    invoke-direct {v0, v11}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object v0
.end method

.method public blacklist insetWithFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/RoundedCorners;
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    iget v0, v10, Landroid/graphics/Rect;->left:I

    iget v1, v11, Landroid/graphics/Rect;->left:I

    sub-int v12, v0, v1

    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v1, v11, Landroid/graphics/Rect;->top:I

    sub-int v13, v0, v1

    iget v0, v11, Landroid/graphics/Rect;->right:I

    iget v1, v10, Landroid/graphics/Rect;->right:I

    sub-int v14, v0, v1

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v0, v1

    const/4 v8, 0x4

    new-array v7, v8, [Landroid/view/RoundedCorner;

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_1

    iget-object v0, v9, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/RoundedCorner;

    invoke-direct {v0, v6}, Landroid/view/RoundedCorner;-><init>(I)V

    aput-object v0, v7, v6

    move v9, v6

    move-object v10, v7

    move/from16 v19, v8

    goto/16 :goto_2

    :cond_0
    iget-object v0, v9, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v16

    packed-switch v6, :pswitch_data_0

    move v9, v6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The position is not one of the RoundedCornerPosition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move/from16 v0, v16

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, v1, v16

    move/from16 v17, v0

    move/from16 v18, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, v0, v16

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, v1, v16

    move/from16 v17, v0

    move/from16 v18, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, v0, v16

    move/from16 v1, v16

    move/from16 v17, v0

    move/from16 v18, v1

    goto :goto_1

    :pswitch_3
    move/from16 v0, v16

    move/from16 v1, v16

    move/from16 v17, v0

    move/from16 v18, v1

    :goto_1
    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move v5, v12

    move v9, v6

    move v6, v13

    move-object v10, v7

    move v7, v14

    move/from16 v19, v8

    move v8, v15

    invoke-direct/range {v0 .. v8}, Landroid/view/RoundedCorners;->insetRoundedCorner(IIIIIIII)Landroid/view/RoundedCorner;

    move-result-object v0

    aput-object v0, v10, v9

    :goto_2
    add-int/lit8 v6, v9, 0x1

    move-object/from16 v9, p0

    move-object v7, v10

    move/from16 v8, v19

    move-object/from16 v10, p1

    goto/16 :goto_0

    :cond_1
    move-object v10, v7

    new-instance v0, Landroid/view/RoundedCorners;

    invoke-direct {v0, v10}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist rotate(III)Landroid/view/RoundedCorners;
    .locals 7

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/RoundedCorner;

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    invoke-static {v2, p1}, Landroid/view/RoundedCorners;->getRotatedIndex(II)I

    move-result v3

    iget-object v4, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v4

    if-eqz v0, :cond_3

    move v5, p3

    goto :goto_2

    :cond_3
    move v5, p2

    :goto_2
    if-eqz v0, :cond_4

    move v6, p2

    goto :goto_3

    :cond_4
    move v6, p3

    :goto_3
    invoke-static {v3, v4, v5, v6}, Landroid/view/RoundedCorners;->createRoundedCorner(IIII)Landroid/view/RoundedCorner;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance v2, Landroid/view/RoundedCorners;

    invoke-direct {v2, v1}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object v2
.end method

.method public blacklist scale(F)Landroid/view/RoundedCorners;
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/RoundedCorner;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v3, v3, v2

    new-instance v4, Landroid/view/RoundedCorner;

    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    float-to-int v6, v6

    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    invoke-direct {v4, v2, v5, v6, v7}, Landroid/view/RoundedCorner;-><init>(IIII)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/RoundedCorners;

    invoke-direct {v0, v1}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object v0
.end method

.method public blacklist setRoundedCorner(ILandroid/view/RoundedCorner;)V
    .locals 2

    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    if-nez p2, :cond_0

    new-instance v1, Landroid/view/RoundedCorner;

    invoke-direct {v1, p1}, Landroid/view/RoundedCorner;-><init>(I)V

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    aput-object v1, v0, p1

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedCorners{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    invoke-virtual {p0, v0}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    :goto_0
    return-void
.end method
