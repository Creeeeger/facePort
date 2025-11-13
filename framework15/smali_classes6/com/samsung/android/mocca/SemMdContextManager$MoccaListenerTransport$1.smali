.class Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport$1;
.super Landroid/os/Handler;
.source "SemMdContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;-><init>(Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport$1;->this$0:Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport$1;->this$0:Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;

    invoke-static {v0, p1}, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;->-$$Nest$m_handleMessage(Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;Landroid/os/Message;)V

    return-void
.end method
