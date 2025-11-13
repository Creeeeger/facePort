.class public final Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;
.super Landroid/os/AsyncTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/MotionWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    sget p1, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->loadMotionWallpaperBitmaps()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    sget p1, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->initializeMotionBitmaps()V

    return-void
.end method
