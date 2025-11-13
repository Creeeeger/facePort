.class public final Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;
.super Landroid/media/MediaRouter2$RouteCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/media/RouterInfoMediaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;->this$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    invoke-direct {p0}, Landroid/media/MediaRouter2$RouteCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/media/RouterInfoMediaManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;-><init>(Lcom/android/settingslib/media/RouterInfoMediaManager;)V

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
