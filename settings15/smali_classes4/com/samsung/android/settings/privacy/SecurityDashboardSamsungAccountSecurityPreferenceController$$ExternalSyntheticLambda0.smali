.class public final synthetic Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;

.field public final synthetic f$1:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    check-cast p1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;->$r8$lambda$nVySx8K-Ii0N4D923-9Tcv8Ts1k(Lcom/samsung/android/settings/privacy/SecurityDashboardSamsungAccountSecurityPreferenceController;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method
