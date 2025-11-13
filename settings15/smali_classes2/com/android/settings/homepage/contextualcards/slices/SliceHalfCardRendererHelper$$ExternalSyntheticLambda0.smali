.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

.field public final synthetic f$1:Landroidx/slice/core/SliceAction;

.field public final synthetic f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

.field public final synthetic f$3:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;Landroidx/slice/core/SliceActionImpl;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$$ExternalSyntheticLambda0;->f$1:Landroidx/slice/core/SliceAction;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iput-object p4, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$$ExternalSyntheticLambda0;->f$3:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$$ExternalSyntheticLambda0;->f$1:Landroidx/slice/core/SliceAction;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$$ExternalSyntheticLambda0;->f$3:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v0}, Landroidx/slice/core/SliceAction;->getAction()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to start intent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/slice/core/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SliceHCRendererHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v0, v2, p0}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardClickLog(Lcom/android/settings/homepage/contextualcards/ContextualCard;III)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;->mContext:Landroid/content/Context;

    const/16 v1, 0x682

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
