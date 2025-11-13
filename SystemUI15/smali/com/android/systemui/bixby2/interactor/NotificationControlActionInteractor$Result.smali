.class public Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private contentForDisplay:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentForDisplay"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;",
            ">;"
        }
    .end annotation
.end field

.field private itemCount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "itemCount"
    .end annotation
.end field

.field private notificationContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notificationContent"
    .end annotation
.end field

.field private notificationList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notificationList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->this$0:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->this$0:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->result:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->notificationContent:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->itemCount:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentForDisplay()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->contentForDisplay:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->itemCount:Ljava/lang/String;

    return-object p0
.end method

.method public getNotificationContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->notificationContent:Ljava/lang/String;

    return-object p0
.end method

.method public getNotificationList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->notificationList:Ljava/util/List;

    return-object p0
.end method

.method public getResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->result:Ljava/lang/String;

    return-object p0
.end method

.method public setContentForDisplay(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->contentForDisplay:Ljava/util/List;

    return-void
.end method

.method public setItemCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->itemCount:Ljava/lang/String;

    return-void
.end method

.method public setNotificationContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->notificationContent:Ljava/lang/String;

    return-void
.end method

.method public setNotificationList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->notificationList:Ljava/util/List;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Result;->result:Ljava/lang/String;

    return-void
.end method
