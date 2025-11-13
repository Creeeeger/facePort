.class public final synthetic Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onKeyguardVisibilityHelperChanged(I)V
    :try_end_0
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/UndeclaredThrowableException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
