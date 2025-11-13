.class public final Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/util/BixbyServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/BixbyServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;->this$0:Lcom/android/systemui/volume/util/BixbyServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;->this$0:Lcom/android/systemui/volume/util/BixbyServiceManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceChecked:Z

    invoke-virtual {v0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->checkBixbyServiceEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn:Z

    iget-object p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;->this$0:Lcom/android/systemui/volume/util/BixbyServiceManager;

    iget-object v0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iget-boolean p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isBixbyServiceOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BixbyServiceManager"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
