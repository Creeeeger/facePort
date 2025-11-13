.class public final Lcom/android/systemui/wallpaper/engines/video/VideoSource$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/engines/video/VideoSource;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoSource;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$1;->this$0:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$1;->this$0:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    check-cast p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    return-void
.end method
