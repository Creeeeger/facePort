.class public final synthetic Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;

    sget v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method
