.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4;
.super Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final DISPLAY_HEIGHT:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/settings/UserContextProvider;",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Lcom/android/systemui/log/LogBuffer;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;",
            "Lcom/android/systemui/bixby2/controller/NotificationController;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p16}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    const/16 v0, 0x104

    move-object v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4;->DISPLAY_HEIGHT:I

    return-void
.end method


# virtual methods
.method public final bindImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 5

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f07157f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const-string v2, "bindImageBitmap bitmapWidth : "

    const-string v3, " bitmapHeight : "

    const-string v4, " viewWidth : "

    invoke-static {v2, v0, v3, v1, v4}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S.S.N."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v3, 0x140

    int-to-float v3, v3

    mul-float/2addr v3, p0

    const/16 v4, 0x1d0

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    float-to-int v3, p0

    goto :goto_1

    :cond_2
    float-to-int v3, v0

    :goto_1
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    const/4 p0, 0x2

    int-to-float p0, p0

    mul-float/2addr v0, p0

    cmpl-float p0, v1, v0

    if-lez p0, :cond_3

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_2

    :cond_3
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final getDetailAdapterContentViewResource()I
    .locals 0

    const p0, 0x7f0d048a

    return p0
.end method

.method public final getDetailAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-eq p2, p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const p0, 0x7f0d0495

    goto :goto_0

    :cond_1
    const p0, 0x7f0d0493

    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getDetailAdapterReplyWordResource()I
    .locals 0

    const p0, 0x7f0d048e

    return p0
.end method

.method public final getDetailContentImageScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public final getDispalyHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4;->DISPLAY_HEIGHT:I

    return p0
.end method

.method public final getGroupAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    if-eqz p2, :cond_3

    const/4 p0, 0x1

    if-eq p2, p0, :cond_2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x4

    if-eq p2, p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const p0, 0x7f0d049c

    goto :goto_0

    :cond_1
    const p0, 0x7f0d0486

    goto :goto_0

    :cond_2
    const p0, 0x7f0d0484

    goto :goto_0

    :cond_3
    const p0, 0x7f0d049e

    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getListAdapterGroupItemResource()I
    .locals 0

    const p0, 0x7f0d04a7

    return p0
.end method

.method public final getListAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    if-eqz p2, :cond_5

    const/4 p0, 0x1

    if-eq p2, p0, :cond_4

    const/4 p0, 0x2

    if-eq p2, p0, :cond_3

    const/4 p0, 0x3

    if-eq p2, p0, :cond_2

    const/4 p0, 0x4

    if-eq p2, p0, :cond_1

    const/4 p0, 0x5

    if-eq p2, p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const p0, 0x7f0d04a4

    goto :goto_0

    :cond_1
    const p0, 0x7f0d04a9

    goto :goto_0

    :cond_2
    const p0, 0x7f0d0488

    goto :goto_0

    :cond_3
    const p0, 0x7f0d04a2

    goto :goto_0

    :cond_4
    const p0, 0x7f0d0484

    goto :goto_0

    :cond_5
    const p0, 0x7f0d04ab

    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getPopUpViewDismissAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 2

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->topPopupAnimationListener:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        -0x3d720000    # -71.0f
    .end array-data
.end method

.method public final getPopUpViewShowAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 2

    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0

    :array_0
    .array-data 4
        -0x3d720000    # -71.0f
        0x0
    .end array-data
.end method

.method public final getReplyButtonView()Landroid/view/View;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubScreenManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    const v1, 0x7f0d048c

    invoke-virtual {p0, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectedReplyBGColor()I
    .locals 0

    const p0, 0x7f0609c1

    return p0
.end method

.method public final getSubscreenNotificationTipResource()I
    .locals 0

    const p0, 0x7f0d04b4

    return p0
.end method

.method public final hideDetailNotificationIfCallback()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mCallbackClicked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotification()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    :cond_0
    return-void
.end method

.method public final initDetailAdapterItemViewHolder(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->initDetailAdapterItemViewHolder(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    iget-object p0, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyButton:Landroid/widget/TextView;

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$1;

    invoke-direct {p1, p3, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyVoiceButton:Landroid/widget/ImageView;

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$2;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyEmojiButton:Landroid/widget/ImageView;

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$3;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$3;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final isRunOnCoverAvailable()Z
    .locals 1

    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onBindDetailAdapterItemViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->onBindDetailAdapterItemViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mItemPostionInGroup:I

    if-gt v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4;->isRunOnCoverAvailable()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyVoiceEmojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "voice_input_type"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "NAME"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "VALUE"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_1
    move-exception p1

    move v3, v2

    :goto_2
    :try_start_2
    const-string v4, "SubscreenSubRoomNotification"

    const-string v5, "Error while get voice_input_type value "

    invoke-static {v4, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    const/4 p1, 0x1

    if-ne v3, p1, :cond_3

    goto :goto_5

    :cond_3
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :goto_4
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0

    :cond_5
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyButton:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyVoiceEmojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->inflateReplyWord()V

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setEditButton(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    goto :goto_6

    :cond_6
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyVoiceEmojiLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setEditButton(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    :goto_6
    return-void
.end method

.method public final setMarqueeItem(Landroid/widget/TextView;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mMarqueeText:Landroid/widget/TextView;

    :goto_0
    return-void
.end method

.method public final setPopupViewLayout(Landroid/content/Context;ZLandroid/widget/FrameLayout;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0499

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0497

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    return-void
.end method

.method public final setReplyWordTextStyle(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final showReplyButtonViewPopupWindow(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 3

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4;->DISPLAY_HEIGHT:I

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0, p0, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-object v0
.end method

.method public final smallIconPadding(ZZZ)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_1

    const p1, 0x7f0715c7

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f0715ad

    goto :goto_1

    :cond_2
    const p1, 0x7f0715cf

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final squircleRadius(ZZ)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_1

    const p1, 0x7f0715cb

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f0715f2

    goto :goto_1

    :cond_2
    const p1, 0x7f0715eb

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
