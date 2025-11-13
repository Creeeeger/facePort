.class public Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;
.super Ljava/lang/Object;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignalPollResult"
.end annotation


# instance fields
.field public final whitelist associationFrequencyMHz:I

.field public final whitelist currentRssiDbm:I

.field public final whitelist rxBitrateMbps:I

.field public final whitelist txBitrateMbps:I


# direct methods
.method public constructor blacklist <init>(IIII)V
    .locals 0
    .param p1, "currentRssiDbm"    # I
    .param p2, "txBitrateMbps"    # I
    .param p3, "rxBitrateMbps"    # I
    .param p4, "associationFrequencyMHz"    # I

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    .line 254
    iput p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->txBitrateMbps:I

    .line 255
    iput p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->rxBitrateMbps:I

    .line 256
    iput p4, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->associationFrequencyMHz:I

    .line 257
    return-void
.end method
