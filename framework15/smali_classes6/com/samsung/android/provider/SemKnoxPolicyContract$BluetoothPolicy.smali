.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$BluetoothPolicy;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothPolicy"
.end annotation


# static fields
.field public static final blacklist BLE_ALLOWED:Ljava/lang/String; = "isBLEAllowed"

.field public static final blacklist BLUETOOTH_ENABLED:Ljava/lang/String; = "isBluetoothEnabled"

.field public static final blacklist NAME:Ljava/lang/String; = "BluetoothPolicy"

.field public static final blacklist URI:Ljava/lang/String; = "content://com.sec.knox.provider/BluetoothPolicy"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
