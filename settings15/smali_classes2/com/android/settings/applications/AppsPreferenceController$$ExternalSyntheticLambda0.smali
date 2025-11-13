.class public final synthetic Lcom/android/settings/applications/AppsPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/AppsPreferenceController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/AppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/AppsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/AppsPreferenceController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/AppsPreferenceController$$ExternalSyntheticLambda0;->f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/AppsPreferenceController$$ExternalSyntheticLambda0;->f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settings/applications/AppsPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/AppsPreferenceController;

    invoke-static {p0, v0, v1, p1}, Lcom/android/settings/applications/AppsPreferenceController;->$r8$lambda$cMog3UbR5T4B3xQ6L4lbR1SnfVU(Lcom/android/settings/applications/AppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
