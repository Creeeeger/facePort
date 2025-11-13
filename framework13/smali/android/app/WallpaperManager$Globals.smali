.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Globals"
.end annotation


# instance fields
.field private greylist-max-o mCachedWallpaper:Landroid/graphics/Bitmap;

.field private greylist-max-o mCachedWallpaperUserId:I

.field private greylist-max-o mColorCallbackRegistered:Z

.field private final greylist-max-o mColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/app/WallpaperManager$OnColorsChangedListener;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private blacklist mIsCachedWallpaperForDeX:Z

.field private blacklist mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

.field private blacklist mLocalColorCallbackAreas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mMainLooperHandler:Landroid/os/Handler;

.field private final blacklist mSemColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/app/OnSemColorsChangedListener;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mService:Landroid/app/IWallpaperManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLocalColorCallbackAreas(Landroid/app/WallpaperManager$Globals;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 0

    iget-object p0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Landroid/app/IWallpaperManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 661
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    .line 642
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    .line 644
    new-instance v0, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;)V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    .line 1250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mSemColorListeners:Ljava/util/ArrayList;

    .line 662
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 663
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    .line 664
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 665
    return-void
.end method

.method private greylist-max-o getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 1149
    const/4 v0, 0x0

    .line 1151
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 1154
    .local v1, "isDesktopMode":Z
    :try_start_0
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v2

    iget-object v2, v2, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v2, p2}, Landroid/app/IWallpaperManager;->isDesktopModeEnabled(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 1157
    nop

    .line 1160
    if-nez v0, :cond_0

    .line 1161
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v0

    .line 1164
    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1166
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1171
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1172
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, v4, p2}, Landroid/app/WallpaperManager$Globals;->checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1177
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1172
    return-object v2

    .line 1177
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1174
    :catch_0
    move-exception v3

    .line 1175
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t decode stream"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1177
    nop

    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1178
    goto :goto_1

    .line 1177
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1178
    throw v2

    .line 1180
    :cond_1
    :goto_1
    return-object v2

    .line 1155
    :catch_1
    move-exception v2

    .line 1156
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method static synthetic blacklist lambda$getCurrentWallpaperLocked$2(ZLandroid/app/WallpaperManager$ColorManagementProxy;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1
    .param p0, "hardware"    # Z
    .param p1, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;
    .param p2, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p3, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p4, "source"    # Landroid/graphics/ImageDecoder$Source;

    .line 1124
    xor-int/lit8 v0, p0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    .line 1126
    if-eqz p1, :cond_0

    .line 1127
    invoke-virtual {p1, p2, p3}, Landroid/app/WallpaperManager$ColorManagementProxy;->doColorManagement(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;)V

    .line 1129
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$removeOnColorsChangedListener$0(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/util/Pair;)Z
    .locals 1
    .param p0, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p1, "pair"    # Landroid/util/Pair;

    .line 768
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$removeOnSemColorsChangedListener$3(Landroid/app/OnSemColorsChangedListener;Landroid/util/Pair;)Z
    .locals 1
    .param p0, "callback"    # Landroid/app/OnSemColorsChangedListener;
    .param p1, "pair"    # Landroid/util/Pair;

    .line 1272
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static blacklist resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F

    .line 1242
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1243
    .local v0, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 1244
    .local v1, "bitmapHeight":I
    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1245
    .local v2, "bm":Landroid/graphics/Bitmap;
    return-object v2
.end method


# virtual methods
.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;III)V
    .locals 7
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .line 712
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    monitor-enter p0

    .line 713
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 714
    .local v1, "area":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 715
    .local v2, "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-nez v2, :cond_0

    .line 716
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 717
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_0
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    nop

    .end local v1    # "area":Landroid/graphics/RectF;
    .end local v2    # "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    goto :goto_0

    .line 723
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/IWallpaperManager;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    goto :goto_1

    .line 725
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t register for local color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 729
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit p0

    .line 730
    return-void

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;II)V
    .locals 3
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 695
    monitor-enter p0

    .line 696
    :try_start_0
    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 698
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p3, p4}, Landroid/app/IWallpaperManager;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t register for color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    monitor-exit p0

    .line 707
    return-void

    .line 706
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;II)V
    .locals 3
    .param p1, "callback"    # Landroid/app/OnSemColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 1255
    monitor-enter p0

    .line 1256
    :try_start_0
    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1258
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p3, p4}, Landroid/app/IWallpaperManager;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 1259
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1263
    goto :goto_0

    .line 1260
    :catch_0
    move-exception v0

    .line 1262
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t register for color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1265
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mSemColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    monitor-exit p0

    .line 1267
    return-void

    .line 1266
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager$Globals;->checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "which"    # I

    .line 1189
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    if-eqz v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 1191
    :cond_0
    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1192
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1194
    .local v4, "display":Landroid/view/Display;
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 1195
    const-class v5, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 1196
    .local v5, "dm":Landroid/hardware/display/DisplayManager;
    invoke-static {v0, v2}, Landroid/app/WallpaperManager;->getDisplayId(Landroid/content/Context;I)I

    move-result v6

    .line 1197
    .local v6, "displayId":I
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkDeviceDensity getDisplayId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    .line 1201
    .end local v5    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v6    # "displayId":I
    :cond_1
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1202
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1203
    iget v6, v5, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1205
    new-instance v6, Landroid/view/DisplayInfo;

    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    .line 1206
    .local v6, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v4, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1207
    iget v7, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1208
    .local v7, "deviceHeight":I
    iget v8, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1209
    .local v8, "deviceWidth":I
    iget v9, v6, Landroid/view/DisplayInfo;->rotation:I

    .line 1210
    .local v9, "deviceRotation":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 1211
    .local v10, "bitmapHeight":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 1213
    .local v11, "bitmapWidth":I
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkDeviceDensity deviceRotation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " deviceHeight="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " deviceWidth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bitmapHeight="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bitmapWidth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1220
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/4 v13, 0x1

    if-eqz v12, :cond_2

    const-string v14, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    move v14, v13

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    .line 1221
    .local v14, "isTablet":Z
    :goto_0
    if-nez v14, :cond_4

    .line 1222
    if-eq v9, v13, :cond_3

    const/4 v13, 0x3

    if-ne v9, v13, :cond_4

    .line 1223
    :cond_3
    iget v7, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1224
    iget v8, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1229
    :cond_4
    const/4 v13, 0x0

    .line 1230
    .local v13, "scale":F
    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    if-ge v8, v11, :cond_5

    if-ge v7, v10, :cond_5

    .line 1232
    int-to-float v15, v8

    int-to-float v0, v11

    div-float/2addr v15, v0

    int-to-float v0, v7

    int-to-float v2, v10

    div-float/2addr v0, v2

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1233
    .end local v13    # "scale":F
    .local v0, "scale":F
    invoke-static {v1, v0}, Landroid/app/WallpaperManager$Globals;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1234
    .local v2, "resizedBmp":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3    # "wm":Landroid/view/WindowManager;
    .local v16, "wm":Landroid/view/WindowManager;
    const-string/jumbo v3, "resize scale down.:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    return-object v2

    .line 1230
    .end local v0    # "scale":F
    .end local v2    # "resizedBmp":Landroid/graphics/Bitmap;
    .end local v16    # "wm":Landroid/view/WindowManager;
    .restart local v3    # "wm":Landroid/view/WindowManager;
    .restart local v13    # "scale":F
    :cond_5
    move-object/from16 v16, v3

    .line 1238
    .end local v3    # "wm":Landroid/view/WindowManager;
    .restart local v16    # "wm":Landroid/view/WindowManager;
    return-object v1

    .line 1189
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v7    # "deviceHeight":I
    .end local v8    # "deviceWidth":I
    .end local v9    # "deviceRotation":I
    .end local v10    # "bitmapHeight":I
    .end local v11    # "bitmapWidth":I
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "scale":F
    .end local v14    # "isTablet":Z
    .end local v16    # "wm":Landroid/view/WindowManager;
    :cond_6
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o forgetLoadedWallpaper()V
    .locals 2

    .line 1060
    monitor-enter p0

    .line 1061
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 1062
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    .line 1063
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 1067
    iput-boolean v1, p0, Landroid/app/WallpaperManager$Globals;->mIsCachedWallpaperForDeX:Z

    .line 1070
    monitor-exit p0

    .line 1071
    return-void

    .line 1070
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getCurrentWallpaperLocked(Landroid/content/Context;IZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "hardware"    # Z
    .param p4, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 1076
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;IZLandroid/app/WallpaperManager$ColorManagementProxy;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCurrentWallpaperLocked(Landroid/content/Context;IZLandroid/app/WallpaperManager$ColorManagementProxy;I)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "hardware"    # Z
    .param p4, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;
    .param p5, "which"    # I

    .line 1082
    move-object/from16 v10, p0

    const-string v11, "Can\'t decode file"

    iget-object v0, v10, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v12, 0x0

    if-nez v0, :cond_0

    .line 1083
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return-object v12

    .line 1088
    :cond_0
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentWallpaperLocked userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v13, p2

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1093
    .local v6, "params":Landroid/os/Bundle;
    iget-object v1, v10, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 1094
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 1093
    move-object/from16 v4, p0

    move/from16 v5, p5

    move/from16 v7, p2

    invoke-interface/range {v1 .. v9}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v1, v0

    .line 1097
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_3

    .line 1098
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v2, v0

    .line 1100
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1102
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    move v4, v3

    .local v4, "data":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 1103
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1106
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_2

    .line 1107
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v5, "length == 0"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/ImageDecoder;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object v3

    .line 1122
    .local v3, "src":Landroid/graphics/ImageDecoder$Source;
    new-instance v5, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda4;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v7, p3

    move-object/from16 v8, p4

    :try_start_3
    invoke-direct {v5, v7, v8}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda4;-><init>(ZLandroid/app/WallpaperManager$ColorManagementProxy;)V

    invoke-static {v3, v5}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1130
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v9, p1

    move/from16 v14, p5

    :try_start_4
    invoke-virtual {v10, v9, v5, v14}, Landroid/app/WallpaperManager$Globals;->checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1132
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1130
    return-object v15

    .line 1098
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local v4    # "data":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v9, p1

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    :goto_1
    move/from16 v14, p5

    :goto_2
    move-object v3, v0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_7
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "params":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "userId":I
    .end local p3    # "hardware":Z
    .end local p4    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .end local p5    # "which":I
    :goto_3
    throw v3
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1134
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "params":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "userId":I
    .restart local p3    # "hardware":Z
    .restart local p4    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local p5    # "which":I
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1132
    :catch_1
    move-exception v0

    goto :goto_5

    .line 1134
    :catch_2
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v14, p5

    .line 1135
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_4
    :try_start_8
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1132
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_3
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v14, p5

    .line 1133
    .local v0, "e":Ljava/lang/Throwable;
    :goto_5
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1136
    nop

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_6

    .line 1138
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "params":Landroid/os/Bundle;
    :catch_4
    move-exception v0

    goto :goto_7

    .line 1097
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "params":Landroid/os/Bundle;
    :cond_3
    move-object/from16 v9, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v14, p5

    .line 1140
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "params":Landroid/os/Bundle;
    :goto_6
    nop

    .line 1141
    return-object v12

    .line 1138
    :catch_5
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v14, p5

    .line 1139
    .local v0, "e":Landroid/os/RemoteException;
    :goto_7
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getWallpaperColors(III)Landroid/app/WallpaperColors;
    .locals 2
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 810
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 812
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must request colors for exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManager;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 818
    :catch_0
    move-exception v0

    .line 821
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic blacklist lambda$onSemWallpaperColorsChanged$4$android-app-WallpaperManager$Globals(Landroid/util/Pair;Landroid/app/SemWallpaperColors;I)V
    .locals 2
    .param p1, "listener"    # Landroid/util/Pair;
    .param p2, "colors"    # Landroid/app/SemWallpaperColors;
    .param p3, "which"    # I

    .line 1300
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    monitor-enter v0

    .line 1301
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mSemColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1302
    .local v1, "stillExists":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    if-eqz v1, :cond_0

    .line 1304
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/OnSemColorsChangedListener;

    invoke-interface {v0, p2, p3}, Landroid/app/OnSemColorsChangedListener;->onColorsChanged(Landroid/app/SemWallpaperColors;I)V

    .line 1306
    :cond_0
    return-void

    .line 1302
    .end local v1    # "stillExists":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onWallpaperColorsChanged$1$android-app-WallpaperManager$Globals(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .locals 2
    .param p1, "listener"    # Landroid/util/Pair;
    .param p2, "colors"    # Landroid/app/WallpaperColors;
    .param p3, "which"    # I
    .param p4, "userId"    # I

    .line 794
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    monitor-enter v0

    .line 795
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 796
    .local v1, "stillExists":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    if-eqz v1, :cond_0

    .line 798
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-interface {v0, p2, p3, p4}, Landroid/app/WallpaperManager$OnColorsChangedListener;->onColorsChanged(Landroid/app/WallpaperColors;II)V

    .line 800
    :cond_0
    return-void

    .line 796
    .end local v1    # "stillExists":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist onSemBackupStatusChanged(III)V
    .locals 0
    .param p1, "which"    # I
    .param p2, "status"    # I
    .param p3, "key"    # I

    .line 1318
    return-void
.end method

.method public blacklist onSemMultipackApplied(I)V
    .locals 0
    .param p1, "which"    # I

    .line 682
    return-void
.end method

.method public blacklist onSemWallpaperChanged(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 678
    return-void
.end method

.method public blacklist onSemWallpaperColorsAnalysisRequested(II)V
    .locals 0
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 1313
    return-void
.end method

.method public blacklist onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .locals 4
    .param p1, "colors"    # Landroid/app/SemWallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 1288
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSemWallpaperColorsChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    monitor-enter p0

    .line 1290
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mSemColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1292
    .local v1, "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    .line 1293
    .local v2, "handler":Landroid/os/Handler;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 1294
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    move-object v2, v3

    .line 1296
    :cond_0
    new-instance v3, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, p1, p2}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/SemWallpaperColors;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1307
    nop

    .end local v1    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;>;"
    .end local v2    # "handler":Landroid/os/Handler;
    goto :goto_0

    .line 1308
    :cond_1
    monitor-exit p0

    .line 1309
    return-void

    .line 1308
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o onWallpaperChanged()V
    .locals 0

    .line 673
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 674
    return-void
.end method

.method public greylist-max-o onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 10
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 784
    monitor-enter p0

    .line 785
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 786
    .local v1, "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    .line 787
    .local v2, "handler":Landroid/os/Handler;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 788
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    move-object v2, v3

    move-object v8, v2

    goto :goto_1

    .line 787
    :cond_0
    move-object v8, v2

    .line 790
    .end local v2    # "handler":Landroid/os/Handler;
    .local v8, "handler":Landroid/os/Handler;
    :goto_1
    new-instance v9, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 801
    nop

    .end local v1    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    .end local v8    # "handler":Landroid/os/Handler;
    goto :goto_0

    .line 802
    :cond_1
    monitor-exit p0

    .line 803
    return-void

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "hardware"    # Z
    .param p6, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 896
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;Z)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "hardware"    # Z
    .param p6, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;
    .param p7, "useCache"    # Z

    .line 901
    move-object v7, p0

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p7

    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "peekWallpaperBitmap: which ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", useCache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v0, v7, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    .line 905
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 906
    return-object v11

    .line 910
    :cond_0
    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 914
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 917
    .local v1, "isDesktopMode":Z
    :try_start_1
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, v8}, Landroid/app/IWallpaperManager;->isDesktopModeEnabled(I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move v12, v0

    .line 920
    .end local v1    # "isDesktopMode":Z
    .local v12, "isDesktopMode":Z
    nop

    .line 924
    monitor-enter p0

    .line 932
    :try_start_2
    iget-boolean v0, v7, Landroid/app/WallpaperManager$Globals;->mIsCachedWallpaperForDeX:Z

    if-eqz v0, :cond_2

    if-nez v12, :cond_3

    :cond_2
    if-nez v0, :cond_4

    if-nez v12, :cond_4

    .line 934
    :cond_3
    if-eqz v10, :cond_4

    iget-object v0, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget v1, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    if-ne v1, v9, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 935
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "peekWallpaperBitmap() cached image height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 936
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 935
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v0, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v0

    .line 941
    :cond_4
    iput-object v11, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 942
    const/4 v0, 0x0

    iput v0, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    .line 946
    iput-boolean v0, v7, Landroid/app/WallpaperManager$Globals;->mIsCachedWallpaperForDeX:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 956
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p3

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;IZLandroid/app/WallpaperManager$ColorManagementProxy;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 960
    .local v1, "currentWallpaper":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 961
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 962
    :try_start_4
    iput-object v1, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 963
    iput v9, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    .line 964
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object v1

    .line 965
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v12    # "isDesktopMode":Z
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .end local p7    # "useCache":Z
    :try_start_7
    throw v0

    .line 969
    .restart local v12    # "isDesktopMode":Z
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local p7    # "useCache":Z
    :cond_5
    iput-boolean v12, v7, Landroid/app/WallpaperManager$Globals;->mIsCachedWallpaperForDeX:Z
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 982
    .end local v1    # "currentWallpaper":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 974
    :catch_1
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1b

    if-ge v1, v2, :cond_6

    .line 976
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 980
    :cond_6
    nop

    .end local v12    # "isDesktopMode":Z
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .end local p7    # "useCache":Z
    throw v0

    .line 972
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v12    # "isDesktopMode":Z
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    .restart local p7    # "useCache":Z
    :catch_2
    move-exception v0

    .line 973
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of memory loading the current wallpaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    nop

    .line 983
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    iget-object v0, v7, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 984
    monitor-exit p0

    return-object v0

    .line 986
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 987
    if-eqz p2, :cond_a

    .line 988
    iget-object v0, v7, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 993
    .local v0, "defaultWallpaper":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_9

    if-nez v10, :cond_8

    goto :goto_2

    :cond_8
    move-object v2, p1

    goto :goto_3

    .line 995
    :cond_9
    :goto_2
    move-object v2, p1

    invoke-direct {p0, p1, v8}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 996
    .end local v0    # "defaultWallpaper":Landroid/graphics/Bitmap;
    .local v1, "defaultWallpaper":Landroid/graphics/Bitmap;
    monitor-enter p0

    .line 997
    :try_start_9
    iput-object v1, v7, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 998
    monitor-exit p0

    move-object v0, v1

    .line 1000
    .end local v1    # "defaultWallpaper":Landroid/graphics/Bitmap;
    .restart local v0    # "defaultWallpaper":Landroid/graphics/Bitmap;
    :goto_3
    return-object v0

    .line 998
    .end local v0    # "defaultWallpaper":Landroid/graphics/Bitmap;
    .restart local v1    # "defaultWallpaper":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    .line 1002
    .end local v1    # "defaultWallpaper":Landroid/graphics/Bitmap;
    :cond_a
    move-object v2, p1

    return-object v11

    .line 986
    :catchall_2
    move-exception v0

    move-object v2, p1

    :goto_4
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 918
    .end local v12    # "isDesktopMode":Z
    .local v1, "isDesktopMode":Z
    :catch_3
    move-exception v0

    move-object v2, p1

    .line 919
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public blacklist peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 883
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist peekWallpaperDimensions(Landroid/content/Context;ZI)Landroid/graphics/Rect;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "userId"    # I

    .line 1006
    move-object/from16 v10, p0

    iget-object v0, v10, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_1

    .line 1008
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1013
    :cond_0
    goto :goto_0

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1016
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v11, 0x0

    .line 1017
    .local v11, "dimensions":Landroid/graphics/Rect;
    monitor-enter p0

    .line 1018
    const/4 v12, 0x0

    .line 1020
    .local v12, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1021
    .local v6, "params":Landroid/os/Bundle;
    iget-object v1, v10, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1022
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 1021
    move-object/from16 v4, p0

    move/from16 v7, p3

    invoke-interface/range {v1 .. v9}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v12, v0

    .line 1024
    if-eqz v12, :cond_2

    .line 1025
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1026
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v14, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1027
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v13, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1028
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v15, v15, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v1

    .line 1033
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "params":Landroid/os/Bundle;
    :cond_2
    if-eqz v12, :cond_3

    .line 1035
    :try_start_2
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1037
    :goto_1
    goto :goto_2

    .line 1036
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1033
    :catchall_0
    move-exception v0

    move-object/from16 v1, p1

    move-object v2, v0

    goto :goto_5

    .line 1030
    :catch_2
    move-exception v0

    .line 1031
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "peek wallpaper dimensions failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1033
    nop

    .end local v0    # "ex":Landroid/os/RemoteException;
    if-eqz v12, :cond_3

    .line 1035
    :try_start_4
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 1040
    .end local v12    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1042
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v1, p1

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz p2, :cond_6

    .line 1044
    move-object/from16 v1, p1

    invoke-static {v1, v14}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v2

    .line 1045
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_7

    .line 1047
    :try_start_6
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1048
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v14, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1049
    invoke-static {v2, v13, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1050
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v15, v15, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v11, v3

    .line 1052
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1053
    goto :goto_4

    .line 1052
    :catchall_1
    move-exception v0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1053
    throw v0

    .line 1042
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_6
    move-object/from16 v1, p1

    .line 1056
    :cond_7
    :goto_4
    return-object v11

    .line 1040
    :catchall_2
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_7

    .line 1033
    .restart local v12    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_5
    if-eqz v12, :cond_8

    .line 1035
    :try_start_7
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1037
    goto :goto_6

    .line 1036
    :catch_3
    move-exception v0

    .line 1039
    :cond_8
    :goto_6
    nop

    .end local v11    # "dimensions":Landroid/graphics/Rect;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "userId":I
    :try_start_8
    throw v2

    .line 1040
    .end local v12    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v11    # "dimensions":Landroid/graphics/Rect;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "userId":I
    :catchall_3
    move-exception v0

    :goto_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;III)V
    .locals 8
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 735
    monitor-enter p0

    .line 736
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 737
    .local v0, "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 740
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;

    .line 741
    .local v2, "cb":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 742
    .local v3, "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v3, :cond_1

    if-eq v2, p1, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    .end local v2    # "cb":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .end local v3    # "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :cond_1
    goto :goto_0

    .line 745
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 747
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/app/IWallpaperManager;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    :cond_3
    goto :goto_1

    .line 751
    :catch_0
    move-exception v1

    .line 753
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t unregister for local color updates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    .end local v0    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit p0

    .line 756
    return-void

    .line 738
    .restart local v0    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 755
    .end local v0    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;II)V
    .locals 3
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 767
    monitor-enter p0

    .line 768
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;-><init>(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 770
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p2, p3}, Landroid/app/IWallpaperManager;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    goto :goto_0

    .line 774
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t unregister color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 780
    return-void

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;II)V
    .locals 3
    .param p1, "callback"    # Landroid/app/OnSemColorsChangedListener;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 1271
    monitor-enter p0

    .line 1272
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mSemColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda3;-><init>(Landroid/app/OnSemColorsChangedListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1274
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mSemColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 1275
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p2, p3}, Landroid/app/IWallpaperManager;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1281
    goto :goto_0

    .line 1278
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t unregister color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1283
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1284
    return-void

    .line 1283
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method blacklist semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .locals 3
    .param p1, "which"    # I

    .line 841
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetPrimaryWallpaperColors: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 844
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return-object v1

    .line 848
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 849
    :catch_0
    move-exception v0

    .line 852
    return-object v1
.end method

.method blacklist semGetSmartCropRect(I)Landroid/graphics/Rect;
    .locals 3
    .param p1, "which"    # I

    .line 868
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 869
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-object v1

    .line 873
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->semGetSmartCropRect(I)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 874
    :catch_0
    move-exception v0

    .line 877
    return-object v1
.end method

.method blacklist semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .locals 3
    .param p1, "which"    # I

    .line 826
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetWallpaperColors: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 829
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return-object v1

    .line 833
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 834
    :catch_0
    move-exception v0

    .line 837
    return-object v1
.end method

.method blacklist semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "which"    # I
    .param p2, "original"    # Landroid/graphics/Rect;
    .param p3, "smartCrop"    # Landroid/graphics/Rect;

    .line 856
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_0

    .line 857
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return-void

    .line 861
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    goto :goto_0

    .line 862
    :catch_0
    move-exception v0

    .line 865
    :goto_0
    return-void
.end method
