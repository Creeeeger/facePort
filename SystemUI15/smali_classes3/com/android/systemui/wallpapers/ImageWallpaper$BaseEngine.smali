.class public Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;
.super Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mWhich:I

.field public final synthetic this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;-><init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)V

    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mWhich:I

    return-void
.end method


# virtual methods
.method public onWallpaperFlagsChanged(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mWhich:I

    const-string p0, "onWallpaperFlagsChanged: which = "

    const-string v0, "ImageWallpaper"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public supportsLocalColorExtraction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
