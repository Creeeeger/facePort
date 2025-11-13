.class final Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$EthernetListener;
.super Ljava/lang/Object;
.source "EthernetSettings.java"

# interfaces
.implements Landroid/net/EthernetManager$InterfaceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EthernetListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$EthernetListener;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$EthernetListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$EthernetListener;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;)V

    return-void
.end method


# virtual methods
.method public onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .locals 0

    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " EthernetListener state "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " configuration : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EthernetSettings"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sput-object p4, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->ethConfiguration:Landroid/net/IpConfiguration;

    return-void
.end method
