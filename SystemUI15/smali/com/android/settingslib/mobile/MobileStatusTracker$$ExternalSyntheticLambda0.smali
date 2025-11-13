.class public final synthetic Lcom/android/settingslib/mobile/MobileStatusTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/mobile/MobileStatusTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/mobile/MobileStatusTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    new-instance v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object v1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    invoke-direct {v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method
