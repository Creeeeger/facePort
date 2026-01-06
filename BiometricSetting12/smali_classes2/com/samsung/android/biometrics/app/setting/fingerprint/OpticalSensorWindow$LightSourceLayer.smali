.class Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;
.super Ljava/lang/Object;
.source "OpticalSensorWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightSourceLayer"
.end annotation


# instance fields
.field private mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

.field private mRotation:I

.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;Landroid/widget/FrameLayout;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-nez v0, :cond_0

    const v0, 0x7f0a0149

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$3100(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mRotation:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->setLightSourceInfo(ILcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;)V

    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->setVisibility(I)V

    return-void
.end method

.method handleRotation(I)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mRotation:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mRotation:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->setLightSourceInfo(ILcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LightSource.setVisibility: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$3200(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->setVisibilityHwLightSource(Z)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->setVisibility(I)V

    :cond_3
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->show()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->hide()V

    :cond_5
    :goto_0
    return-void
.end method

.method public showBlackMaskview()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->showBlackMaskview()V

    :cond_0
    return-void
.end method

.method updateSensorSize()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mLightSourceSurfaceView:Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->mRotation:I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->setLightSourceInfo(ILcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;)V

    :cond_0
    return-void
.end method
