.class final synthetic Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$createDetailView$1$2$onViewAttachedToWindow$6;
.super Lkotlin/jvm/internal/PropertyReference0Impl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const-string v4, "isSwitchChecked()Z"

    const/4 v5, 0x0

    const-class v2, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    const-string v3, "isSwitchChecked"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    sget v0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->isSwitchChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
