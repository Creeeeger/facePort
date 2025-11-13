.class public final Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallAttributesListener;
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    return-void
.end method


# virtual methods
.method public final onCallStatesChanged(Ljava/util/List;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallStatesChanged: CallStateList = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_6

    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "epdg"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v6, "volte"

    invoke-virtual {v1, v6}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v2, "activevideo"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v4

    :goto_3
    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVolteVideoCall:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVolteWifiCall:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v2, "csincoming"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v2, "csdialing"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v2, "csal!er!ting"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move v4, v5

    :cond_5
    :goto_4
    iput-boolean v4, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsCSCall:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallAttributesChanged state changed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isVoLteCall : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isVolteVideoCall : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVolteVideoCall:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isVolteWifiCall : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVolteWifiCall:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isCSCall : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsCSCall:Z

    invoke-static {v1, p1, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "service state changed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",isRoaming = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
