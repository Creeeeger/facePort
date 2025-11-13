.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $event:I

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $stopped:Z

.field public final synthetic $timeLogged:J

.field public final synthetic $timeStarted:J

.field public final synthetic $userId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;Ljava/lang/String;IIJJZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$userId:I

    iput p4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$event:I

    iput-wide p5, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$timeLogged:J

    iput-wide p7, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$timeStarted:J

    iput-boolean p9, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$stopped:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$userId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$event:I

    iget-wide v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$timeLogged:J

    iget-wide v4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$timeStarted:J

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v4

    const/16 v5, 0x1c2

    invoke-virtual {v4, v5}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v4, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v5}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v4, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v4, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v4}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v4}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/FgsManagerControllerImpl;->secFgsManagerController:Lcom/android/systemui/qs/SecFgsManagerController;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$stopped:Z

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$packageName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$timeLogged:J

    iget-wide v5, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;->$timeStarted:J

    sub-long/2addr v3, v5

    const-string/jumbo p0, "saLog[stopped:"

    const-string v5, "]: [uid:"

    const-string v6, "]:[packageName:"

    invoke-static {p0, v0, v5, v1, v6}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]:[duration:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/qs/SecFgsManagerController;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5138"

    invoke-static {p0, v0, v2, v3, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
