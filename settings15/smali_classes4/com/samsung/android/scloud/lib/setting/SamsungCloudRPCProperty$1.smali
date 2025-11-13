.class public final Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCProperty$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# instance fields
.field public final synthetic val$initCompletedCountDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCProperty$1;->val$initCompletedCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 1

    const-string p1, "SamsungCloudRPCProperty"

    const-string v0, "initCompletedListner: notified"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCProperty;->pcs:Ljava/beans/PropertyChangeSupport;

    const-string v0, "app_initialization_completed"

    invoke-virtual {p1, v0, p0}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCProperty$1;->val$initCompletedCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
