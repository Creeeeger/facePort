.class public final Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/EthernetManager$InterfaceStateListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;->this$0:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    return-void
.end method


# virtual methods
.method public final onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string p4, "EthernetListener : state :"

    invoke-static {p2, p4, p3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;->this$0:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->-$$Nest$fgetmAvailableInterfaces(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;->this$0:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->-$$Nest$fgetmAvailableInterfaces(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;->this$0:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->updateController()V

    return-void
.end method
