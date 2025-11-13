.class public final Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;
.implements Landroid/hardware/display/NightDisplayListener$Callback;


# static fields
.field public static final ID:I


# instance fields
.field public final mAppContext:Landroid/content/Context;

.field public final mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field public final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field public final mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NightDisplayConditionController"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    const-class p2, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/ColorDisplayManager;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    new-instance p2, Landroid/hardware/display/NightDisplayListener;

    invoke-direct {p2, p1}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    return-void
.end method


# virtual methods
.method public final buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 4

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->ID:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mConditionId:J

    const/16 v1, 0x1ec

    iput v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mMetricsConstant:I

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1409ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mActionText:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mAppContext:Landroid/content/Context;

    const v3, 0x7f1409ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mTitleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1409eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSummaryText:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0805f9

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

    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->ID:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final isDisplayable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result p0

    return p0
.end method

.method public final onActionClick()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayActivated(Z)Z

    return-void
.end method

.method public final onActivated(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    return-void
.end method

.method public final onPrimaryClick(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/display/NightDisplaySettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 p1, 0x5de

    iput p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 p1, 0x0

    const v0, 0x7f141a1e

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final startMonitoringStateChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method

.method public final stopMonitoringStateChange()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method
