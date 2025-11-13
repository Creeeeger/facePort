.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/slice/widget/SliceView$OnSliceActionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

.field public final synthetic f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

.field public final synthetic f$2:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    return-void
.end method


# virtual methods
.method public final onSliceAction(Landroidx/slice/widget/EventInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Landroidx/slice/widget/EventInfo;->rowIndex:I

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v2

    iget p1, p1, Landroidx/slice/widget/EventInfo;->actionType:I

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-static {p0, v1, p1, v2}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardClickLog(Lcom/android/settings/homepage/contextualcards/ContextualCard;III)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iget-object v0, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    const/16 v1, 0x682

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
