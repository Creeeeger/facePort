.class public final Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyConfig;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "privacy"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "camera_mic_icons_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyConfig;->callbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/privacy/PrivacyConfig$Callback;

    if-eqz v3, :cond_0

    iget-boolean v4, v0, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    invoke-interface {v3, v4}, Lcom/android/systemui/privacy/PrivacyConfig$Callback;->onFlagMicCameraChanged(Z)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/ScRune;->QUICK_SUPPORT_LOCATION_PRIVACY_CHIP:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "location_indicators_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyConfig;->callbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/privacy/PrivacyConfig$Callback;

    if-eqz v3, :cond_2

    iget-boolean v4, v0, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    invoke-interface {v3, v4}, Lcom/android/systemui/privacy/PrivacyConfig$Callback;->onFlagLocationChanged(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "media_projection_indicators_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/privacy/PrivacyConfig;->mediaProjectionAvailable:Z

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyConfig;->callbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/privacy/PrivacyConfig$Callback;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/android/systemui/privacy/PrivacyConfig$Callback;->onFlagMediaProjectionChanged()V

    goto :goto_2

    :cond_5
    return-void
.end method
