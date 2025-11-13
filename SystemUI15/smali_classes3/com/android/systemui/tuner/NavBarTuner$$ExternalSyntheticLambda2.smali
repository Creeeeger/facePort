.class public final synthetic Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/preference/ListPreference;

.field public final synthetic f$3:Landroidx/preference/ListPreference;

.field public final synthetic f$4:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p3, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->f$2:Landroidx/preference/ListPreference;

    iput-object p5, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->f$3:Landroidx/preference/ListPreference;

    iput-object p2, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->f$4:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iget-object p1, v1, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda9;

    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->f$2:Landroidx/preference/ListPreference;

    iget-object v5, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->f$3:Landroidx/preference/ListPreference;

    iget-object v6, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->f$4:Landroidx/preference/Preference;

    move-object v0, v7

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;Landroidx/preference/Preference;)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
