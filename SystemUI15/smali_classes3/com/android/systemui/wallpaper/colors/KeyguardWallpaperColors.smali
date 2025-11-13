.class public final Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG_FLAG_NAMES:[Ljava/lang/String;

.field public static final NUM_SEPARATED_AREA:I

.field public static final UPDATE_FLAGS:[J

.field public static final UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

.field public static final UPDATE_FLAGS_SHADOW:[J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSelectedUserId:I

.field public final mSemWallpaperColors:Landroid/util/SparseArray;

.field public final mSemWallpaperColorsCover:Landroid/util/SparseArray;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x6

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    new-array v2, v0, [J

    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

    const-string v6, "NAVIBAR "

    const-string v7, "BACKGROUND "

    const-string v2, "STATUSBAR "

    const-string v3, "BODY_TOP "

    const-string v4, "BODY_MID "

    const-string v5, "BODY_BOTTOM "

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->DEBUG_FLAG_NAMES:[Ljava/lang/String;

    array-length v0, v1

    sput v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    return-void

    :array_0
    .array-data 8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
    .end array-data

    :array_1
    .array-data 8
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
    .end array-data

    :array_2
    .array-data 8
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsCover:Landroid/util/SparseArray;

    iput p3, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSelectedUserId:I

    iput-object p2, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method public static getChangeFlagsString(J)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "THEME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, "| "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x400

    and-long/2addr v5, p0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    const-string v2, "COLOR_THEME "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x2

    and-long/2addr v5, p0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    const-string v2, "ADAPTIVE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    const/4 v6, 0x6

    if-ge v5, v6, :cond_4

    sget-object v6, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    aget-wide v6, v6, v5

    and-long/2addr v6, p0

    cmp-long v6, v6, v3

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->DEBUG_FLAG_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-ge v2, v6, :cond_6

    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    aget-wide v7, v1, v2

    and-long/2addr v7, p0

    cmp-long v1, v7, v3

    if-eqz v1, :cond_5

    const-string p0, "SHADOW "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkBaseUpdates(Landroid/app/SemWallpaperColors;)J
    .locals 5

    new-instance v0, Lcom/android/systemui/wallpaper/colors/ColorData;

    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/systemui/wallpaper/colors/ColorData;-><init>(Landroid/app/SemWallpaperColors;ZZZ)V

    new-instance v1, Lcom/android/systemui/wallpaper/colors/ColorData;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    move-result v4

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/android/systemui/wallpaper/colors/ColorData;-><init>(Landroid/app/SemWallpaperColors;ZZZ)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkUpdates(Lcom/android/systemui/wallpaper/colors/ColorData;Lcom/android/systemui/wallpaper/colors/ColorData;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final checkUpdates(Lcom/android/systemui/wallpaper/colors/ColorData;Lcom/android/systemui/wallpaper/colors/ColorData;)J
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v4, v0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-boolean v5, v1, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    if-eq v4, v5, :cond_2

    :goto_1
    const-wide/16 v4, 0x1

    move-object/from16 v8, p0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p0

    move-wide v4, v6

    :goto_2
    iget-object v8, v8, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    const-wide/16 v8, 0x400

    or-long/2addr v4, v8

    :cond_3
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAdaptiveColorEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    const-wide/16 v8, 0x2

    or-long/2addr v4, v8

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v1, v1, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    goto/16 :goto_9

    :cond_6
    sget-object v8, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    sget-object v9, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

    sget-object v10, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    sget v11, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    :goto_4
    if-ge v3, v11, :cond_10

    aget-wide v12, v8, v3

    invoke-virtual {v1, v12, v13}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    if-eqz v0, :cond_7

    aget-wide v12, v8, v3

    or-long/2addr v6, v12

    aget-wide v12, v10, v3

    or-long/2addr v6, v12

    aget-wide v12, v9, v3

    or-long/2addr v6, v12

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    :goto_5
    if-ge v3, v11, :cond_10

    aget-wide v1, v8, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v1

    if-eqz v1, :cond_9

    aget-wide v1, v8, v3

    or-long/2addr v1, v6

    aget-wide v6, v10, v3

    or-long/2addr v1, v6

    aget-wide v6, v9, v3

    or-long/2addr v1, v6

    move-wide v6, v1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    move v12, v3

    :goto_6
    if-ge v12, v11, :cond_10

    aget-wide v13, v8, v12

    invoke-virtual {v0, v13, v14}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v13

    aget-wide v14, v8, v12

    invoke-virtual {v1, v14, v15}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v14

    if-nez v13, :cond_b

    if-eqz v14, :cond_f

    aget-wide v13, v8, v12

    or-long/2addr v6, v13

    aget-wide v13, v10, v12

    or-long/2addr v6, v13

    aget-wide v13, v9, v12

    :goto_7
    or-long/2addr v6, v13

    goto :goto_8

    :cond_b
    sget-boolean v15, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v15, :cond_c

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors;->getWhich()I

    move-result v15

    invoke-static {v15}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v15

    if-eqz v15, :cond_c

    aget-wide v13, v8, v12

    or-long/2addr v6, v13

    aget-wide v13, v10, v12

    or-long/2addr v6, v13

    aget-wide v13, v9, v12

    goto :goto_7

    :cond_c
    invoke-virtual {v13, v14, v3}, Landroid/app/SemWallpaperColors$Item;->equals(Ljava/lang/Object;I)Z

    move-result v15

    if-nez v15, :cond_d

    aget-wide v15, v8, v12

    or-long/2addr v6, v15

    :cond_d
    invoke-virtual {v13, v14, v2}, Landroid/app/SemWallpaperColors$Item;->equals(Ljava/lang/Object;I)Z

    move-result v15

    if-nez v15, :cond_e

    aget-wide v15, v10, v12

    or-long/2addr v6, v15

    :cond_e
    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/app/SemWallpaperColors$Item;->equals(Ljava/lang/Object;I)Z

    move-result v13

    if-nez v13, :cond_f

    aget-wide v13, v9, v12

    goto :goto_7

    :cond_f
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_10
    :goto_9
    or-long v0, v4, v6

    return-wide v0
.end method

.method public final getSemWallpaperColors(IZ)Landroid/app/SemWallpaperColors;
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsCover:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/colors/ColorData;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/colors/ColorData;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setSemWallpaperColors(Landroid/app/SemWallpaperColors;I)J
    .locals 9

    iget v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSelectedUserId:I

    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v4, p2, 0x2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const-string p0, "KeyguardWallpaperColors"

    const-string/jumbo p1, "setSemWallpaperColors: Nothing to do for which = "

    invoke-static {p2, p1, p0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    :goto_0
    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_2

    and-int/lit8 v4, p2, 0x10

    if-nez v4, :cond_2

    and-int/lit8 v4, p2, 0x20

    if-nez v4, :cond_2

    const-string p0, "KeyguardWallpaperColors"

    const-string/jumbo p1, "setSemWallpaperColors: Nothing to do for which = "

    invoke-static {p2, p1, p0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCoverScreen(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsCover:Landroid/util/SparseArray;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    :goto_1
    if-eqz p1, :cond_4

    const-string v5, "KeyguardWallpaperColors"

    const-string/jumbo v6, "setSemWallpaperColors: which = "

    const-string v7, ", userId = "

    const-string v8, ", colors = "

    invoke-static {p2, v0, v6, v7, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/systemui/wallpaper/colors/ColorData;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, p1, v6, v7, v8}, Lcom/android/systemui/wallpaper/colors/ColorData;-><init>(Landroid/app/SemWallpaperColors;ZZZ)V

    monitor-enter v4

    :try_start_0
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/colors/ColorData;

    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkUpdates(Lcom/android/systemui/wallpaper/colors/ColorData;Lcom/android/systemui/wallpaper/colors/ColorData;)J

    move-result-wide v6

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    move-wide v6, v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCoverScreen(I)Z

    move-result p2

    if-nez p2, :cond_9

    :cond_5
    cmp-long p2, v6, v2

    if-eqz p2, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "writeSettingsWallpaperColors() flags = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperColors"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_9

    const-wide/16 v0, 0x200

    and-long v4, v6, v0

    cmp-long p2, v4, v2

    if-eqz p2, :cond_7

    invoke-virtual {p1, v0, v1}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p2}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    :cond_7
    const-wide/16 v0, 0x10

    and-long v4, v6, v0

    cmp-long p2, v4, v2

    if-eqz p2, :cond_8

    invoke-virtual {p1, v0, v1}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p2}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardStatusBar(I)V

    :cond_8
    const-wide/16 v0, 0x100

    and-long v4, v6, v0

    cmp-long p2, v4, v2

    if-eqz p2, :cond_9

    invoke-virtual {p1, v0, v1}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardNavigationBar(I)V

    :cond_9
    :goto_3
    move-wide v2, v6

    :goto_4
    return-wide v2
.end method
