.class public final synthetic Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/simstatus/EidStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/simstatus/EidStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/deviceinfo/simstatus/EidStatus;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/deviceinfo/simstatus/EidStatus;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/EidStatus;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method
