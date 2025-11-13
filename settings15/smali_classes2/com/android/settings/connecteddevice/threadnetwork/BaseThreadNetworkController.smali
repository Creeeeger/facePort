.class public interface abstract Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008g\u0018\u00002\u00020\u0001\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0002\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;",
        "",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# virtual methods
.method public abstract registerStateCallback(Ljava/util/concurrent/Executor;Landroid/net/thread/ThreadNetworkController$StateCallback;)V
.end method

.method public abstract setEnabled(ZLjava/util/concurrent/Executor;Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$setChecked$1;)V
.end method

.method public abstract unregisterStateCallback(Landroid/net/thread/ThreadNetworkController$StateCallback;)V
.end method
