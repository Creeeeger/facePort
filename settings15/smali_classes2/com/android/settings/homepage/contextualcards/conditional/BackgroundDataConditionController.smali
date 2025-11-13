.class public final Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# static fields
.field public static final ID:I


# instance fields
.field public final mAppContext:Landroid/content/Context;

.field public final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field public final mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BackgroundDataConditionController"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    const-string p2, "netpolicy"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkPolicyManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method


# virtual methods
.method public final buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 4

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->ID:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mConditionId:J

    const/16 v1, 0x17a

    iput v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mMetricsConstant:I

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1409ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mActionText:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->mAppContext:Landroid/content/Context;

    const v3, 0x7f1409de

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mTitleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1409dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSummaryText:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0803ca

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const p0, 0x7f0d01d9

    iput p0, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mViewType:I

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p0

    return-object p0
.end method

.method public final getId()J
    .locals 2

    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->ID:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final isDisplayable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p0

    return p0
.end method

.method public final onActionClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    return-void
.end method

.method public final onPrimaryClick(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startMonitoringStateChange()V
    .locals 0

    return-void
.end method

.method public final stopMonitoringStateChange()V
    .locals 0

    return-void
.end method
