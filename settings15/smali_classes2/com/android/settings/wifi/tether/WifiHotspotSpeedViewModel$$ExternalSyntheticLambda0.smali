.class public final synthetic Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSpeedTypeChanged(), speedType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->log$4(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    iput-object v0, v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsChecked:Ljava/lang/Boolean;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    iput-object v0, v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsChecked:Ljava/lang/Boolean;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    iput-object v0, v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsChecked:Ljava/lang/Boolean;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo6g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    iput-object p1, v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsChecked:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->updateSpeedInfoMapData()V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "on5gAvailableChanged(), available:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiHotspotSpeedViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    iput-boolean v0, v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsEnabled:Z

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->RES_SPEED_5G_SUMMARY:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->RES_SUMMARY_UNAVAILABLE:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mSummary:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->isDualBand()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "on5gAvailableChanged(), showDualBand:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->log$4(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    iput-boolean p1, v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsVisible:Z

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    iput-boolean p1, v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsVisible:Z

    iput-boolean p1, v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsVisible:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->updateSpeedInfoMapData()V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "on6gAvailableChanged(), available:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiHotspotSpeedViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo6g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    iput-boolean v0, v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsEnabled:Z

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->RES_SPEED_6G_SUMMARY:I

    goto :goto_2

    :cond_2
    sget p1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->RES_SUMMARY_UNAVAILABLE:I

    :goto_2
    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mSummary:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->updateSpeedInfoMapData()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
