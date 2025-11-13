.class public final synthetic Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver$ContentObserverCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouFragment;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouFragment;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void

    :pswitch_0
    sget p0, Lcom/samsung/android/settings/accessibility/recommend/RecommendedForYouFragment;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
