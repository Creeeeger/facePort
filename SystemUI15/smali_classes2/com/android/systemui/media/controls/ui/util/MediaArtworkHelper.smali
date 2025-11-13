.class public final Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;

    invoke-direct {v0}, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;-><init>()V

    sput-object v0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;->INSTANCE:Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorScheme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/monet/Style;)Lcom/android/systemui/monet/ColorScheme;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/monet/ColorScheme;

    invoke-static {p0}, Landroid/app/WallpaperColors;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;

    move-result-object p0

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0, p3}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Fail to get media app info"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static getWallpaperColor(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/graphics/drawable/Icon;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, p3, v1}, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper$getWallpaperColor$2;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
