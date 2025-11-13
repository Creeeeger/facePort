.class public Lcom/samsung/wifitrackerlib/WifiScoredNetwork;
.super Ljava/lang/Object;
.source "WifiScoredNetwork.java"


# instance fields
.field public final bssid:Ljava/lang/String;

.field public final levels:[I

.field public final networkType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I[I)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->bssid:Ljava/lang/String;

    .line 57
    iput p2, p0, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->networkType:I

    .line 58
    iput-object p3, p0, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->levels:[I

    return-void
.end method


# virtual methods
.method public calculateRankingScore(I)I
    .locals 2

    const/16 v0, -0x37

    if-lt p1, v0, :cond_0

    .line 75
    iget-object p0, p0, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->levels:[I

    const/4 p1, 0x2

    aget p0, p0, p1

    return p0

    :cond_0
    const/16 v1, -0x41

    if-ge p1, v0, :cond_1

    if-lt p1, v1, :cond_1

    .line 77
    iget-object p0, p0, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->levels:[I

    const/4 p1, 0x1

    aget p0, p0, p1

    return p0

    :cond_1
    if-ge p1, v1, :cond_2

    const/16 v0, -0x4b

    if-lt p1, v0, :cond_2

    .line 79
    iget-object p0, p0, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->levels:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType:"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->networkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", speed:["

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object p0, p0, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->levels:[I

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "]"

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
