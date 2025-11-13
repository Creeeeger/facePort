.class Lcom/android/wifitrackerlib/WifiPickerTracker$1;
.super Ljava/lang/Object;
.source "WifiPickerTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wifitrackerlib/WifiPickerTracker;->notifyOnWifiEntriesChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field final synthetic val$updatedScanResult:Z


# direct methods
.method constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;Z)V
    .locals 0

    .line 1362
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$1;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput-boolean p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$1;->val$updatedScanResult:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$1;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-static {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->-$$Nest$fgetmSemListener(Lcom/android/wifitrackerlib/WifiPickerTracker;)Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$1;->val$updatedScanResult:Z

    invoke-interface {v0, p0}, Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;->onWifiEntriesChanged(Z)V

    return-void
.end method
