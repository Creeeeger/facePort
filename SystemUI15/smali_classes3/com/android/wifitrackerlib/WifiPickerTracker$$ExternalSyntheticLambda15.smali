.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda15;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda15;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda15;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda15;->f$1:I

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mListener:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

    invoke-interface {v0, p0}, Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;->onWifiEntriesChanged(I)V

    return-void
.end method
