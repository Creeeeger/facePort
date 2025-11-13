.class public final synthetic Lcom/android/settingslib/media/RouterInfoMediaManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/media/RouterInfoMediaManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/media/RouterInfoMediaManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/media/RouterInfoMediaManager;

    check-cast p1, Landroid/media/RouteListingPreference;

    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/RouteListingPreference;->getItems()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/android/settingslib/media/InfoMediaManager$Api34Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/settingslib/media/InfoMediaManager$Api34Impl$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    return-void
.end method
