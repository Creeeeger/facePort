.class public Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;
.super Ljava/lang/Object;
.source "SecWifiPreferenceControllerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$EapMethodChangeListener;,
        Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidatorCallback;,
        Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;,
        Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$Validator;
    }
.end annotation


# instance fields
.field private final mValidationUpdaters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$Validator;",
            "Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;",
            ">;"
        }
    .end annotation
.end field

.field private final mValidatorCallback:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidatorCallback;

.field private final mValidators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$Validator;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmValidationUpdaters(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidationUpdaters:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValidators(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidators:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidators:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidationUpdaters:Ljava/util/Map;

    .line 25
    new-instance v0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;-><init>(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidatorCallback:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidatorCallback;

    return-void
.end method


# virtual methods
.method public addValidator(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$Validator;Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidators:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$Validator;->isValid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidatorCallback:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidatorCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$Validator;->registerCallback(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidatorCallback;)V

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidationUpdaters:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidators:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
