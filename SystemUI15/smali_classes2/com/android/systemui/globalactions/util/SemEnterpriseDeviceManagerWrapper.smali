.class public final Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mSemEnterpriseDeviceManager:Lcom/samsung/android/knox/SemEnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;->mSemEnterpriseDeviceManager:Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    return-void
.end method
