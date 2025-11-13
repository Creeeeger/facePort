.class public final synthetic Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;

    return-void
.end method


# virtual methods
.method public final onSpread()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->mControllers:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
