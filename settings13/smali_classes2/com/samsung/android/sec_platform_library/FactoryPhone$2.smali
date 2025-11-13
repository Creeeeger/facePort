.class Lcom/samsung/android/sec_platform_library/FactoryPhone$2;
.super Landroid/os/Handler;
.source "FactoryPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sec_platform_library/FactoryPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;


# direct methods
.method constructor <init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetHOST_NAME(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " response handler does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetHOST_NAME(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " dummy handler : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {p1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetHOST_NAME(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " dummy handler : BASE_ID"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
