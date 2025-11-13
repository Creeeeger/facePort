.class Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;
.super Landroid/service/wallpaper/IWallpaperService$Stub;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IWallpaperServiceWrapper"
.end annotation


# instance fields
.field private blacklist mEngineWrapper:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field private final blacklist mEngineWrappers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTarget:Landroid/service/wallpaper/WallpaperService;

.field final synthetic blacklist this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;)V
    .locals 1
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;
    .param p2, "context"    # Landroid/service/wallpaper/WallpaperService;

    .line 2910
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperService$Stub;-><init>()V

    .line 2907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mEngineWrappers:Ljava/util/ArrayList;

    .line 2911
    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mTarget:Landroid/service/wallpaper/WallpaperService;

    .line 2912
    return-void
.end method


# virtual methods
.method public blacklist attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;I)V
    .locals 13
    .param p1, "conn"    # Landroid/service/wallpaper/IWallpaperConnection;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "windowType"    # I
    .param p4, "isPreview"    # Z
    .param p5, "reqWidth"    # I
    .param p6, "reqHeight"    # I
    .param p7, "padding"    # Landroid/graphics/Rect;
    .param p8, "displayId"    # I

    .line 2918
    move-object v0, p0

    new-instance v12, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mTarget:Landroid/service/wallpaper/WallpaperService;

    move-object v1, v12

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;-><init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;I)V

    iput-object v12, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mEngineWrapper:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 2920
    iget-object v1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mEngineWrappers:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2921
    return-void
.end method

.method public blacklist detach(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 2925
    const/4 v0, 0x0

    .line 2926
    .local v0, "engineWrapper":Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mEngineWrappers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2927
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2928
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mEngineWrappers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 2929
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    if-ne p1, v3, :cond_0

    .line 2930
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->detach()V

    .line 2931
    goto :goto_1

    .line 2927
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2935
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 2936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find displayId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WallpaperService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2938
    :cond_2
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mEngineWrappers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2940
    :goto_2
    return-void
.end method

.method public blacklist setCurrentUserId(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 2945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentUserId: userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    const/4 v0, 0x0

    .line 2948
    .local v0, "engineWrapper":Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mEngineWrappers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2949
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2950
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mEngineWrappers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 2951
    invoke-virtual {v0, p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->setCurrentUserId(I)V

    .line 2949
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2953
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
