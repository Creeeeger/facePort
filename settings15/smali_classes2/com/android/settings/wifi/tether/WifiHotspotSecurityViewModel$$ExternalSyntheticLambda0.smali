.class public final synthetic Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSpeedTypeChanged(), speedType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->log$3(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->mViewItemMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;

    xor-int/lit8 v3, p1, 0x1

    iput-boolean v3, v2, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;->mIsEnabled:Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->updateViewItemListData()V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSecurityTypeChanged(), securityType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->log$3(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->mViewItemMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;->mIsChecked:Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->updateViewItemListData()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
