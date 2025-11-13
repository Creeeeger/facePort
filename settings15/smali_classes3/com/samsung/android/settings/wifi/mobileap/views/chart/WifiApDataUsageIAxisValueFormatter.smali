.class public final Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDataUsageUnit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MB"

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getFormattedValue(F)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GB"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;->mContext:Landroid/content/Context;

    const v0, 0x7f143412

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;->mContext:Landroid/content/Context;

    const v0, 0x7f143413

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
