.class public final Lcom/android/settingslib/applications/AppIconCacheManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ICON_SIZE_LIMIT:I

.field static final MAX_CACHE_SIZE_IN_KB:I

.field public static mCurCacheSize:I

.field public static sAppIconCacheManager:Lcom/android/settingslib/applications/AppIconCacheManager;


# instance fields
.field public final mDrawableCache:Lcom/android/settingslib/applications/AppIconCacheManager$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/android/settingslib/applications/AppIconCacheManager;->MAX_CACHE_SIZE_IN_KB:I

    const/16 v0, 0xfa

    sput v0, Lcom/android/settingslib/applications/AppIconCacheManager;->ICON_SIZE_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settingslib/applications/AppIconCacheManager$1;

    sget v1, Lcom/android/settingslib/applications/AppIconCacheManager;->MAX_CACHE_SIZE_IN_KB:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/applications/AppIconCacheManager;->mDrawableCache:Lcom/android/settingslib/applications/AppIconCacheManager$1;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/settingslib/applications/AppIconCacheManager;
    .locals 4

    const-string v0, "MAX_CACHE_SIZE_IN_KB : "

    const-class v1, Lcom/android/settingslib/applications/AppIconCacheManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/settingslib/applications/AppIconCacheManager;->sAppIconCacheManager:Lcom/android/settingslib/applications/AppIconCacheManager;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/settingslib/applications/AppIconCacheManager;

    invoke-direct {v2}, Lcom/android/settingslib/applications/AppIconCacheManager;-><init>()V

    sput-object v2, Lcom/android/settingslib/applications/AppIconCacheManager;->sAppIconCacheManager:Lcom/android/settingslib/applications/AppIconCacheManager;

    const-string v2, "AppIconCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/android/settingslib/applications/AppIconCacheManager;->MAX_CACHE_SIZE_IN_KB:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput v0, Lcom/android/settingslib/applications/AppIconCacheManager;->mCurCacheSize:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settingslib/applications/AppIconCacheManager;->sAppIconCacheManager:Lcom/android/settingslib/applications/AppIconCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1

    throw v0
.end method

.method public static getKey(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ":"

    invoke-static {p1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final put(Ljava/lang/String;IZLandroid/graphics/drawable/Drawable;)V
    .locals 6

    invoke-static {p2, p1, p3}, Lcom/android/settingslib/applications/AppIconCacheManager;->getKey(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    const-string v0, "AppIconCacheManager"

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-gez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v1, p4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    move-object v1, p4

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/android/settingslib/applications/AppIconCacheManager;->ICON_SIZE_LIMIT:I

    if-le v1, v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " BitmapDrawable icon size is over than "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget v2, Lcom/android/settingslib/applications/AppIconCacheManager;->mCurCacheSize:I

    add-int/2addr v2, v1

    sget v3, Lcom/android/settingslib/applications/AppIconCacheManager;->MAX_CACHE_SIZE_IN_KB:I

    if-le v2, v3, :cond_2

    const-string p0, "Max cache size reached"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v2, "AppIconCacheManager Added : "

    const-string v4, " , uid : "

    const-string v5, " , size : "

    invoke-static {p2, v2, p1, v4, v5}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , h : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " w : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/android/settingslib/applications/AppIconCacheManager;->mCurCacheSize:I

    add-int/2addr p1, v1

    sput p1, Lcom/android/settingslib/applications/AppIconCacheManager;->mCurCacheSize:I

    const-string p1, "maxSize : "

    const-string p2, " , curSize : "

    invoke-static {v3, p1, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget p2, Lcom/android/settingslib/applications/AppIconCacheManager;->mCurCacheSize:I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/applications/AppIconCacheManager;->mDrawableCache:Lcom/android/settingslib/applications/AppIconCacheManager$1;

    invoke-virtual {p0, p3, p4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not BitmapDrawable, cache is not support"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_0
    const-string p0, "Invalid key or drawable."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
