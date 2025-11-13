.class public final synthetic Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$1:Lcom/android/settingslib/drawer/Tile;

    iput p3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$2:I

    iput-object p4, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$3:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$3:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v2, v1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$1:Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {v2}, Lcom/android/settingslib/drawer/Tile;->getSaLoggingId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1000"

    goto :goto_0

    :cond_1
    const-string v2, "0"

    :goto_0
    invoke-static {p0, v3, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchEnabled(Landroidx/preference/Preference;Z)V

    new-instance p2, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, v1, v0, p0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;ZLandroidx/preference/Preference;)V

    invoke-static {p2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 p0, 0x1

    return p0
.end method
