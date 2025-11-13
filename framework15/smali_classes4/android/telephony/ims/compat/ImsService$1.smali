.class Landroid/telephony/ims/compat/ImsService$1;
.super Lcom/android/ims/internal/IImsServiceController$Stub;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/compat/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/compat/ImsService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/compat/ImsService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$maddImsFeatureStatusCallback(Landroid/telephony/ims/compat/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method public blacklist createEmergencyMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mcreateEmergencyMMTelFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mcreateMMTelFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createRcsFeature(I)Lcom/android/ims/internal/IImsRcsFeature;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mcreateRcsFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mremoveImsFeatureStatusCallback(Landroid/telephony/ims/compat/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method public blacklist removeImsFeature(II)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService$1;->this$0:Landroid/telephony/ims/compat/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->-$$Nest$mremoveImsFeature(Landroid/telephony/ims/compat/ImsService;II)V

    return-void
.end method
