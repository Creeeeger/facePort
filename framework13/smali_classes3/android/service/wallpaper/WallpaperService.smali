.class public abstract Landroid/service/wallpaper/WallpaperService;
.super Landroid/app/Service;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;,
        Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;,
        Landroid/service/wallpaper/WallpaperService$Engine;,
        Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    }
.end annotation


# static fields
.field static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEFAULT_UPDATE_SCREENSHOT_DURATION:J = 0xea60L

.field private static final blacklist DIMMING_ANIMATION_DURATION_MS:J = 0x12cL

.field private static final greylist-max-o DO_ATTACH:I = 0xa

.field private static final greylist-max-o DO_DETACH:I = 0x14

.field private static final greylist-max-o DO_IN_AMBIENT_MODE:I = 0x32

.field private static final greylist-max-o DO_SET_DESIRED_SIZE:I = 0x1e

.field private static final greylist-max-o DO_SET_DISPLAY_PADDING:I = 0x28

.field private static final blacklist ENABLE_WALLPAPER_DIMMING:Z = false

.field private static final blacklist LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field private static final blacklist MIN_BITMAP_SCREENSHOT_WIDTH:I = 0x40

.field static final blacklist MIN_PAGE_ALLOWED_MARGIN:F = 0.05f

.field private static final blacklist MSG_REPORT_SHOWN:I = 0x27a6

.field private static final greylist-max-o MSG_REQUEST_WALLPAPER_COLORS:I = 0x2742

.field private static final blacklist MSG_SCALE_PREVIEW:I = 0x277e

.field private static final greylist-max-o MSG_TOUCH_EVENT:I = 0x2738

.field private static final blacklist MSG_UPDATE_DIMMING:I = 0x27d8

.field private static final greylist-max-o MSG_UPDATE_SURFACE:I = 0x2710

.field private static final greylist-max-o MSG_VISIBILITY_CHANGED:I = 0x271a

.field private static final greylist-max-o MSG_WALLPAPER_COMMAND:I = 0x2729

.field private static final greylist-max-o MSG_WALLPAPER_OFFSETS:I = 0x2724

.field private static final greylist-max-o MSG_WINDOW_MOVED:I = 0x2733

.field private static final greylist-max-r MSG_WINDOW_RESIZED:I = 0x272e

.field private static final blacklist MSG_ZOOM:I = 0x2774

.field private static final greylist-max-o NOTIFY_COLORS_RATE_LIMIT_MS:I = 0x3e8

.field private static final blacklist PROHIBITED_STEPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wallpaper.WallpaperService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.service.wallpaper"

.field static final greylist-max-o TAG:Ljava/lang/String; = "WallpaperService"

.field private static blacklist mDeviceHeight:I

.field private static blacklist mDeviceRotation:I

.field private static blacklist mDeviceWidth:I


# instance fields
.field private final greylist-max-o mActiveEngines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/wallpaper/WallpaperService$Engine;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveEngines(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService;->isValid(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPROHIBITED_STEPS()Ljava/util/List;
    .locals 1

    sget-object v0, Landroid/service/wallpaper/WallpaperService;->PROHIBITED_STEPS:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmDeviceHeight()I
    .locals 1

    sget v0, Landroid/service/wallpaper/WallpaperService;->mDeviceHeight:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmDeviceRotation()I
    .locals 1

    sget v0, Landroid/service/wallpaper/WallpaperService;->mDeviceRotation:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmDeviceWidth()I
    .locals 1

    sget v0, Landroid/service/wallpaper/WallpaperService;->mDeviceWidth:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmDeviceHeight(I)V
    .locals 0

    sput p0, Landroid/service/wallpaper/WallpaperService;->mDeviceHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmDeviceRotation(I)V
    .locals 0

    sput p0, Landroid/service/wallpaper/WallpaperService;->mDeviceRotation:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmDeviceWidth(I)V
    .locals 0

    sput p0, Landroid/service/wallpaper/WallpaperService;->mDeviceWidth:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 176
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Landroid/service/wallpaper/WallpaperService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 198
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 199
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 198
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/service/wallpaper/WallpaperService;->PROHIBITED_STEPS:Ljava/util/List;

    .line 225
    const/4 v0, -0x1

    sput v0, Landroid/service/wallpaper/WallpaperService;->mDeviceHeight:I

    .line 226
    sput v0, Landroid/service/wallpaper/WallpaperService;->mDeviceWidth:I

    .line 227
    sput v0, Landroid/service/wallpaper/WallpaperService;->mDeviceRotation:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 152
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist inRectFRange(F)Z
    .locals 1
    .param p1, "number"    # F

    .line 2596
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isValid(Landroid/graphics/RectF;)Z
    .locals 3
    .param p1, "area"    # Landroid/graphics/RectF;

    .line 2589
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2590
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    sget-object v1, Landroid/service/wallpaper/WallpaperService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 2591
    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 2592
    .local v0, "valid":Z
    :goto_0
    return v0
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3003
    const-string v0, "State of wallpaper "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3004
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3005
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 3006
    .local v2, "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    const-string v3, "  Engine "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3007
    const-string v3, "    "

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3004
    .end local v2    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3009
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2982
    const-string v0, "WallpaperService"

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    new-instance v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;

    invoke-direct {v0, p0, p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;-><init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;)V

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 1

    .line 2959
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2962
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2964
    return-void
.end method

.method public abstract whitelist onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
.end method

.method public blacklist onCreateSubEngine(I)Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1
    .param p1, "displayId"    # I

    .line 2997
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onDestroy()V
    .locals 2

    .line 2968
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2969
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2970
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    .line 2969
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2972
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2973
    return-void
.end method
