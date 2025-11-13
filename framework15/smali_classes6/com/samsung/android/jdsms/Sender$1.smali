.class Lcom/samsung/android/jdsms/Sender$1;
.super Ljava/lang/Object;
.source "Sender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/jdsms/Sender;->sendToDsms(Lcom/samsung/android/jdsms/DsmsMessage;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/jdsms/Sender;

.field final synthetic blacklist val$message:Lcom/samsung/android/jdsms/DsmsMessage;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/jdsms/Sender;Lcom/samsung/android/jdsms/DsmsMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/jdsms/Sender$1;->this$0:Lcom/samsung/android/jdsms/Sender;

    iput-object p2, p0, Lcom/samsung/android/jdsms/Sender$1;->val$message:Lcom/samsung/android/jdsms/DsmsMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/jdsms/Sender$1;->this$0:Lcom/samsung/android/jdsms/Sender;

    iget-object v1, p0, Lcom/samsung/android/jdsms/Sender$1;->val$message:Lcom/samsung/android/jdsms/DsmsMessage;

    invoke-static {v0, v1}, Lcom/samsung/android/jdsms/Sender;->-$$Nest$msendMessage(Lcom/samsung/android/jdsms/Sender;Lcom/samsung/android/jdsms/DsmsMessage;)V

    return-void
.end method
