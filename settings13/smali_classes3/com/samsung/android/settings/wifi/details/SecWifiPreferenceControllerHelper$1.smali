.class Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;
.super Ljava/lang/Object;
.source "SecWifiPreferenceControllerHelper.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;->this$0:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidationChanged(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$Validator;Z)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;->this$0:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->-$$Nest$fgetmValidators(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;->this$0:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->-$$Nest$fgetmValidationUpdaters(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;->this$0:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->isValid()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;->update(Z)V

    return-void
.end method
