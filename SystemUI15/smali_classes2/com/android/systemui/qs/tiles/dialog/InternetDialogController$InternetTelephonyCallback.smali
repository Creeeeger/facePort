.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
.implements Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;
.implements Landroid/telephony/TelephonyCallback$CarrierNetworkListener;


# instance fields
.field public final mSubId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    iput p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;->mSubId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;I)V

    return-void
.end method


# virtual methods
.method public final onCarrierNetworkChange(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCarrierNetworkChangeMode:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onDataConnectionStateChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;

    const/16 p2, 0xb

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyDisplayInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onUserMobileDataStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
