.class public Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCategoryDialog:Landroidx/appcompat/app/AlertDialog;

.field public mContext:Landroid/content/Context;

.field public mDescriptionPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field public final mLocationTypes:[Lcom/samsung/android/settings/theftprotection/location/LocationType;

.field public mRecommendationValue:Lcom/samsung/android/settings/theftprotection/location/LocationValue;

.field public mRecommendationView:Landroid/view/View;

.field public mReplaceDialog:Landroidx/appcompat/app/AlertDialog;

.field public mSelectedPlaceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/theftprotection/location/LocationType;->HOME:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    sget-object v1, Lcom/samsung/android/settings/theftprotection/location/LocationType;->WORK:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    sget-object v2, Lcom/samsung/android/settings/theftprotection/location/LocationType;->OTHER:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/settings/theftprotection/location/LocationType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mLocationTypes:[Lcom/samsung/android/settings/theftprotection/location/LocationType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mCategoryDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mReplaceDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mSelectedPlaceKey:Ljava/lang/String;

    return-void
.end method

.method public static getLocationDataFromActivityResult(Landroid/content/Intent;)Lcom/samsung/android/settings/theftprotection/location/LocationData;
    .locals 6

    new-instance v0, Lcom/samsung/android/settings/theftprotection/location/LocationData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "place_name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mName:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/settings/theftprotection/location/LocationType;->UNKNOWN:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v1}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v1

    const-string v2, "place_category"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mType:I

    const-string v1, "latitude"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mLatitude:D

    const-string v1, "longitude"

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mLongitude:D

    const-string v1, "address"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mAddress:Ljava/lang/String;

    const-string/jumbo v1, "wifi_ap_name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mSSID:Ljava/lang/String;

    const-string/jumbo v1, "wifi_ap_bssid"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mBSSID:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x258

    goto :goto_0

    :cond_0
    const/16 p0, 0x12c

    :goto_0
    iput p0, v0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mRadius:I

    return-object v0
.end method

.method public static getLocationInformationIntent(Ljava/lang/String;Lcom/samsung/android/settings/theftprotection/location/LocationData;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget p0, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mType:I

    const-string v1, "place_category"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "latitude"

    iget-wide v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mLatitude:D

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "longitude"

    iget-wide v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mLongitude:D

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "address"

    iget-object v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "wifi_ap_name"

    iget-object v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "wifi_ap_bssid"

    iget-object p1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mBSSID:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getPlaceByType(I)Lcom/samsung/android/settings/theftprotection/location/LocationData;
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    iget-object v0, v0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->mLocationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/theftprotection/location/LocationData;

    return-object p0
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MandatoryBiometricLocationFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700d9

    return p0
.end method

.method public final isUnavailableName(Lcom/samsung/android/settings/theftprotection/location/LocationData;Z)Z
    .locals 7

    iget v0, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mType:I

    sget-object v1, Lcom/samsung/android/settings/theftprotection/location/LocationType;->OTHER:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v1}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/settings/theftprotection/location/LocationType;->HOME:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v3}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->nameResID()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/settings/theftprotection/location/LocationType;->WORK:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v4}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->nameResID()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {v4}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda13;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda13;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f14172a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->relaunchPlaceActivity(Lcom/samsung/android/settings/theftprotection/location/LocationData;Z)V

    return v3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f14172b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->relaunchPlaceActivity(Lcom/samsung/android/settings/theftprotection/location/LocationData;Z)V

    return v3

    :cond_2
    return v2
.end method

