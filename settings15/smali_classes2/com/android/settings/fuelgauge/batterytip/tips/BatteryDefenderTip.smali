.class public final Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public mIsPluggedIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final getIconId()I
    .locals 0

    const p0, 0x7f080364

    return p0
.end method

.method public final getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f140601

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f140602

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    const/16 v0, 0x6ec

    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public final updatePreference(Landroidx/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->updatePreference(Landroidx/preference/Preference;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, p1, Lcom/android/settings/widget/TipCardPreference;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/settings/widget/TipCardPreference;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string p0, "BatteryDefenderTip"

    const-string p1, "cast Preference to TipCardPreference failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v2, 0x7f080364

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/widget/TipCardPreference;->iconResId:Ljava/lang/Integer;

    const v2, 0x7f1414bf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<set-?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/settings/widget/TipCardPreference;->primaryButtonText:Ljava/lang/String;

    new-instance v2, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroidx/preference/Preference;)V

    iput-object v2, v1, Lcom/android/settings/widget/TipCardPreference;->primaryButtonAction:Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/widget/TipCardPreference;->primaryButtonVisibility:Z

    const v2, 0x7f140600

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/widget/TipCardPreference;->primaryButtonContentDescription:Ljava/lang/String;

    const v2, 0x7f1405f1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/settings/widget/TipCardPreference;->secondaryButtonText:Ljava/lang/String;

    new-instance v2, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;Landroid/content/Context;Landroidx/preference/Preference;)V

    iput-object v2, v1, Lcom/android/settings/widget/TipCardPreference;->secondaryButtonAction:Lkotlin/jvm/functions/Function0;

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;->mIsPluggedIn:Z

    iput-boolean p0, v1, Lcom/android/settings/widget/TipCardPreference;->secondaryButtonVisibility:Z

    invoke-virtual {v1}, Lcom/android/settings/widget/TipCardPreference;->buildContent()V

    return-void
.end method
