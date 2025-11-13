.class Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;


# direct methods
.method private constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V

    return-void
.end method


# virtual methods
.method public onSemWallpaperChanged(IILandroid/os/Bundle;)V
    .locals 2

    const-string p3, "onSemWallpaperChanged type="

    const-string v0, " which="

    const-string v1, "DesktopSystemUIBinder"

    invoke-static {p1, p2, p3, v0, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_0

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onKeyguardWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "onSemWallpaperChanged - not for dex keyguard wallpaper"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onSemWallpaperColorsAnalysisRequested(II)V
    .locals 0

    return-void
.end method

.method public onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .locals 0

    return-void
.end method

.method public onWallpaperChanged()V
    .locals 0

    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0

    return-void
.end method
