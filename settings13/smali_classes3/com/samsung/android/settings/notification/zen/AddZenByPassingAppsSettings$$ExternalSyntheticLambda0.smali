.class public final synthetic Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;

.field public final synthetic f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;->$r8$lambda$kj0Rz_CSyhoztgziNz0wzGHQMsc(Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
