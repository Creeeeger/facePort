.class public final synthetic Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/preference/ListPreference;

.field public final synthetic f$3:Landroidx/preference/Preference;

.field public final synthetic f$4:Landroidx/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;->f$2:Landroidx/preference/ListPreference;

    iput-object p4, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;->f$3:Landroidx/preference/Preference;

    iput-object p5, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;->f$4:Landroidx/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;->f$2:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;->f$3:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;->f$4:Landroidx/preference/ListPreference;

    sget-object v4, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, p0}, Lcom/android/systemui/tuner/NavBarTuner;->setValue(Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/NavBarTuner;->updateSummary(Landroidx/preference/ListPreference;)V

    return-void
.end method
