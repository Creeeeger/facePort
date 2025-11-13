.class public final Landroid/hardware/display/ExynosDisplaySolutionManager;
.super Ljava/lang/Object;
.source "ExynosDisplaySolutionManager.java"


# static fields
.field public static final blacklist HDR_TUNE_PATTERN_CHANGED:Ljava/lang/String; = "com.android.server.display.HDR_TUNE_PATTERN_CHANGED"

.field public static final blacklist HDR_TUNE_PATTERN_COLOR:Ljava/lang/String; = "com.android.server.display.hdr_tune_color"

.field public static final blacklist HDR_TUNE_PATTERN_FORMAT:Ljava/lang/String; = "com.android.server.display.hdr_tune_format"

.field public static final blacklist HDR_TUNE_PATTERN_TYPE:Ljava/lang/String; = "com.android.server.display.hdr_tune_type"

.field private static blacklist RETURN_ERROR:F = 0.0f

.field private static blacklist RETURN_ERROR_INT:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "ExynosDisplaySolutionManager"


# instance fields
.field final blacklist mService:Landroid/hardware/display/IExynosDisplaySolutionManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Landroid/hardware/display/ExynosDisplaySolutionManager;->RETURN_ERROR:F

    const/4 v0, -0x1

    sput v0, Landroid/hardware/display/ExynosDisplaySolutionManager;->RETURN_ERROR_INT:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/display/IExynosDisplaySolutionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    return-void
.end method

.method private blacklist onError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "ExynosDisplaySolutionManager"

    const-string v1, "Error ExynosDisplaySolutionManager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public blacklist getColorEnhancementMode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0}, Landroid/hardware/display/IExynosDisplaySolutionManager;->getColorEnhancementMode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public blacklist setColorEnhancementSettingValue(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setColorEnhancementSettingValue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setColorTempSettingOn(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setColorTempSettingOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setColorTempSettingValue(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setColorTempSettingValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setDisplayFeature(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setDisplayFeature(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setEdgeSharpnessSettingOn(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setEdgeSharpnessSettingOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setEdgeSharpnessSettingValue(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setEdgeSharpnessSettingValue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setEyeTempSettingOn(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setEyeTempSettingOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setEyeTempSettingValue(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setEyeTempSettingValue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setHsvGainSettingOn(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setHsvGainSettingOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setHsvGainSettingValue(III)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setHsvGainSettingValue(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setRgbGainSettingOn(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setRgbGainSettingOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setRgbGainSettingValue(III)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setRgbGainSettingValue(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setRgbWeightSettingOn(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setRgbWeightSettingOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setRgbWeightSettingValue(FFF)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setRgbWeightSettingValue(FFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setSkinColorSettingOn(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setSkinColorSettingOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setWhitePointColorSettingOn(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/ExynosDisplaySolutionManager;->mService:Landroid/hardware/display/IExynosDisplaySolutionManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IExynosDisplaySolutionManager;->setWhitePointColorSettingOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/hardware/display/ExynosDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
