.class public final Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
