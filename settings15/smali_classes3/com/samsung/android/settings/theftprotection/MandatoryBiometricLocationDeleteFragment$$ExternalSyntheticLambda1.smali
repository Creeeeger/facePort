.class public final synthetic Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;

    check-cast p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;

    sget v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v1, 0x7f0d0475

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mType:I

    invoke-static {v1}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->fromInt(I)Lcom/samsung/android/settings/theftprotection/location/LocationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->iconResID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    iget-object v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroidx/preference/Preference;->setPersistent()V

    iget-object p1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mTrustedPlacesCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mCheckBoxList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
