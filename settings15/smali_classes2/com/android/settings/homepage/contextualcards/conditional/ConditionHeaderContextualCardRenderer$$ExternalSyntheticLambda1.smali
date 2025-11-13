.class public final synthetic Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

.field public final synthetic f$1:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x175

    const/16 v3, 0x5de

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->mContext:Landroid/content/Context;

    const/4 v0, 0x4

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mIsExpanded:Z

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->onConditionsChanged()V

    return-void
.end method
