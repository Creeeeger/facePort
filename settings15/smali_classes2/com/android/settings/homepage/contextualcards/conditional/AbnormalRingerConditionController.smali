.class public abstract Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# static fields
.field public static final FILTER:Landroid/content/IntentFilter;


# instance fields
.field public final mAppContext:Landroid/content/Context;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field public final mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mAudioManager:Landroid/media/AudioManager;

    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;

    return-void
.end method


# virtual methods
.method public final onActionClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public final onPrimaryClick(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startMonitoringStateChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mAppContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->FILTER:Landroid/content/IntentFilter;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final stopMonitoringStateChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
