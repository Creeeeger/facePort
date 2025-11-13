.class public Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;
.super Ljava/lang/Object;
.source "WifiApDailyStackedProgressBarEntries.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mDate:Ljava/util/Date;

.field private mDateInMillis:J

.field private mStackedProgressBarEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->mDateInMillis:J

    .line 19
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->mDate:Ljava/util/Date;

    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->mCalendar:Ljava/util/Calendar;

    .line 21
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->mDate:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 22
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->mStackedProgressBarEntries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCalendar()Ljava/util/Calendar;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public getDateInMillis()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->mDateInMillis:J

    return-wide v0
.end method

.method public getStackedProgressBarEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->mStackedProgressBarEntries:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->mDateInMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") == >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->mStackedProgressBarEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    .line 53
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
