.class public final Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SpinnerAdapter;
.super Lcom/android/settingslib/widget/SettingsSpinnerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mItems:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/SettingsSpinnerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SpinnerAdapter;->mItems:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SpinnerAdapter;->mItems:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SpinnerAdapter;->mItems:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method
