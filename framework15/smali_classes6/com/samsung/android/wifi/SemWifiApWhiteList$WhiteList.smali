.class public Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;
.super Ljava/lang/Object;
.source "SemWifiApWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiApWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhiteList"
.end annotation


# instance fields
.field private blacklist mEnable:Z

.field private blacklist mMac:Ljava/lang/String;

.field private blacklist mName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mMac:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mEnable:Z

    return-void
.end method


# virtual methods
.method public blacklist getEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mEnable:Z

    return v0
.end method

.method public blacklist getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mEnable:Z

    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->mName:Ljava/lang/String;

    return-void
.end method
