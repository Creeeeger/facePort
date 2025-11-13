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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final whitelist associationFrequencyMHz:I

.field public final whitelist currentRssiDbm:I

.field public final whitelist rxBitrateMbps:I

.field public final whitelist txBitrateMbps:I


# direct methods
.method public constructor blacklist <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    iput p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->txBitrateMbps:I

    iput p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->rxBitrateMbps:I

    iput p4, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->associationFrequencyMHz:I

    return-void
.end method
