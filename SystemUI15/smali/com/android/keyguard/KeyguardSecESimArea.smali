.class Lcom/android/keyguard/KeyguardSecESimArea;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public mESimText:Lcom/android/systemui/widget/SystemUITextView;

.field public final mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mPendingEsimTextVisible:Z

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public final mReceiver:Lcom/android/keyguard/KeyguardSecESimArea$1;

.field public mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public mSubscriptionId:I


# direct methods
.method public static synthetic $r8$lambda$xYLrsvIfM53IKX71aim7tERO9-A(Lcom/android/keyguard/KeyguardSecESimArea;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "onClick - skip button"

    const-string v1, "KeyguardSecEsimArea"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget v3, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mSubscriptionId:I

    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No active subscription with subscriptionId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mSubscriptionId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.keyguard.disable_esim"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/high16 v4, 0xc000000

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v3, v2, v1, v4, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    const/4 v2, -0x1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(IILandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecESimArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecESimArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardSecESimArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mPendingEsimTextVisible:Z

    new-instance p2, Lcom/android/keyguard/KeyguardSecESimArea$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecESimArea$1;-><init>(Lcom/android/keyguard/KeyguardSecESimArea;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mReceiver:Lcom/android/keyguard/KeyguardSecESimArea$1;

    const-string p2, "euicc"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/euicc/EuiccManager;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardSecESimArea;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final eraseSubscriptions()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.keyguard.euicc_reset"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p0, v0}, Landroid/telephony/euicc/EuiccManager;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 8

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mReceiver:Lcom/android/keyguard/KeyguardSecESimArea$1;

    new-instance v3, Landroid/content/IntentFilter;

    const-string p0, "com.android.keyguard.disable_esim"

    invoke-direct {v3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "com.android.systemui.permission.SELF"

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mReceiver:Lcom/android/keyguard/KeyguardSecESimArea$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0427

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecESimArea$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecESimArea$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecESimArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0b75

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const-string v0, "background"

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_0

    const v0, 0x7f080ba8

    goto :goto_0

    :cond_0
    const v0, 0x7f080ba7

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mPendingEsimTextVisible:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mPendingEsimTextVisible:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    const-string p1, "background"

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f080ba8

    goto :goto_0

    :cond_0
    const p1, 0x7f080ba7

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
