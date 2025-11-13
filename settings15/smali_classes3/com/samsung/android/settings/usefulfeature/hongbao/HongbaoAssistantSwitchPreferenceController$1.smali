.class public final Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/hongbao/HongbaoAssistantSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
