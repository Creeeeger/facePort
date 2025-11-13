.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final newDexSetting:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$SettingsObserver;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$SettingsObserver;->context:Landroid/content/Context;

    const-string p1, "new_dex"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$SettingsObserver;->newDexSetting:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, -0x2

    invoke-virtual {p2, p1, p3, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$SettingsObserver;->newDexSetting:Landroid/net/Uri;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$SettingsObserver;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$SettingsObserver;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->isActive(Landroid/content/Context;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$SettingsObserver;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->updateDesktopModeActive(Z)V

    :cond_0
    return-void
.end method
