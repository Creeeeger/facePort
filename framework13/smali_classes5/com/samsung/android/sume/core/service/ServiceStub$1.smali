.class Lcom/samsung/android/sume/core/service/ServiceStub$1;
.super Ljava/util/TimerTask;
.source "ServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/service/ServiceStub;->onUnbind(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/service/ServiceStub;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/service/ServiceStub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/service/ServiceStub;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/samsung/android/sume/core/service/ServiceStub$1;->this$0:Lcom/samsung/android/sume/core/service/ServiceStub;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceStub$1;->this$0:Lcom/samsung/android/sume/core/service/ServiceStub;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/service/ServiceStub;->stopSelf()V

    return-void
.end method
