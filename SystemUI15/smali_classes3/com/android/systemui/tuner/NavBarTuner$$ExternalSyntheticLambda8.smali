.class public final synthetic Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda8;->f$1:Landroidx/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda8;->f$1:Landroidx/preference/ListPreference;

    sget-object v1, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    if-nez v0, :cond_0

    const-string v0, "default"

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
