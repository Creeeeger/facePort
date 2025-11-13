.class public Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;
.super Ljava/lang/Object;
.source "StackedProgressBarEntry.java"


# instance fields
.field private mProgressEntryColor:I

.field private mProgressEntryName:Ljava/lang/String;

.field private mProgressEntryValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#FF0000"

    .line 7
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->mProgressEntryColor:I

    .line 17
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->mProgressEntryName:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->mProgressEntryValue:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FI)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;-><init>(Ljava/lang/String;F)V

    .line 13
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->mProgressEntryColor:I

    return-void
.end method


# virtual methods
.method public getProgressEntryName()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->mProgressEntryName:Ljava/lang/String;

    return-object p0
.end method

.method public getProgressEntryValue()F
    .locals 0

    .line 30
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->mProgressEntryValue:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " * mProgressEntryName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->mProgressEntryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mProgressEntryValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->mProgressEntryValue:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
