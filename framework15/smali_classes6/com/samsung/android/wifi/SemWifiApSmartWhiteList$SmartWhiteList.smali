.class public Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
.super Ljava/lang/Object;
.source "SemWifiApSmartWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartWhiteList"
.end annotation


# instance fields
.field private blacklist mDeviceType:I

.field private blacklist mMac:Ljava/lang/String;

.field private blacklist mName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceType(Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mDeviceType:I

    return p0
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mDeviceType:I

    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mMac:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mDeviceType:I

    return-void
.end method


# virtual methods
.method public blacklist getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mDeviceType:I

    return v0
.end method

.method public blacklist getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->mName:Ljava/lang/String;

    return-void
.end method
