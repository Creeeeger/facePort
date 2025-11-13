.class public final synthetic Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFragment;

.field public final synthetic f$1:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;->f$1:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;

    invoke-static {v0, p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->$r8$lambda$LM966RpCTbdrKoeN8Vi8X9x2SYo(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->registerDynamicDataObserver(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;

    invoke-static {v0, p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->$r8$lambda$bl5y84BjkU1V5p_2MS5gk70M2Zs(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
