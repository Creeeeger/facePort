.class public final synthetic Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;

    return-void
.end method


# virtual methods
.method public final onTabSelected(I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mCurrentTabIndex:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->mTabPreference:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;

    iput p1, v0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;->mPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationFragment;->updateWifiEntries$4()V

    return-void
.end method
