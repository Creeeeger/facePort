.class public final synthetic Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->setOnChangeListener(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController$OnChangeListener;)V

    :cond_0
    return-void
.end method
