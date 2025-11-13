.class public Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;
.super Ljava/lang/Object;
.source "BluetoothBlockDevice.java"


# instance fields
.field public address:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;->address:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;->name:Ljava/lang/String;

    return-void
.end method
