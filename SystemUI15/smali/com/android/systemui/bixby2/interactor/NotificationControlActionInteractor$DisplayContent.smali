.class public Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appName"
    .end annotation
.end field

.field private notiCount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notiCount"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;->this$0:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;->appName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;->notiCount:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public getNotiCount()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;->notiCount:Ljava/lang/String;

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;->appName:Ljava/lang/String;

    return-void
.end method

.method public setNotiCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$DisplayContent;->notiCount:Ljava/lang/String;

    return-void
.end method
