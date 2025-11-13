.class public final Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# static fields
.field public static final FILTER:Landroid/content/IntentFilter;

.field public static final ID:I


# instance fields
.field public final mAppContext:Landroid/content/Context;

.field public final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public final mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController$Receiver;

.field public final mUm:Landroid/os/UserManager;

.field public mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WorkModeConditionController"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->ID:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mAppContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mUm:Landroid/os/UserManager;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController$Receiver;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController$Receiver;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController$Receiver;

    return-void
.end method


# virtual methods
.method public final buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;)V

    const-string v2, "Settings.WORK_PROFILE_OFF_CONDITION_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget v2, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->ID:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mConditionId:J

    const/16 v2, 0x17f

    iput v2, v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mMetricsConstant:I

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mAppContext:Landroid/content/Context;

    const v3, 0x7f1409ee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mActionText:Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mTitleText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1409ef

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSummaryText:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mAppContext:Landroid/content/Context;

    const v0, 0x7f080621

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const p0, 0x7f0d01d9

    iput p0, v1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mViewType:I

    invoke-virtual {v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p0

    return-object p0
.end method

.method public final getId()J
    .locals 2

    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->ID:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final isDisplayable()Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mUserHandle:Landroid/os/UserHandle;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public final onActionClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    :cond_0
    return-void
.end method

.method public final onPrimaryClick(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/Settings$AccountDashboardActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startMonitoringStateChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mAppContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->FILTER:Landroid/content/IntentFilter;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController$Receiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final stopMonitoringStateChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController$Receiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
