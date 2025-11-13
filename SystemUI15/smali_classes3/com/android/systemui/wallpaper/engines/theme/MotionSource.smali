.class public final Lcom/android/systemui/wallpaper/engines/theme/MotionSource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/engines/WallpaperSource;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mRootView:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

.field public final mWhich:I


# direct methods
.method public constructor <init>(ILcom/android/systemui/wallpaper/theme/MotionWallpaper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ImageWallpaper_"

    const-string v1, "[MotionSource]"

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionSource;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionSource;->mRootView:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iput p1, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionSource;->mWhich:I

    return-void
.end method
