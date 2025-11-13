.class public final synthetic Lcom/android/settings/network/tether/TetherSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/tether/TetherSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/tether/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/tether/TetherSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/tether/TetherSettings;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/tether/TetherSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTetheredInterfacesChanged() interfaces : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TetheringSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/tether/TetherSettings;->updateUsbState([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->updateBluetoothState$1()V

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/network/tether/TetherSettings;->updateEthernetState([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
