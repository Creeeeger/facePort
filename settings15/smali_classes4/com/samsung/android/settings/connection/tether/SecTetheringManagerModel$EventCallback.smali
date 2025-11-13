.class public final Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel$EventCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel$EventCallback;->this$0:Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;

    return-void
.end method


# virtual methods
.method public final onTetheredInterfacesChanged(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel$EventCallback;->this$0:Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;->mTetheredInterfaces:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
