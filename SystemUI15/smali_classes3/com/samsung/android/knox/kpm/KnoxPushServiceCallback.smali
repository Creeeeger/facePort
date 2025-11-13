.class public abstract Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String; = "KnoxPushServiceCallback"


# instance fields
.field public acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    return-void
.end method


# virtual methods
.method public final getKnoxPushServiceCb()Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;-><init>(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;I)V

    return-object v0
.end method

.method public abstract onRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method

.method public abstract onRegistrationStatus(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method

.method public abstract onUnRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method
