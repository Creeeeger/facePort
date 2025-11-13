.class public final Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;


# instance fields
.field public plugin:Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;I)V

    const-class p1, Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary$1;-><init>(Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;->plugin:Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    return-void
.end method
