.class public abstract Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;
.super Ljava/lang/Object;
.source "DesktopModeManagerInternal.java"


# static fields
.field public static final blacklist MODETOMODE_DUAL_TO_STANDALONE:I = 0x1

.field public static final blacklist MODETOMODE_NONE:I = -0x1

.field public static final blacklist MODETOMODE_STANDALONE_TO_DUAL:I = 0x2

.field public static final blacklist TOUCHPAD_FEATURE_BIT:I = 0x1

.field public static final blacklist TOUCHPAD_FEATURE_NONE:I = 0x0

.field public static final blacklist TOUCHPAD_FEATURE_SPEN_BIT:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getCurrentUiMode()I
.end method

.method public abstract blacklist getDesktopModeKillPolicy()Landroid/os/Bundle;
.end method

.method public abstract blacklist getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
.end method

.method public abstract blacklist getDexHDMIAutoEnterState()I
.end method

.method public abstract blacklist getModeToModeChangeType()I
.end method

.method public abstract blacklist getTouchpadSupportedFeatures()I
.end method

.method public abstract blacklist isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z
.end method

.method public abstract blacklist isDesktopModeAvailableEx(ZZ)Z
.end method

.method public abstract blacklist isDesktopModeEnablingOrEnabled()Z
.end method

.method public abstract blacklist isDesktopModeForPreparing()Z
.end method

.method public abstract blacklist isDesktopModeForPreparing(I)Z
.end method

.method public abstract blacklist isExternalDisplayConnected()Z
.end method

.method public abstract blacklist isForcedInternalScreenModeEnabled()Z
.end method

.method public abstract blacklist isLockTaskModeEnabledAndSecured()Z
.end method

.method public abstract blacklist isModeChangePending()Z
.end method

.method public abstract blacklist isModeChangePending(I)Z
.end method

.method public abstract blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract blacklist onDesktopDisplayConfigured(Z)V
.end method

.method public abstract blacklist onSecuredAppLaunched(ILjava/lang/String;)V
.end method

.method public abstract blacklist scheduleUpdateDesktopMode(Z)V
.end method

.method public abstract blacklist sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract blacklist setDexHDMIAutoEnterState(I)I
.end method

.method public abstract blacklist startHome()V
.end method
