.class public final synthetic Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/preference/Preference;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/widget/AppPreference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda2;->f$0:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda2;->f$0:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
