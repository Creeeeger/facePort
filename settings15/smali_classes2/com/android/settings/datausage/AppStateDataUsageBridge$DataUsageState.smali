.class public final Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public isDataSaverAllowlisted:Z

.field public isDataSaverDenylisted:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverAllowlisted:Z

    iput-boolean p2, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverDenylisted:Z

    return-void
.end method
