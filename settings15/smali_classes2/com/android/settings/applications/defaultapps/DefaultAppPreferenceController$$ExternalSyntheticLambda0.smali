.class public final synthetic Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onGearClick(Lcom/samsung/android/settings/widget/SecGearPreference;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
