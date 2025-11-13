.class public final Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;
.super Landroid/media/MediaRouter2$RouteCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/media/RouterInfoMediaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    invoke-direct {p0}, Landroid/media/MediaRouter2$RouteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferredFeaturesChanged(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    return-void
.end method

.method public final onRoutesUpdated(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    return-void
.end method
