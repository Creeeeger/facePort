.class public Lcom/samsung/android/knox/bluetooth/BluetoothPolicy$BluetoothProfile;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothProfile"
.end annotation


# static fields
.field public static final BLUETOOTH_A2DP_PROFILE:I = 0x8

.field public static final BLUETOOTH_AVRCP_PROFILE:I = 0x10

.field public static final BLUETOOTH_BPP_PROFILE:I = 0x200

.field public static final BLUETOOTH_DUN_PROFILE:I = 0x20

.field public static final BLUETOOTH_FTP_PROFILE:I = 0x40

.field public static final BLUETOOTH_HFP_PROFILE:I = 0x2

.field public static final BLUETOOTH_HSP_PROFILE:I = 0x1

.field public static final BLUETOOTH_PBAP_PROFILE:I = 0x4

.field public static final BLUETOOTH_SAP_PROFILE:I = 0x100

.field public static final BLUETOOTH_SPP_PROFILE:I = 0x80


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy$BluetoothProfile;->this$0:Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
