.class public final Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$2;
.super Landroid/telephony/PhoneStateListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$2;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController$2;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    return-void
.end method
