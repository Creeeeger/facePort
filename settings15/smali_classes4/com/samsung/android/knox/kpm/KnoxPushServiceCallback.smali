.class public abstract Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;
    }
.end annotation


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
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;-><init>(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V

    return-object v0
.end method

.method public abstract onRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method

.method public abstract onRegistrationStatus(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method

.method public abstract onUnRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method
