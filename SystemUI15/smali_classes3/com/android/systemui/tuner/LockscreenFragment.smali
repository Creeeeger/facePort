.class public Lcom/android/systemui/tuner/LockscreenFragment;
.super Landroidx/preference/PreferenceFragment;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mTunables:Ljava/util/ArrayList;

.field public mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunables:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onCreatePreferences(Ljava/lang/String;)V
    .locals 3

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    iput-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    const p1, 0x7f17000b

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "sysui_keyguard_left"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string/jumbo v1, "sysui_keyguard_left_unlock"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    new-instance v2, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/tuner/LockscreenFragment;Landroidx/preference/SwitchPreference;Landroidx/preference/Preference;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunables:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const-string/jumbo p1, "sysui_keyguard_right"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string/jumbo v1, "sysui_keyguard_right_unlock"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    new-instance v2, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/tuner/LockscreenFragment;Landroidx/preference/SwitchPreference;Landroidx/preference/Preference;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunables:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunables:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/tuner/LockscreenFragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
