.class Lcom/samsung/android/settings/connection/ethernet/EthernetLayer$1;
.super Landroid/content/BroadcastReceiver;
.source "EthernetLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/ethernet/EthernetLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetLayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetLayer;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetLayer$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetLayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    return-void
.end method
