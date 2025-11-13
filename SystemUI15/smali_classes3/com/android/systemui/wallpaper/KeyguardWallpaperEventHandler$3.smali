.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 5

    const-string v0, "KeyguardWallpaperEventHandler"

    if-nez p1, :cond_0

    const-string p0, "onChanged: uri is null. Return!"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onChanged: uri = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/4 v3, -0x1

    if-nez v1, :cond_9

    const-string v1, "minimal_battery_use"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    if-eq v0, p1, :cond_a

    sput-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    const/16 p1, 0x25a

    invoke-static {p0, p1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "lock_adaptive_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p1, 0x387

    invoke-static {p0, p1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "lock_adaptive_color_sub"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p1, 0x38b

    invoke-static {p0, p1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    goto :goto_1

    :cond_4
    const-string v1, "lockscreen_wallpaper_transparent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x388

    if-eqz v1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v4, p1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "sub_display_lockscreen_wallpaper_transparency"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v4, p1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "wallpapertheme_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 p1, 0x2dd

    invoke-static {p0, p1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    goto :goto_1

    :cond_7
    const-string v1, "lock_screen_allow_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x389

    invoke-static {p0, p1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    goto :goto_1

    :cond_8
    const-string p0, "onChanged: Unhandled uri."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    if-eq v0, p1, :cond_a

    sput-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    const/16 p1, 0x25b

    invoke-static {p0, p1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    :cond_a
    :goto_1
    return-void
.end method
