.class public final synthetic Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;

.field public final synthetic f$1:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda4;->f$1:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda4;->f$1:Landroid/view/ViewGroup;

    check-cast p1, Ljava/lang/String;

    sget v2, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    const-string/jumbo v2, "setRecommendationPlace: address = "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MandatoryBiometricLocationFragment"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationValue:Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    iput-object p1, v2, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->address:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0d0474

    invoke-virtual {p1, v3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->updateRecommendationText()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->updateRecommendationSidePadding()V

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v4, Lcom/samsung/android/settings/theftprotection/location/LocationType;->HOME:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v4}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v5

    iget v6, v2, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->placeType:I

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->nameResID()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->iconResID()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/samsung/android/settings/theftprotection/location/LocationType;->WORK:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v4}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->nameResID()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->iconResID()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object p1, v2, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->address:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    const v1, 0x7f0a038a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    const v0, 0x7f0a00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda11;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->updateRecommendationVisible()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->updateLocationList()V

    :cond_1
    return-void
.end method
