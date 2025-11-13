.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$Temp;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Temp"
.end annotation


# static fields
.field public static final ACTION_REQUEST_VERSION:Ljava/lang/String; = "com.samsung.android.knox.ex.peripheral.TEMP_ACTION_REQUEST_VERSION"

.field public static final ACTION_REQUEST_VERSION_RELAY:Ljava/lang/String; = "com.samsung.android.knox.ex.peripheral.TEMP_ACTION_REQUEST_VERSION_RELAY"

.field public static final ACTION_RESPONSE_VERSION:Ljava/lang/String; = "com.samsung.android.knox.ex.peripheral.TEMP_ACTION_RESPONSE_VERSION"

.field public static final ACTION_RESPONSE_VERSION_RELAY:Ljava/lang/String; = "com.samsung.android.knox.ex.peripheral.TEMP_ACTION_RESPONSE_VERSION_RELAY"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final EXTRA_PACKAGE_VERSION:Ljava/lang/String; = "packageVersion"

.field public static final EXTRA_SDK_VERSION:Ljava/lang/String; = "sdkVersion"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "PeripheralSDK-1.0.2.02"

    return-object v0
.end method
