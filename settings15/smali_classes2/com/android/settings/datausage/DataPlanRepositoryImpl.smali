.class public final Lcom/android/settings/datausage/DataPlanRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final networkCycleDataRepository:Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;)V
    .locals 1

    const-string v0, "networkCycleDataRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataPlanRepositoryImpl;->networkCycleDataRepository:Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;

    return-void
.end method
