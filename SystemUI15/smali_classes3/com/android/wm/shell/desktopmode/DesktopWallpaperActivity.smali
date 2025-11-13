.class public final Lcom/android/wm/shell/desktopmode/DesktopWallpaperActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/wm/shell/desktopmode/DesktopWallpaperActivity$Companion;

.field public static final wallpaperActivityComponent:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopWallpaperActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopWallpaperActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/wm/shell/desktopmode/DesktopWallpaperActivity;->Companion:Lcom/android/wm/shell/desktopmode/DesktopWallpaperActivity$Companion;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/wm/shell/desktopmode/DesktopWallpaperActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/desktopmode/DesktopWallpaperActivity;->wallpaperActivityComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DesktopWallpaperActivity: onCreate"

    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
