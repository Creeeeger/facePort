.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    const-string v4, " TIMEOUT Run Parent POPUPVIEW - RELEASE DOZE STATE - TIMEOUT : "

    const-string v5, " ,popupViewShowing : "

    const-string v6, " , mNotiPopupView : "

    invoke-static {v4, v1, v5, v6, v3}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S.S.N."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getPopUpViewDismissAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationShowing:Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v4, :cond_2

    iget-object v2, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    :cond_2
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateWakeLock(ZZ)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    return-void
.end method
