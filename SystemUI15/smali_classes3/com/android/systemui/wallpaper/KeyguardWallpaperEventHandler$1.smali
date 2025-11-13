.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.theme.themecenter.THEME_APPLY_START"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KeyguardWallpaperEventHandler"

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onOpenThemeChangeStarted: packageName = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 p1, 0x2d9

    invoke-static {p0, p1, v1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.android.theme.themecenter.THEME_REAPPLY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "onOpenThemeReApply()"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 p1, 0x2db

    invoke-static {p0, p1, v1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    const-string p2, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "onOpenThemeChanged()"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 p1, 0x2da

    invoke-static {p0, p1, v1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    :cond_2
    :goto_0
    return-void
.end method
