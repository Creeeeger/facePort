.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mEasyModeSwitchUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 3

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SettingsObserver;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "easy_mode_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SettingsObserver;->mEasyModeSwitchUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SettingsObserver;->mEasyModeSwitchUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SettingsObserver;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    sget-object p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->TAIL_ICON_ALPHA_ARRAY:[F

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->calculateVisibleIconMaxCount()V

    :cond_1
    return-void
.end method
