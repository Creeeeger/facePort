.class public final Lcom/android/settings/FallbackHome$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/FallbackHome;


# direct methods
.method public constructor <init>(Lcom/android/settings/FallbackHome;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/FallbackHome$1;->this$0:Lcom/android/settings/FallbackHome;

    return-void
.end method


# virtual methods
.method public final onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/settings/FallbackHome$1;->this$0:Lcom/android/settings/FallbackHome;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/FallbackHome$1;->this$0:Lcom/android/settings/FallbackHome;

    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    sget v2, Lcom/android/settings/FallbackHome;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x2010

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, -0x2011

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/FallbackHome$1;->this$0:Lcom/android/settings/FallbackHome;

    iget-object p1, p1, Lcom/android/settings/FallbackHome;->mWallManager:Landroid/app/WallpaperManager;

    invoke-virtual {p1, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    iget-object p0, p0, Lcom/android/settings/FallbackHome$1;->this$0:Lcom/android/settings/FallbackHome;

    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->setWallpaperOffset()V

    :cond_1
    return-void
.end method
