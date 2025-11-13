.class public Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mAppUid:I

.field public mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

.field public mDelegatePkg:Ljava/lang/String;

.field public mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field public mIsDeviceProvisioned:Z

.field public mIsNonBlockable:Z

.field public mNotificationChannel:Landroid/app/NotificationChannel;

.field public final mOnDone:Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo$$ExternalSyntheticLambda0;

.field public mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;

.field public mPackageName:Ljava/lang/String;

.field public mPkgIcon:Landroid/graphics/drawable/Drawable;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mPresentingChannelEditorDialog:Z

.field public mSbn:Landroid/service/notification/StatusBarNotification;

.field mSkipPost:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mPresentingChannelEditorDialog:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mSkipPost:Z

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mOnDone:Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final getActualHeight()I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final handleCloseControls(ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAnimating()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final needsFalsingProtection()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public final onFinishedClosing()V
    .locals 0

    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mAppName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f130d1c

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mAppName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f130d1b

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mSkipPost:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public final shouldBeSavedOnClose()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final willBeRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
