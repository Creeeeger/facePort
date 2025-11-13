.class public final synthetic Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreLoadIconDataHandler;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreLoadIconDataHandler;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mPreloadIcon:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;

    iget-boolean v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mIsPreloaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mIsPreloaded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mPreloadIconDrawable:[Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->updateSettings(Z)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_appicon_theme_package"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->updateSettings(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
