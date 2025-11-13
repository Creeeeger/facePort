.class public Lcom/android/systemui/wallpaper/provider/ImageWallpaperProvider;
.super Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCallDispatcher()Lcom/android/systemui/wallpaper/provider/ProviderCallDispatcher;
    .locals 0

    new-instance p0, Lcom/android/systemui/wallpaper/provider/ProviderCallDispatcher;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/provider/ProviderCallDispatcher;-><init>()V

    return-object p0
.end method
