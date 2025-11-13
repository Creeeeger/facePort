.class Lcom/android/wifitrackerlib/WifiPickerTracker$2;
.super Ljava/lang/Object;
.source "WifiPickerTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wifitrackerlib/WifiPickerTracker;->notifyOnConfiguredNetworksChanged(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field final synthetic val$isMultipleChanged:Z

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;ZI)V
    .locals 0

    .line 1374
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput-boolean p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->val$isMultipleChanged:Z

    iput p3, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1377
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-static {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->-$$Nest$fgetmSemListener(Lcom/android/wifitrackerlib/WifiPickerTracker;)Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->val$isMultipleChanged:Z

    iget p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->val$reason:I

    invoke-interface {v0, v1, p0}, Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;->onConfiguredNetworksChanged(ZI)V

    return-void
.end method
