.class public final Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$1;
.super Lcom/android/settings/network/GlobalSettingsChangeListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$1;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    const-string p1, "multi_sim_data_call"

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/GlobalSettingsChangeListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onChanged$1()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$1;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    iget-object v0, v0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mAppContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$1;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mSubId:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mSubId:I

    iget-boolean v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mIsListeningConnectionChange:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mIsListeningConnectionChange:Z

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mPhoneStateListener:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$2;

    invoke-virtual {v3, v4, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mIsListeningConnectionChange:Z

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_1
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v0, 0x1000

    invoke-virtual {p0, v4, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    return-void
.end method
