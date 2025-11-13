.class public final synthetic Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->updateLightsOutView()V

    return-void
.end method
