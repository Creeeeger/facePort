.class public final enum Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;
.super Ljava/lang/Enum;
.source "SemWifiApClientDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiApClientDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceNameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

.field public static final enum blacklist DEFAULT:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

.field public static final enum blacklist DHCP:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

.field public static final enum blacklist EDITED:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

.field public static final enum blacklist NSD:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;


# instance fields
.field private final blacklist text:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;
    .locals 4

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->DEFAULT:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    sget-object v1, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->DHCP:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    sget-object v2, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->NSD:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    sget-object v3, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->EDITED:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    const/4 v1, 0x0

    const-string v2, "Default"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->DEFAULT:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    new-instance v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    const-string v1, "DHCP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->DHCP:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    new-instance v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    const-string v1, "NSD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->NSD:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    new-instance v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    const/4 v1, 0x3

    const-string v2, "Edited"

    const-string v3, "EDITED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->EDITED:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->$values()[Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->$VALUES:[Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

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

    iput-object p3, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->text:Ljava/lang/String;

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;
    .locals 1

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->$VALUES:[Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    invoke-virtual {v0}, [Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    return-object v0
.end method
