.class Lcom/samsung/android/service/ProtectedATCommand/Device$1;
.super Ljava/util/TimerTask;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/service/ProtectedATCommand/Device;->clearTokenCache()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/service/ProtectedATCommand/Device;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/service/ProtectedATCommand/Device;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/Device$1;->this$0:Lcom/samsung/android/service/ProtectedATCommand/Device;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/Device$1;->this$0:Lcom/samsung/android/service/ProtectedATCommand/Device;

    invoke-static {v0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->-$$Nest$fgetmCache(Lcom/samsung/android/service/ProtectedATCommand/Device;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method
