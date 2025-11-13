.class public final Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mCurrIndicationType:I

.field public mCurrMessage:Ljava/lang/CharSequence;

.field public final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mIndicationMessages:Ljava/util/Map;

.field public final mIndicationQueue:Ljava/util/List;

.field public final mInitialTextColorState:Landroid/content/res/ColorStateList;

.field public mIsDozing:Z

.field public mLastIndicationSwitch:J

.field public final mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

.field public final mMaxAlpha:F

.field mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;-><init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateListener:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;

    invoke-virtual {p1}, Landroid/widget/TextView;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mMaxAlpha:F

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static indicationTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "unknown["

    const-string v1, "]"

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "adaptive_auth"

    return-object p0

    :pswitch_2
    const-string p0, "biometric_message_followup"

    return-object p0

    :pswitch_3
    const-string p0, "biometric_message"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "reverse_charging"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "user_locked"

    return-object p0

    :pswitch_6
    const-string p0, "persistent_unlock_message"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "trust"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "transient"

    return-object p0

    :pswitch_9
    const-string p0, "alignment"

    return-object p0

    :pswitch_a
    const-string p0, "battery"

    return-object p0

    :pswitch_b
    const-string p0, "logout"

    return-object p0

    :pswitch_c
    const-string p0, "disclosure"

    return-object p0

    :pswitch_d
    const-string p0, "owner_info"

    return-object p0

    :pswitch_e
    const-string p0, "none"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final clearMessages()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->clearMessages()V

    return-void
.end method

.method public final destroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->destroy()V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->onViewDetached()V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p2, "KeyguardIndicationRotatingTextViewController:"

    const-string v0, "    currentTextViewMessage="

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    currentStoredMessage="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    dozing:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIsDozing:Z

    const-string v1, "    queue:"

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    showNextIndicationRunnable:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-lez p2, :cond_0

    const-string p2, "    All messages:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "        type="

    const-string v3, " "

    invoke-static {v1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final hideIndication(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardIndication;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateListener:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAlwaysAnnounceText:Z

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateListener:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Ljava/lang/Runnable;

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    :cond_1
    return-void
.end method

.method public final showIndication(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Ljava/lang/Runnable;

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrMessage:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardIndication;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrMessage:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    new-instance v4, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;-><init>(II)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mLastIndicationSwitch:J

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrMessage:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    if-eq v2, v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    invoke-virtual {v2, p1, v0}, Lcom/android/keyguard/logging/KeyguardLogger;->logKeyguardSwitchIndication(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardIndication;

    if-nez v2, :cond_6

    move-object v3, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    :cond_7
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    if-eq v0, v4, :cond_c

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_c

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardIndication;

    const-wide/16 v2, 0x0

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardIndication;->mMinVisibilityMillis:Ljava/lang/Long;

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_3
    const-wide/16 v4, 0xdac

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    if-eqz p1, :cond_b

    iget-object v0, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Ljava/lang/Runnable;

    :cond_a
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    :cond_b
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    invoke-direct {p1, p0, v2, v3}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;-><init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;J)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    :cond_c
    return-void
.end method

.method public final updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V
    .locals 11

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardIndication;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    :goto_0
    move-wide v4, v2

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardIndication;->mMinVisibilityMillis:Ljava/lang/Long;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1
    const/4 v1, 0x0

    if-eqz p2, :cond_4

    iget-object v6, p2, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v0

    goto :goto_2

    :cond_4
    move v6, v1

    :goto_2
    if-nez v6, :cond_5

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    new-instance v7, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;-><init>(II)V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v8, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIsDozing:Z

    if-eqz p2, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mLastIndicationSwitch:J

    sub-long/2addr v7, v9

    cmp-long p2, v7, v4

    if-ltz p2, :cond_8

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    const/4 p2, 0x0

    const/4 v9, -0x1

    if-eqz v6, :cond_15

    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    if-eq v6, v9, :cond_14

    if-ne v6, p1, :cond_9

    goto/16 :goto_6

    :cond_9
    if-eqz p3, :cond_d

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    goto/16 :goto_7

    :cond_a
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;-><init>(II)V

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sub-long/2addr v4, v7

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    if-eqz p1, :cond_c

    iget-object p3, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_b

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    iput-object p2, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Ljava/lang/Runnable;

    :cond_b
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    :cond_c
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    invoke-direct {p1, p0, v4, v5}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;-><init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;J)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    goto :goto_7

    :cond_d
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    if-eqz p3, :cond_e

    goto :goto_7

    :cond_e
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/keyguard/KeyguardIndication;

    if-nez p3, :cond_f

    goto :goto_5

    :cond_f
    iget-object p3, p3, Lcom/android/systemui/keyguard/KeyguardIndication;->mMinVisibilityMillis:Ljava/lang/Long;

    if-nez p3, :cond_10

    goto :goto_5

    :cond_10
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_5
    const-wide/16 v0, 0xdac

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long p3, v7, v0

    if-ltz p3, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    goto :goto_7

    :cond_11
    sub-long/2addr v0, v7

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    if-eqz p1, :cond_13

    iget-object p3, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_12

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    iput-object p2, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Ljava/lang/Runnable;

    :cond_12
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    :cond_13
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;-><init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;J)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    goto :goto_7

    :cond_14
    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    :goto_7
    return-void

    :cond_15
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    if-ne v0, p1, :cond_18

    if-nez v6, :cond_18

    if-eqz p3, :cond_18

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    if-eqz p1, :cond_17

    iget-object p0, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_16

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    iput-object p2, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Ljava/lang/Runnable;

    :cond_16
    iget-object p0, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mShowIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication$$ExternalSyntheticLambda0;->run()V

    goto :goto_8

    :cond_17
    invoke-virtual {p0, v9}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    :cond_18
    :goto_8
    return-void
.end method
