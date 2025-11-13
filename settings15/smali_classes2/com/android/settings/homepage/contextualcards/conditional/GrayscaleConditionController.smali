.class public final Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# static fields
.field public static final GRAYSCALE_CHANGED_FILTER:Landroid/content/IntentFilter;

.field public static final ID:I


# instance fields
.field public final mAppContext:Landroid/content/Context;

.field public final mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field public final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field public mIntent:Landroid/content/Intent;

.field public final mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GrayscaleConditionController"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->ID:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.action.GRAYSCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->GRAYSCALE_CHANGED_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    const-class p2, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/ColorDisplayManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;

    return-void
.end method


# virtual methods
.method public final buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 4

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->ID:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mConditionId:J

    const/16 v1, 0x693

    iput v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mMetricsConstant:I

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1409ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mActionText:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    const v3, 0x7f1409e9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mTitleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1409e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSummaryText:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    const v1, 0x7f080409

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

    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->ID:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final isDisplayable()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    const v1, 0x7f140a0f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->isSaturationActivated()Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "GrayscaleCondition"

    const-string v1, "Failure parsing grayscale settings intent, skipping"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final onActionClick()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorDisplayManager;->setSaturationLevel(I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.GRAYSCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    return-void
.end method

.method public final onPrimaryClick(Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startMonitoringStateChange()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->GRAYSCALE_CHANGED_FILTER:Landroid/content/IntentFilter;

    const-string v2, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final stopMonitoringStateChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
