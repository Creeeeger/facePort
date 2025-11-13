.class public final Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mEventCallback:Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel$EventCallback;

.field public final mTetheredInterfaces:Landroidx/lifecycle/MutableLiveData;

.field public final mTetheringManager:Landroid/net/TetheringManager;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel$EventCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel$EventCallback;-><init>(Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;->mEventCallback:Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel$EventCallback;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;->mTetheredInterfaces:Landroidx/lifecycle/MutableLiveData;

    const-class v1, Landroid/net/TetheringManager;

    invoke-virtual {p1, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetheringManager;

    iput-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;->mTetheringManager:Landroid/net/TetheringManager;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;->mEventCallback:Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel$EventCallback;

    invoke-virtual {v0, p0}, Landroid/net/TetheringManager;->unregisterTetheringEventCallback(Landroid/net/TetheringManager$TetheringEventCallback;)V

    return-void
.end method
