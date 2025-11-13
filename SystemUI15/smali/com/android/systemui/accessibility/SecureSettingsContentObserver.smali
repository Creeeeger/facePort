.class public abstract Lcom/android/systemui/accessibility/SecureSettingsContentObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final mContentObserver:Landroid/database/ContentObserver;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mKey:Ljava/lang/String;

.field final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance p1, Lcom/android/systemui/accessibility/SecureSettingsContentObserver$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver$1;-><init>(Lcom/android/systemui/accessibility/SecureSettingsContentObserver;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "listener must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    return-void
.end method

.method public final getSettingsValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mKey:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract onValueChanged(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public final removeListener(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "listener must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
