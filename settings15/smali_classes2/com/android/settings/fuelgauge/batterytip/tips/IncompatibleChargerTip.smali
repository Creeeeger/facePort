.class public final Lcom/android/settings/fuelgauge/batterytip/tips/IncompatibleChargerTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/IncompatibleChargerTip$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/IncompatibleChargerTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final getIconId()I
    .locals 0

    const p0, 0x7f080367

    return p0
.end method

.method public final getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f1405fc

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f1405fd

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    const/16 v0, 0x71f

    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public final updatePreference(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->updatePreference(Landroidx/preference/Preference;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of v0, p1, Lcom/android/settings/widget/TipCardPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/widget/TipCardPreference;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    const-string p0, "IncompatibleChargerTip"

    const-string p1, "cast Preference to CardPreference failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    iput-object v1, p1, Lcom/android/settings/widget/TipCardPreference;->onDismiss:Lkotlin/jvm/functions/Function0;

    const v0, 0x7f080367

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/widget/TipCardPreference;->iconResId:Ljava/lang/Integer;

    const v0, 0x7f1414bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<set-?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/settings/widget/TipCardPreference;->primaryButtonText:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/IncompatibleChargerTip$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batterytip/tips/IncompatibleChargerTip$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/android/settings/widget/TipCardPreference;->primaryButtonAction:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/widget/TipCardPreference;->primaryButtonVisibility:Z

    const v0, 0x7f1405fb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settings/widget/TipCardPreference;->primaryButtonContentDescription:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/settings/widget/TipCardPreference;->buildContent()V

    return-void
.end method
