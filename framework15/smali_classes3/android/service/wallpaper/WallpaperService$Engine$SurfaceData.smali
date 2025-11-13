.class public Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SurfaceData"
.end annotation


# instance fields
.field private blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBlastBufferQueue(Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;)Landroid/graphics/BLASTBufferQueue;
    .locals 0

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControl(Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    return-void
.end method
