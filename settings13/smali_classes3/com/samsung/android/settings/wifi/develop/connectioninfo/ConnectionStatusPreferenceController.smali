.class public Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ConnectionStatusPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;
    }
.end annotation


# static fields
.field private static final CU_GRAPH_Y_AXIS_LABEL:[Ljava/lang/String;

.field private static GRAPH_SIZE:I = 0xa

.field private static final RSSI_GRAPH_Y_AXIS_LABEL:[Ljava/lang/String;


# instance fields
.field cuHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

.field private mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;

.field private mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

.field private mCuPref:Landroidx/preference/Preference;

.field private mLinkSpeedPref:Landroidx/preference/Preference;

.field private mRssiGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

.field private mRssiPref:Landroidx/preference/Preference;

.field private mSsidPref:Landroidx/preference/Preference;

.field private mTxRxPref:Landroidx/preference/Preference;

.field rssiHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mupdateView(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->updateView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "0dB"

    const-string v1, "-50dB"

    const-string v2, "-99dB"

    .line 55
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->RSSI_GRAPH_Y_AXIS_LABEL:[Ljava/lang/String;

    const-string v0, "100%"

    const-string v1, "50%"

    const-string v2, "0%"

    .line 56
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->CU_GRAPH_Y_AXIS_LABEL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;Landroidx/lifecycle/Lifecycle;)V
    .locals 12

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const/4 v6, 0x3

    aput-object v3, v1, v6

    const/4 v7, 0x4

    aput-object v3, v1, v7

    const/4 v8, 0x5

    aput-object v3, v1, v8

    const/4 v9, 0x6

    aput-object v3, v1, v9

    const/4 v10, 0x7

    aput-object v3, v1, v10

    const/16 v11, 0x8

    aput-object v3, v1, v11

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->rssiHistory:Ljava/util/List;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v3, v0, v2

    aput-object v3, v0, v4

    aput-object v3, v0, v5

    aput-object v3, v0, v6

    aput-object v3, v0, v7

    aput-object v3, v0, v8

    aput-object v3, v0, v9

    aput-object v3, v0, v10

    aput-object v3, v0, v11

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->cuHistory:Ljava/util/List;

    .line 74
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    .line 75
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;

    .line 76
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private convertCuToGraphScale(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x64

    .line 169
    div-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private convertRssiToGraphScale(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x63

    return p1
.end method

.method private getEmptyList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private getFormattedPacketString()Ljava/lang/String;
    .locals 6

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00#"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getTxSuccess()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    .line 178
    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getRxSuccess()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    .line 179
    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getTxLost()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getTxRetries()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n(Tx success/Rx Success/Tx lost/Tx retries per sec)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateGraphView()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getRssi()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    const/16 v2, -0x63

    if-lt v0, v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->rssiHistory:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->convertRssiToGraphScale(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->rssiHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->GRAPH_SIZE:I

    if-le v0, v2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->rssiHistory:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->rssiHistory:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->updateChartView(Ljava/util/List;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getCu()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->cuHistory:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->convertCuToGraphScale(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->cuHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->GRAPH_SIZE:I

    if-le v0, v2, :cond_2

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->cuHistory:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->cuHistory:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->updateChartView(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private updateView()V
    .locals 5

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionStatusPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiPref:Landroidx/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dBm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiPref:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mLinkSpeedPref:Landroidx/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getLinkSpeed()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Mbps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mTxRxPref:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->getFormattedPacketString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mTxRxPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getCu()I

    move-result v0

    .line 127
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->isCuValid()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuPref:Landroidx/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->convertCuToGraphScale(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    const-string v1, "No network connected."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mTxRxPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 143
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->updateGraphView()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "ssid"

    .line 99
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mSsidPref:Landroidx/preference/Preference;

    const-string v0, "rssi_graph"

    .line 100
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    const-string v0, "rssi"

    .line 101
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiPref:Landroidx/preference/Preference;

    const-string v0, "channel_utilization"

    .line 102
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuPref:Landroidx/preference/Preference;

    const-string v0, "cu_graph"

    .line 103
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    const-string v0, "link_speed"

    .line 104
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mLinkSpeedPref:Landroidx/preference/Preference;

    const-string v0, "tx_rx_data"

    .line 105
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mTxRxPref:Landroidx/preference/Preference;

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mRssiGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->RSSI_GRAPH_Y_AXIS_LABEL:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->setLabelY([Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->CU_GRAPH_Y_AXIS_LABEL:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->setLabelY([Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 110
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mCuGraphPref:Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->unregisterCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController$ConnectionInfoRepoCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->registerCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;)V

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->updateView()V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->getEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->cuHistory:Ljava/util/List;

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->getEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusPreferenceController;->rssiHistory:Ljava/util/List;

    return-void
.end method
