.class public final Lcom/android/systemui/doze/DozePauser;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field public mMachine:Lcom/android/systemui/doze/DozeMachine;

.field public final mPauseTimeout:Lcom/android/systemui/util/AlarmTimeout;

.field public final mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/util/AlarmTimeout;

    new-instance v1, Lcom/android/systemui/doze/DozePauser$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozePauser$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozePauser;)V

    const-string v2, "DozePauser"

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozePauser;->mPauseTimeout:Lcom/android/systemui/util/AlarmTimeout;

    iput-object p3, p0, Lcom/android/systemui/doze/DozePauser;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    return-void
.end method


# virtual methods
.method public final setDozeMachine(Lcom/android/systemui/doze/DozeMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozePauser;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-void
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 1

    sget-object p1, Lcom/android/systemui/doze/DozePauser$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    iget-object p2, p0, Lcom/android/systemui/doze/DozePauser;->mPauseTimeout:Lcom/android/systemui/util/AlarmTimeout;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozePauser;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide p0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxScreenOffDelayMs:J

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    :goto_0
    return-void
.end method
