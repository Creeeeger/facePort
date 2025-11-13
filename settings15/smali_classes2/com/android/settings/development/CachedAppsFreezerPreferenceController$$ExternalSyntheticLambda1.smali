.class public final synthetic Lcom/android/settings/development/CachedAppsFreezerPreferenceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/development/CachedAppsFreezerPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/CachedAppsFreezerPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/CachedAppsFreezerPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/development/CachedAppsFreezerPreferenceController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/CachedAppsFreezerPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/development/CachedAppsFreezerPreferenceController;

    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/CachedAppsFreezerPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
