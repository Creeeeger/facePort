.class public final Lcom/android/systemui/usb/StorageNotification$11;
.super Landroid/os/UEventObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$11;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    const-string v0, "MAJOR"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "179"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "StorageNotification"

    if-eqz v0, :cond_0

    const-string p1, "SDcard Mounted as Read-Only UEVENT."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification$11;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const-string/jumbo p1, "sd"

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/usb/StorageNotification;->showExtStorageReadOnlyMountNoti(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "USB MEMORY Mounted as Read-Only UEVENT."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification$11;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const-string/jumbo p1, "usb"

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/usb/StorageNotification;->showExtStorageReadOnlyMountNoti(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string p0, "WRONG MAJOR Value at Read-Only UEVENT"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