.method public final launchAddRecommendationPlace(Lcom/samsung/android/settings/theftprotection/location/LocationValue;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "launchAddRecommendationPlace: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->placeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MandatoryBiometricLocationFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.samsungaccount.action.LOCATION_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "place_category"

    iget v2, p1, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->placeType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "latitude"

    iget-wide v2, p1, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "longitude"

    iget-wide v2, p1, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "address"

    iget-object v2, p1, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "wifi_ap_name"

    iget-object v2, p1, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "wifi_ap_bssid"

    iget-object p1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "is_add"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x3f6

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->launchPlaceActivity(ILandroid/content/Intent;)V

    return-void
.end method

.method public final launchPlaceActivity(ILandroid/content/Intent;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Activity not found: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MandatoryBiometricLocationFragment"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult: requestCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MandatoryBiometricLocationFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "LocationData is null"

    const/4 v3, 0x1

    const-string/jumbo v4, "registerAllGeofence"

    const-string/jumbo v5, "unregisterAllGeofence"

    const-string v6, "Intent is null"

    const-string v7, "LocationManager"

    const/4 v8, -0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    if-ne p2, v8, :cond_d

    if-nez p3, :cond_0

    invoke-static {v1, v6}, Lcom/samsung/android/settings/theftprotection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {p2}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {p1, v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->updateInSignificantPlace(Landroid/content/Context;Z)V

    invoke-static {p3}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->getLocationDataFromActivityResult(Landroid/content/Intent;)Lcom/samsung/android/settings/theftprotection/location/LocationData;

    move-result-object p1

    iget p3, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mType:I

    invoke-static {p3}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->getPlaceByType(I)Lcom/samsung/android/settings/theftprotection/location/LocationData;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->addLocationData(Lcom/samsung/android/settings/theftprotection/location/LocationData;)V

    goto :goto_0

    :cond_1
    iget-object p3, p3, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    iput-object p3, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->updateLocationData(Lcom/samsung/android/settings/theftprotection/location/LocationData;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isMandatoryBiometricEnabled(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {v7, v4}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p3, p1, v1}, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    if-eqz p1, :cond_d

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->updateLocationList()V

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    const-string p1, "identity_check_recommendation_place_pref"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    :pswitch_1
    if-ne p2, v8, :cond_d

    if-nez p3, :cond_3

    invoke-static {v1, v6}, Lcom/samsung/android/settings/theftprotection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p3}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->getLocationDataFromActivityResult(Landroid/content/Intent;)Lcom/samsung/android/settings/theftprotection/location/LocationData;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->isUnavailableName(Lcom/samsung/android/settings/theftprotection/location/LocationData;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {p3}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {p2, v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->updateInSignificantPlace(Landroid/content/Context;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->addLocationData(Lcom/samsung/android/settings/theftprotection/location/LocationData;)V

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isMandatoryBiometricEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {v7, v4}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :pswitch_2
    if-ne p2, v8, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationValue:Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    iget p1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->placeType:I

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->getPlaceByType(I)Lcom/samsung/android/settings/theftprotection/location/LocationData;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationValue:Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->launchAddRecommendationPlace(Lcom/samsung/android/settings/theftprotection/location/LocationValue;Z)V

    goto/16 :goto_1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationValue:Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    iget p1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->placeType:I

    new-instance p2, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->showReplaceDialog(ILjava/lang/Runnable;)V

    goto/16 :goto_1

    :pswitch_3
    if-ne p2, v8, :cond_7

    sget-object p1, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    iget-object v3, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mSelectedPlaceKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData(Ljava/lang/String;)Lcom/samsung/android/settings/theftprotection/location/LocationData;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v1, v2}, Lcom/samsung/android/settings/theftprotection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "launchDetailPlace: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mSelectedPlaceKey:Ljava/lang/String;

    const-string v3, "com.samsung.android.samsungaccount.action.SHOW_LOCATION"

    invoke-static {v3, p1}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->getLocationInformationIntent(Ljava/lang/String;Lcom/samsung/android/settings/theftprotection/location/LocationData;)Landroid/content/Intent;

    move-result-object v3

    const-string v9, "place_name"

    iget-object p1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mName:Ljava/lang/String;

    invoke-virtual {v3, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3f5

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->launchPlaceActivity(ILandroid/content/Intent;)V

    :cond_7
    :pswitch_4
    if-ne p2, v8, :cond_d

    if-nez p3, :cond_8

    invoke-static {v1, v6}, Lcom/samsung/android/settings/theftprotection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    sget-object p1, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    iget-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mSelectedPlaceKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData(Ljava/lang/String;)Lcom/samsung/android/settings/theftprotection/location/LocationData;

    move-result-object p2

    if-nez p2, :cond_9

    invoke-static {v1, v2}, Lcom/samsung/android/settings/theftprotection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-static {p3}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->getLocationDataFromActivityResult(Landroid/content/Intent;)Lcom/samsung/android/settings/theftprotection/location/LocationData;

    move-result-object p3

    iget-object p2, p2, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    iput-object p2, p3, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->isUnavailableName(Lcom/samsung/android/settings/theftprotection/location/LocationData;Z)Z

    move-result p2

    if-eqz p2, :cond_a

    return-void

    :cond_a
    iget-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {p2, v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->updateInSignificantPlace(Landroid/content/Context;Z)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->updateLocationData(Lcom/samsung/android/settings/theftprotection/location/LocationData;)V

    iget-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isMandatoryBiometricEnabled(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-static {v7, v4}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p3, p2, v0}, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mSelectedPlaceKey:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_5
    if-ne p2, v8, :cond_d

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p2, p3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput v0, p3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo p2, "settings_homekey_mode"

    const-string p3, "mode_invisible"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/android/settings/core/SubSettingLauncher;->launchWithIntent(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_6
    if-ne p2, v8, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mCategoryDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p0, "CategoryDialog is showing."

    invoke-static {v1, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mLocationTypes:[Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda9;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f141712

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    new-instance p3, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda7;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iget-object v0, p2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iput-object p3, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mCategoryDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_d
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f3
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->updateRecommendationSidePadding()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "key_description"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mDescriptionPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v0, 0x1

    const v1, 0x7f14029c

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v3, 0x7f1409d2

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f080587

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    sget-object v1, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3ea

    invoke-static {p0, v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->showProtectionPrompt(Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e9

    invoke-static {p0, v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->showProtectionPrompt(Landroidx/fragment/app/Fragment;I)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreferenceTreeClick: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MandatoryBiometricLocationFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData(Ljava/lang/String;)Lcom/samsung/android/settings/theftprotection/location/LocationData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mSelectedPlaceKey:Ljava/lang/String;

    const/16 v0, 0x3eb

    invoke-static {p0, v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->showProtectionPrompt(Landroidx/fragment/app/Fragment;I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->updateRecommendationVisible()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->updateRecommendationText()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->updateLocationList()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0471

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->getMandatoryBiometricStatus(Landroid/content/Context;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    invoke-static {v2}, Lcom/samsung/android/settings/theftprotection/utils/RecommendPlaceUtils;->getRecommendPlace(Landroid/content/Context;)Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "category=? OR category=?"

    sget-object v0, Lcom/samsung/android/settings/theftprotection/location/LocationType;->HOME:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v0}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/settings/theftprotection/location/LocationType;->WORK:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v3}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "category ASC"

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SAMSUNG_ACCOUNT_PLACE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string v4, "name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v4, "address"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->address:Ljava/lang/String;

    const-string v4, "category"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->placeType:I

    const-string v4, "latitude"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->latitude:D

    const-string v4, "longitude"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->longitude:D

    const-string/jumbo v4, "wifi_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->ssid:Ljava/lang/String;

    const-string/jumbo v4, "wifi_bssid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->bssid:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSamsungAccountPlaces : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RecommendPlaceUtils"

    invoke-static {v3, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    iget v3, p2, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->placeType:I

    iget-wide v4, p2, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->latitude:D

    iget-wide v6, p2, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->longitude:D

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/settings/theftprotection/utils/RecommendPlaceUtils;->updateRecommendPlace(Landroid/content/Context;IDD)V

    :cond_3
    :goto_4
    iget-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/theftprotection/utils/RecommendPlaceUtils;->getRecommendPlace(Landroid/content/Context;)Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationValue:Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    if-nez p2, :cond_4

    const-string p0, "MandatoryBiometricLocationFragment"

    const-string/jumbo p1, "setRecommendationPlace: No places"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    iget-wide v3, p2, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->latitude:D

    iget-wide v5, p2, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->longitude:D

    new-instance v2, Landroid/location/Geocoder;

    invoke-direct {v2, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    new-instance p2, Lio/reactivex/internal/operators/single/SingleJust;

    invoke-direct {p2}, Lio/reactivex/internal/operators/single/SingleJust;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;-><init>(Landroid/location/Geocoder;DD)V

    new-instance v1, Lio/reactivex/internal/operators/single/SingleMap;

    invoke-direct {v1, p2, v0}, Lio/reactivex/internal/operators/single/SingleMap;-><init>(Lio/reactivex/internal/operators/single/SingleJust;Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;)V

    new-instance p2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/reactivex/schedulers/Schedulers;->IO:Lio/reactivex/Scheduler;

    const-string/jumbo v2, "scheduler is null"

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lio/reactivex/internal/operators/single/SingleSubscribeOn;

    invoke-direct {v2, v1, v0}, Lio/reactivex/internal/operators/single/SingleSubscribeOn;-><init>(Lio/reactivex/internal/operators/single/SingleMap;Lio/reactivex/Scheduler;)V

    sget-object v0, Lio/reactivex/android/schedulers/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex/android/schedulers/HandlerScheduler;

    if-eqz v0, :cond_5

    new-instance v1, Lio/reactivex/internal/operators/single/SingleObserveOn;

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/operators/single/SingleObserveOn;-><init>(Lio/reactivex/internal/operators/single/SingleSubscribeOn;Lio/reactivex/android/schedulers/HandlerScheduler;)V

    new-instance v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda2;-><init>(Lio/reactivex/disposables/CompositeDisposable;)V

    new-instance v2, Lio/reactivex/internal/operators/single/SingleDoFinally;

    invoke-direct {v2, v1, v0}, Lio/reactivex/internal/operators/single/SingleDoFinally;-><init>(Lio/reactivex/internal/operators/single/SingleObserveOn;Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda2;)V

    new-instance v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v1, Lio/reactivex/internal/operators/single/SingleDoOnError;

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/operators/single/SingleDoOnError;-><init>(Lio/reactivex/internal/operators/single/SingleDoFinally;Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda3;)V

    new-instance v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;Landroid/view/ViewGroup;)V

    new-instance p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance p1, Lio/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, p0}, Lio/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda4;Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda3;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :goto_5
    return-void

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "scheduler == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final relaunchPlaceActivity(Lcom/samsung/android/settings/theftprotection/location/LocationData;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "relaunchAddPlace: name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MandatoryBiometricLocationFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.samsungaccount.action.LOCATION_PICKER"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->getLocationInformationIntent(Ljava/lang/String;Lcom/samsung/android/settings/theftprotection/location/LocationData;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "place_name"

    iget-object p1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "is_add"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const/16 p1, 0x3f3

    goto :goto_0

    :cond_0
    const/16 p1, 0x3f5

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->launchPlaceActivity(ILandroid/content/Intent;)V

    return-void
.end method

.method public final showReplaceDialog(ILjava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mReplaceDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MandatoryBiometricLocationFragment"

    const-string p1, "ReplaceDialog is showing."

    invoke-static {p0, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/settings/theftprotection/location/LocationType;->HOME:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v1}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v2

    if-ne p1, v2, :cond_1

    const v2, 0x7f141727

    goto :goto_0

    :cond_1
    const v2, 0x7f141729

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v1

    if-ne p1, v1, :cond_2

    const p1, 0x7f141726

    goto :goto_1

    :cond_2
    const p1, 0x7f141728

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const p1, 0x7f1408c0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda7;

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    const p2, 0x7f141725

    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mReplaceDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final updateLocationList()V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {v0}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mDescriptionPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;Landroidx/preference/PreferenceScreen;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method public final updateRecommendationSidePadding()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    const v2, 0x7f0a0414

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    const v2, 0x7f0a0416

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    const v1, 0x7f0a0c50

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f060738

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_0
    return-void
.end method

.method public final updateRecommendationText()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationValue:Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    if-eqz v0, :cond_6

    const v1, 0x7f0a0c52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    const v2, 0x7f0a0c51

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationValue:Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    iget v2, v2, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->placeType:I

    invoke-static {v2}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->getPlaceByType(I)Lcom/samsung/android/settings/theftprotection/location/LocationData;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/samsung/android/settings/theftprotection/location/LocationType;->HOME:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v3}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v3

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationValue:Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    iget p0, p0, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->placeType:I

    const v4, 0x7f141721

    if-ne v3, p0, :cond_3

    if-eqz v2, :cond_1

    const p0, 0x7f14171f

    goto :goto_1

    :cond_1
    const p0, 0x7f141720

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    if-eqz v2, :cond_2

    const v4, 0x7f14171e

    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    const p0, 0x7f141723

    goto :goto_2

    :cond_4
    const p0, 0x7f141724

    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    if-eqz v2, :cond_5

    const v4, 0x7f141722

    :cond_5
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final updateRecommendationVisible()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationValue:Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/samsung/android/settings/theftprotection/location/LocationValue;->placeType:I

    invoke-static {v0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->getPlaceByType(I)Lcom/samsung/android/settings/theftprotection/location/LocationData;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object v1

    if-nez v0, :cond_0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
