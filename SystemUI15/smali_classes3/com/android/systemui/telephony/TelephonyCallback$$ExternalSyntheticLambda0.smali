.class public final synthetic Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ServiceState;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ServiceState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ServiceState;

    check-cast p1, Landroid/telephony/TelephonyCallback$ServiceStateListener;

    invoke-interface {p1, p0}, Landroid/telephony/TelephonyCallback$ServiceStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method
