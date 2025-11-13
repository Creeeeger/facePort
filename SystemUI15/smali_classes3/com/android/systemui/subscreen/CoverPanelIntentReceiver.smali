.class public final Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mClockFaceShowing:Z

.field public final mCollapsePanel:Ljava/lang/Runnable;

.field public final mFilter:Landroid/content/IntentFilter;

.field public mIsInPocket:Z

.field public final mOnPocketModeChanged:Ljava/lang/Runnable;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    iput-boolean v0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mClockFaceShowing:Z

    iput-object p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mOnPocketModeChanged:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mCollapsePanel:Ljava/lang/Runnable;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string p0, "com.samsung.intent.action.KSO_SHOW_POPUP_SUB"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "com.samsung.intent.action.KSO_CLOSE_POPUP_SUB"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "com.samsung.android.app.aodservice.ACTION_COVER_HOME_QUICK_PANEL_TOUCH_AREA_CHANGED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "com.samsung.intent.action.KSO_CLOSE_POPUP_SUB"

    const-string v0, "com.samsung.intent.action.KSO_SHOW_POPUP_SUB"

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v5, "com.samsung.android.app.aodservice.ACTION_COVER_HOME_QUICK_PANEL_TOUCH_AREA_CHANGED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_0

    :sswitch_3
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-boolean v2, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    :cond_5
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    if-eq p1, v1, :cond_6

    iput-boolean v1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    iget-object p0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mOnPocketModeChanged:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :pswitch_1
    const-string p1, "isSmallQuickPanelTouchArea"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mClockFaceShowing:Z

    goto :goto_2

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mCollapsePanel:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1808c879 -> :sswitch_3
        -0x124229c0 -> :sswitch_2
        -0xe3f3456 -> :sswitch_1
        0x6e0473a7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    return-void
.end method
