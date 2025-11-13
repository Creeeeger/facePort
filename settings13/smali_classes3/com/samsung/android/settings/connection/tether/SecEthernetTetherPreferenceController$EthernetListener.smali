.class final Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;
.super Ljava/lang/Object;
.source "SecEthernetTetherPreferenceController.java"

# interfaces
.implements Landroid/net/EthernetManager$InterfaceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EthernetListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;->this$0:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;-><init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .locals 1

    .line 286
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EthernetListener : state :"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 288
    iget-object p2, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;->this$0:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->-$$Nest$fgetmAvailableInterfaces(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;->this$0:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->-$$Nest$fgetmAvailableInterfaces(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 292
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;->this$0:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->updateController()V

    return-void
.end method
