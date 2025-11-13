.class public final Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusViewAlphaChangeController;


# instance fields
.field public final mListeners:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;->mListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final registerListener(Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusViewAlphaChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;->mListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;->mListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final unregisterAllListener()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;->mListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final unregisterListener(Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusViewAlphaChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;->mListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateAlpha(F)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;->mListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusViewAlphaChangeListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusViewAlphaChangeListener;->onKeyguardStatusViewAlphaChanged(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
