.class public final synthetic Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final onNumberOfAppsResult(I)V
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Boolean;

    aput-object p1, p0, v0

    return-void
.end method
