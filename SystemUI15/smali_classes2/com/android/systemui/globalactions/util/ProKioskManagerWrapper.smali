.class public final Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field public mProKioskOptionShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    iput-object p2, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskOptionShown:Z

    return-void
.end method
