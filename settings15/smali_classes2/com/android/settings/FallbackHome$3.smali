.class public final Lcom/android/settings/FallbackHome$3;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/FallbackHome;

.field public final synthetic val$flags:I


# direct methods
.method public constructor <init>(Lcom/android/settings/FallbackHome;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    iput p2, p0, Lcom/android/settings/FallbackHome$3;->val$flags:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    iget-object p1, p1, Lcom/android/settings/FallbackHome;->mWallManager:Landroid/app/WallpaperManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    iget-object p1, p0, Lcom/android/settings/FallbackHome;->mWallManager:Landroid/app/WallpaperManager;

    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mColorsChangedListener:Lcom/android/settings/FallbackHome$1;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    invoke-virtual {v1}, Lcom/android/settings/FallbackHome;->setWallpaperOffset()V

    iget-object v1, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    iget p0, p0, Lcom/android/settings/FallbackHome$3;->val$flags:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    or-int/lit16 p0, p0, 0x2010

    goto :goto_0

    :cond_1
    and-int/lit16 p0, p0, -0x2011

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method
