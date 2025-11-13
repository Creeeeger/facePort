.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mColorThemeColorUri:Landroid/net/Uri;

.field public final mFullScreenUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "wallpapertheme_color"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;->mColorThemeColorUri:Landroid/net/Uri;

    const-string v1, "multi_window_menu_in_full_screen"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;->mFullScreenUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p2, v0, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->-$$Nest$mupdateColorThemeState(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->-$$Nest$mupdateFullscreenHandlerState(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;->mColorThemeColorUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;->mFullScreenUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
