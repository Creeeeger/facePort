.class public final synthetic Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;

    check-cast p1, Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;

    invoke-static {p0, p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->$r8$lambda$bWmzZCUepftFUxyPF1E7FDxIiqU(Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;)Z

    move-result p0

    return p0
.end method
