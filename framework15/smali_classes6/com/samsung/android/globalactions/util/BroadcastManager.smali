.class public Lcom/samsung/android/globalactions/util/BroadcastManager;
.super Ljava/lang/Object;
.source "BroadcastManager.java"


# static fields
.field public static final blacklist ACTION_KEYGUARD_STATE_UPDATE:Ljava/lang/String; = "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

.field public static final blacklist ACTION_POWER_OFF_ANIMATION_START:Ljava/lang/String; = "POWER_OFF_ANIMATION_START"

.field public static final blacklist ACTION_POWER_OFF_CANCEL:Ljava/lang/String; = "POWER_OFF_CANCEL"

.field public static final blacklist ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field public static final blacklist ACTION_TALKBACK_TOGGLED:Ljava/lang/String; = "com.samsung.settings.action.talkback_toggled"

.field public static final blacklist SYSTEM_DIALOG_REASON_DREAM:Ljava/lang/String; = "dream"

.field public static final blacklist SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final blacklist TAG:Ljava/lang/String; = "BroadcastManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDismissBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field private blacklist mKeyguardShowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private blacklist mSecureConfirmBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandlerUtil(Lcom/samsung/android/globalactions/util/BroadcastManager;)Lcom/samsung/android/globalactions/util/HandlerUtil;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogWrapper(Lcom/samsung/android/globalactions/util/BroadcastManager;)Lcom/samsung/android/globalactions/util/LogWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p3, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    return-void
.end method


# virtual methods
.method public blacklist registerDismissActions(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "POWER_OFF_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/globalactions/util/BroadcastManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/globalactions/util/BroadcastManager$1;-><init>(Lcom/samsung/android/globalactions/util/BroadcastManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mDismissBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mDismissBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public blacklist registerSecureConfirmAction(Ljava/lang/Runnable;)V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/globalactions/util/BroadcastManager$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/globalactions/util/BroadcastManager$2;-><init>(Lcom/samsung/android/globalactions/util/BroadcastManager;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mSecureConfirmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mSecureConfirmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public blacklist unregisterDismissBroadcastReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mDismissBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mDismissBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mDismissBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public blacklist unregisterSecureConfirmBroadcastReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mSecureConfirmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mSecureConfirmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/BroadcastManager;->mSecureConfirmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
