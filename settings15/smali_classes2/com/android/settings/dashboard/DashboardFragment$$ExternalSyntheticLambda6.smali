.class public final synthetic Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda6;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;

    check-cast p1, Lcom/android/settings/core/BasePreferenceController;

    instance-of v0, p1, Landroidx/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Landroidx/preference/PreferenceScreen;

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
