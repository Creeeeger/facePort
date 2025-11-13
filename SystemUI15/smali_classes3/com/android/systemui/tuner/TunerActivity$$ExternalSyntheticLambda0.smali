.class public final synthetic Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p1, p1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$1;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/systemui/fragments/FragmentService;

    sget p0, Lcom/android/systemui/tuner/TunerActivity;->$r8$clinit:I

    iget-object p0, p1, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    iget-object p1, p1, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    iget-object p1, p1, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p1}, Landroid/app/FragmentController;->dispatchDestroy()V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
