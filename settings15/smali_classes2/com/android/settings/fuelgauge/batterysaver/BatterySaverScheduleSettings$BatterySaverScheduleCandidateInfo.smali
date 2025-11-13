.class public final Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mKey:Ljava/lang/String;

.field public final mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public final loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
