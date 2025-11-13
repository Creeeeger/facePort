.class public final synthetic Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mSubscriptionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
