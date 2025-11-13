.class public final synthetic Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

.field public final synthetic f$1:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field public final synthetic f$2:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;I)V
    .locals 0

    iput p4, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mMetricsConstant:I

    const/16 v3, 0x177

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onPrimaryClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mMetricsConstant:I

    const/16 v3, 0x178

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    iget-object p1, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    iget-object v0, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onActionClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
