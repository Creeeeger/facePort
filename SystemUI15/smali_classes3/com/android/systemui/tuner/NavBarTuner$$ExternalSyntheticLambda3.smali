.class public final synthetic Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/preference/ListPreference;

.field public final synthetic f$3:Landroidx/preference/Preference;

.field public final synthetic f$4:Landroidx/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$3:Landroidx/preference/Preference;

    iput-object p3, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$2:Landroidx/preference/ListPreference;

    iput-object p5, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$4:Landroidx/preference/ListPreference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$2:Landroidx/preference/ListPreference;

    iput-object p4, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$3:Landroidx/preference/Preference;

    iput-object p5, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$4:Landroidx/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iget-object p1, v1, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$2:Landroidx/preference/ListPreference;

    iget-object v4, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$3:Landroidx/preference/Preference;

    iget-object v5, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$4:Landroidx/preference/ListPreference;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)V
    .locals 8

    sget-object v0, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda7;

    iget-object v6, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$2:Landroidx/preference/ListPreference;

    iget-object v7, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$4:Landroidx/preference/ListPreference;

    iget-object v4, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$3:Landroidx/preference/Preference;

    iget-object v5, p0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroid/widget/EditText;Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;)V

    const p0, 0x104000a

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
