.class public final enum Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;
.super Ljava/lang/Enum;
.source "SemWifiApClientDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiApClientDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceIpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

.field public static final enum blacklist DYNAMIC:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

.field public static final enum blacklist STATIC:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

.field public static final enum blacklist UNKNOWN:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;


# instance fields
.field private final blacklist text:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;
    .locals 3

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->UNKNOWN:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    sget-object v1, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->STATIC:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    sget-object v2, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->DYNAMIC:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->UNKNOWN:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    new-instance v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    const/4 v1, 0x1

    const-string v2, "Static"

    const-string v3, "STATIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->STATIC:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    new-instance v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    const/4 v1, 0x2

    const-string v2, "Dynamic"

    const-string v3, "DYNAMIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->DYNAMIC:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->$values()[Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->$VALUES:[Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->text:Ljava/lang/String;

    return-void
.end method

.method public static blacklist getIpTypeFromInt(I)Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->UNKNOWN:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->STATIC:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->DYNAMIC:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getIpTypeInt(Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;
    .locals 1

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->$VALUES:[Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    invoke-virtual {v0}, [Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    return-object v0
.end method
