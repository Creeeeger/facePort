.class public final synthetic Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

.field public final synthetic f$1:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda3;->f$1:Landroidx/preference/PreferenceViewHolder;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda3;->f$1:Landroidx/preference/PreferenceViewHolder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->$r8$lambda$5RS0kUBCk7a595WVTSoS_ifV07Y(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;Landroidx/preference/PreferenceViewHolder;Ljava/lang/String;)V

    return-void
.end method
