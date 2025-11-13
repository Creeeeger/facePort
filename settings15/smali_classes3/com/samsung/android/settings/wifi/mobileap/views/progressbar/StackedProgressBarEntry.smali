.class public final Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mProgressEntryName:Ljava/lang/String;

.field public final mProgressEntryValue:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#FF0000"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->mProgressEntryName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->mProgressEntryValue:F

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " * mProgressEntryName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
