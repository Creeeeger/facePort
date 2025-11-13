.class Landroid/telephony/MbmsGroupCallSession$1;
.super Ljava/lang/Object;
.source "MbmsGroupCallSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MbmsGroupCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/MbmsGroupCallSession;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/MbmsGroupCallSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/MbmsGroupCallSession$1;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 3

    invoke-static {}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession$1;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v0}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "Received death notification"

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    return-void
.end method
