.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final broadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$broadcastReceiver$1;

.field public final controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field public final displayListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;

.field public editText:Lcom/android/systemui/widget/SystemUIEditText;

.field public entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public imm:Landroid/view/inputmethod/InputMethodManager;

.field public isForce:Z

.field public isSent:Z

.field public isSms:Z

.field public key:Ljava/lang/String;

.field public maxLength:I

.field public final notifPipeLine:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public prevText:Ljava/lang/CharSequence;

.field public replyLayout:Landroid/widget/LinearLayout;

.field public sendButton:Landroid/widget/ImageView;

.field public signature:Ljava/lang/String;

.field public subRoomNoti:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

.field public toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "SubscreenNotificationReplyActivity"

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->notifPipeLine:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->signature:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->displayListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$broadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$broadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->broadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$broadcastReceiver$1;

    sget-object p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->TAG:Ljava/lang/String;

    const-string p1, "SubscreenNotificationReplyActivity()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final access$performBackClicked(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->replyLayout:Landroid/widget/LinearLayout;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$performBackClicked$lambda$10$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$performBackClicked$lambda$10$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static final access$showExceedTextLimitToast(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130d05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->toast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showExceedTextLimitToast. current text = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x42

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->sendButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->sendButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final enableSendButton()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->sendButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const p0, 0x3ecccccd    # 0.4f

    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v0, 0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    const v1, 0x7f0d04b0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->subRoomNoti:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v3, 0x7f0a09bd

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->replyLayout:Landroid/widget/LinearLayout;

    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v5, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderView(Landroid/widget/LinearLayout;)V

    :cond_1
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->subRoomNoti:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v6, :cond_2

    move-object v6, v4

    :cond_2
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v3, v5, v6, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initMainHeaderViewItems(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Z)V

    :cond_3
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderViewVisibility(I)V

    :cond_4
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setStartedReplyActivity()V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->replyLayout:Landroid/widget/LinearLayout;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v3, "key"

    const-string v5, ""

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->key:Ljava/lang/String;

    const-string v3, "maxLength"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->maxLength:I

    const-string v3, "isSms"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->isSms:Z

    const-string/jumbo v3, "signature"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->signature:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->notifPipeLine:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->maxLength:I

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->isSms:Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->signature:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Reply Info. key = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prevText = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxLength = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSms = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", signature = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, -0x2

    const-string/jumbo v3, "screen_off_timeout"

    const/16 v5, 0x2710

    invoke-static {p1, v3, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_8

    int-to-long v5, p1

    invoke-virtual {v1, v5, v6}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 p1, 0x3

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x7f08141a

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const p1, 0x7f0a013d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const p1, 0x7f0a04d9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_a

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$2$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const p1, 0x7f0a03ed

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/widget/SystemUIEditText;

    if-eqz p1, :cond_b

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;Lcom/android/systemui/widget/SystemUIEditText;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    :cond_b
    move-object p1, v4

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    const p1, 0x7f0a09c1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v4, p1

    :cond_c
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->setPrevText()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->enableSendButton()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_d
    iput-object p0, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyActivity:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->displayListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;

    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    const-class p1, Lcom/android/systemui/statusbar/CommandQueue;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->broadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$broadcastReceiver$1;

    invoke-virtual {p0, v1, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onDestroy()V
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->isSent:Z

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->subRoomNoti:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyActivity:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->isForce:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->replyActivityFinished(Z)V

    :cond_4
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->displayListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->broadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$broadcastReceiver$1;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public final setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    const/4 p1, 0x2

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    :goto_0
    return-void
.end method

.method public final setPrevText()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    if-eqz p0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method
