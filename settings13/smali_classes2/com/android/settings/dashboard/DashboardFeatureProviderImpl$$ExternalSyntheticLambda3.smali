.class public final synthetic Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field public final synthetic f$1:Lcom/android/settingslib/drawer/Tile;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;ILandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$1:Lcom/android/settingslib/drawer/Tile;

    iput p3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$3:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$1:Lcom/android/settingslib/drawer/Tile;

    iget v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$2:I

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;->f$3:Landroid/net/Uri;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->$r8$lambda$3t80s4_NiIBiFZM-o_J3U41peK0(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;ILandroid/net/Uri;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
