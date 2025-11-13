.class public final synthetic Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field public final synthetic f$1:Landroidx/preference/Preference;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;->f$1:Landroidx/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;->f$1:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->$r8$lambda$Z5cZkz34y53OD-DzqD1ypGHhUQE(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method
