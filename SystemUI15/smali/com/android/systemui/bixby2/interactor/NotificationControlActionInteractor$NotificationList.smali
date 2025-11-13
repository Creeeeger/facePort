.class public Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appName"
    .end annotation
.end field

.field private canReply:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "canReply"
    .end annotation
.end field

.field private fgs:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fgs"
    .end annotation
.end field

.field private notiID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notiID"
    .end annotation
.end field

.field private notiText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notiText"
    .end annotation
.end field

.field private notiTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notiTitle"
    .end annotation
.end field

.field private ongoing:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ongoing"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;

.field private when:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "when"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->this$0:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiID:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiText:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->canReply:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->when:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->fgs:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->ongoing:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->appName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public getFgs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->fgs:Ljava/lang/String;

    return-object p0
.end method

.method public getNotiCanReply()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->canReply:Ljava/lang/String;

    return-object p0
.end method

.method public getNotiID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiID:Ljava/lang/String;

    return-object p0
.end method

.method public getNotiText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiText:Ljava/lang/String;

    return-object p0
.end method

.method public getNotiTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getOngoing()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->ongoing:Ljava/lang/String;

    return-object p0
.end method

.method public getWhen()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->when:Ljava/lang/String;

    return-object p0
.end method

.method public setNotiCanReply(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->canReply:Ljava/lang/String;

    return-void
.end method

.method public setNotiID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiID:Ljava/lang/String;

    return-void
.end method

.method public setNotiText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiText:Ljava/lang/String;

    return-void
.end method

.method public setNotiTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$NotificationList;->notiTitle:Ljava/lang/String;

    return-void
.end method
