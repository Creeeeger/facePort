.class public final Lcom/android/internal/view/RotationPolicy;
.super Ljava/lang/Object;
.source "RotationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
    }
.end annotation


# static fields
.field private static final blacklist CURRENT_ROTATION:I = -0x1

.field public static final blacklist NATURAL_ROTATION:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "RotationPolicy"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static blacklist areAllRotationsAllowed(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ALLOW_ALL_ROTATION:Z

    if-eqz v0, :cond_0

    .line 156
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    return v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist getRotationLockOrientation(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 81
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 83
    .local v0, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getRotationLockOrientation(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RotationPolicy"

    const-string v3, "Unable to get rotation lock orientation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v0    # "wm":Landroid/view/IWindowManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->areAllRotationsAllowed(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    return v1

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 93
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    nop

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 95
    .local v2, "rotation":I
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v1, v4

    .line 96
    .local v1, "rotated":Z
    :cond_1
    if-eqz v1, :cond_2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_2
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 97
    .local v3, "w":I
    :goto_0
    if-eqz v1, :cond_3

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_3
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 98
    .local v5, "h":I
    :goto_1
    if-ge v3, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x2

    :goto_2
    return v4
.end method

.method public static blacklist isRotationLockToggleVisible(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string/jumbo v3, "hide_rotation_lock_toggle_for_accessibility"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 105
    :goto_0
    return v1
.end method

.method public static blacklist isRotationLocked(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static blacklist isRotationSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 63
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "android.hardware.screen.portrait"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "android.hardware.screen.landscape"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 63
    :goto_0
    return v1
.end method

.method public static blacklist registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 185
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    .line 186
    return-void
.end method

.method public static blacklist registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
    .param p2, "userHandle"    # I

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hide_rotation_lock_toggle_for_accessibility"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 200
    return-void
.end method

.method public static blacklist setRotationLock(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 123
    const/4 v0, -0x1

    .line 125
    .local v0, "rotation":I
    invoke-static {p0, p1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    .line 126
    return-void
.end method

.method private static blacklist setRotationLock(ZI)V
    .locals 1
    .param p0, "enabled"    # Z
    .param p1, "rotation"    # I

    .line 163
    new-instance v0, Lcom/android/internal/view/RotationPolicy$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/RotationPolicy$1;-><init>(ZI)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public static blacklist setRotationLockAtAngle(Landroid/content/Context;ZI)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z
    .param p2, "rotation"    # I

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hide_rotation_lock_toggle_for_accessibility"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 137
    invoke-static {p1, p2}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V

    .line 138
    return-void
.end method

.method public static blacklist setRotationLockForAccessibility(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
    const/4 v1, -0x2

    .line 146
    const-string/jumbo v2, "hide_rotation_lock_toggle_for_accessibility"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 150
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V

    .line 151
    return-void
.end method

.method public static blacklist unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 208
    return-void
.end method
