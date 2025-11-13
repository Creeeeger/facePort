.class public Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;
.super Landroidx/preference/SecPreferenceScreen;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCriticalCount:I

.field public final mCurrentSaLogStatusMap:Ljava/util/Map;

.field public final mExpandableMenusStatus:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public mIsScanning:Z

.field public final mOnGlobalLayoutListener:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;

.field public mOverallStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public final mOverallStatusMap:Ljava/util/Map;

.field public mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mStatusIconView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mStatusSubTextView:Landroid/widget/TextView;

.field public mStatusTextView:Landroid/widget/TextView;

.field public mStatusViewLayout:Landroid/view/View;

.field public mWarningCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOverallStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mExpandableMenusStatus:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOverallStatusMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mCurrentSaLogStatusMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;-><init>(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOnGlobalLayoutListener:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;

    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0d0aae

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0d84

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusViewLayout:Landroid/view/View;

    const v0, 0x7f0a0f02

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a0f03

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a0f05

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0f04

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusSubTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOverallStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mCriticalCount:I

    iget v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mWarningCount:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setStatusView(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIZ)V

    return-void
.end method

.method public final setMenuStatus(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mExpandableMenusStatus:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOverallStatusMap:Ljava/util/Map;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setScanning(ZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mIsScanning:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mIsScanning:Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setupStatus(Z)V

    :goto_0
    return-void
.end method

.method public final setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", criticalCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", warningCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityDashboardStatusPreference"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOverallStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iput p2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mCriticalCount:I

    iput p3, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mWarningCount:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setStatusView(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIZ)V

    return-void
.end method

.method public final setStatusView(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIZ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusSubTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOnGlobalLayoutListener:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusSubTextView:Landroid/widget/TextView;

    const v1, 0x7f142964

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusSubTextView:Landroid/widget/TextView;

    const v1, 0x7f142971

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusSubTextView:Landroid/widget/TextView;

    const v1, 0x7f142929

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mIsScanning:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-eq p1, v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/preference/Preference;->isShown()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v0, :cond_a

    const/4 v0, 0x2

    const/16 v4, 0x8

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    if-eq p1, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p4, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo p3, "state_warning.json"

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    const p3, 0x7f080a5a

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f14291e

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const v0, 0x7f12005c

    invoke-virtual {p3, v0, p2, p4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusSubTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p4, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo p2, "state_suggesion.json"

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f080a5b

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f14291d

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const v0, 0x7f12005b

    invoke-virtual {p2, v0, p3, p4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusSubTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p4, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo p2, "state_good.json"

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f080a59

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f14291c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusTextView:Landroid/widget/TextView;

    const p2, 0x7f14295f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusSubTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0805c3

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->updateScanCategoryIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconBGView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0607ba

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusTextView:Landroid/widget/TextView;

    const p2, 0x7f14296c

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusSubTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final setupStatus(Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mExpandableMenusStatus:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v4, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    sget-object v5, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    move-object v4, v5

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_1
    invoke-virtual {p0, v4, v1, v2, p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIZ)V

    return-void
.end method

.method public final updateScanCategoryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f060b2a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
