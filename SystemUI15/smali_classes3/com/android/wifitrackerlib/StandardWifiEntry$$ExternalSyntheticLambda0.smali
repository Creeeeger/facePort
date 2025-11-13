.class public final synthetic Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;->f$0:I

    iget p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/net/wifi/ScanResult;

    iget p1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    if-lt p1, v0, :cond_0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
