.class final Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$EthernetListener;
.super Ljava/lang/Object;
.source "EthernetConfigDialog.java"

# interfaces
.implements Landroid/net/EthernetManager$InterfaceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EthernetListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$EthernetListener;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$EthernetListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$EthernetListener;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V

    return-void
.end method


# virtual methods
.method public onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .locals 0

    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "EthernetListener state :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " configuration : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EtherenetSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    .line 205
    sput-object p4, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    :cond_0
    return-void
.end method
