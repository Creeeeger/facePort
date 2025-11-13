.class public Lcom/samsung/android/settings/connection/ethernet/EthernetLayer;
.super Ljava/lang/Object;
.source "EthernetLayer.java"


# instance fields
.field private mDialog:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/samsung/android/settings/connection/ethernet/EthernetLayer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetLayer$1;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetLayer;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetLayer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetLayer;->mDialog:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    return-void
.end method
