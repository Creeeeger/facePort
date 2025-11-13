.class public final synthetic Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda14;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda14;->f$0:I

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v0, p1, Lcom/android/settings/core/BasePreferenceController;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/core/BasePreferenceController;->setMetricsCategory(I)V

    :cond_0
    return-void
.end method
