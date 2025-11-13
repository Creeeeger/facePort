.class public final Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$3;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    const-wide/16 v0, 0x200

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const-string p1, "background"

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$3;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->updateBouncerNavigationBar(Z)V

    :cond_0
    return-void
.end method
