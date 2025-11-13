.class public final synthetic Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;

    return-void
.end method


# virtual methods
.method public final onTabSelected(I)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTabSelectedListener: selectedTab="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyWifi.MainFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mSelectedTabIndex:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->showTab(I)V

    return-void
.end method
