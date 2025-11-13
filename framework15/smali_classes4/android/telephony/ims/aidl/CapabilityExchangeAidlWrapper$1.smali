.class Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;
.super Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;
.source "CapabilityExchangeAidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;

.field final synthetic blacklist val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
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

    iput-object p1, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;

    iput-object p2, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist respondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;

    invoke-interface {v2, p1, p2}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;->onRespondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist respondToCapabilityRequestWithError(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;

    invoke-interface {v2, p1, p2}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;->onRespondToCapabilityRequestWithError(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    throw v2
.end method
