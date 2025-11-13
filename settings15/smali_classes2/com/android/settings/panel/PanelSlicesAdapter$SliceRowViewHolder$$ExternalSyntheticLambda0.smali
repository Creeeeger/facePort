.class public final synthetic Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/slice/widget/SliceView$OnSliceActionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

.field public final synthetic f$1:Landroidx/slice/Slice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;Landroidx/slice/Slice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    iput-object p2, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/slice/Slice;

    return-void
.end method


# virtual methods
.method public final onSliceAction(Landroidx/slice/widget/EventInfo;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v2

    iget-object v0, v0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/settings/panel/PanelSlicesAdapter;

    iget v5, v0, Lcom/android/settings/panel/PanelSlicesAdapter;->mMetricsCategory:I

    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/slice/Slice;

    iget-object p0, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    iget v6, p1, Landroidx/slice/widget/EventInfo;->actionType:I

    const/4 v3, 0x0

    const/16 v4, 0x67a

    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
