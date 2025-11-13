.class public Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"


# instance fields
.field mApCountryCode:Ljava/lang/String;

.field mBssid:Ljava/lang/String;

.field mChannelUtilization:I

.field mDns1:Ljava/lang/String;

.field mDns2:Ljava/lang/String;

.field mDnsResults:Ljava/lang/String;

.field mFrequency:I

.field mGateway:Ljava/lang/String;

.field mIpAddress:Ljava/lang/String;

.field mIsConnected:Z

.field mKVR:I

.field mLinkSpeed:I

.field mModulation:Ljava/lang/String;

.field mNetworkPrefixLength:Ljava/lang/String;

.field mProtocol:Ljava/lang/String;

.field mRssi:I

.field mRxSuccess:D

.field mSecurityType:I

.field mSsid:Ljava/lang/String;

.field mStaCountryCode:Ljava/lang/String;

.field mTcpAllSocketStatistic:Ljava/lang/String;

.field mTcpForegroundSocketStatistic:Ljava/lang/String;

.field mTxLost:D

.field mTxRetries:D

.field mTxSuccess:D

.field mWifiGeneration:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mChannelUtilization:I

    return-void
.end method
