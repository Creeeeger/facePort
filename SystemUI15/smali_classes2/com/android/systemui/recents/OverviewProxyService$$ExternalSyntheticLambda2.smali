.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    return-void
.end method


# virtual methods
.method public final onStateChanged(ZZZZZZZ)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p6, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p6

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const-wide/16 v3, 0x40

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move p6, v0

    :cond_1
    const-wide/16 p1, 0x200

    invoke-virtual {v2, p1, p2, p6}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    const-wide p1, 0x80000000L

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    const-wide/16 p1, 0x8

    invoke-virtual {v2, p1, p2, p4}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    const-wide/32 p1, 0x200000

    invoke-virtual {v2, p1, p2, p5}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    const-wide/32 p1, 0x8000000

    invoke-virtual {v2, p1, p2, p7}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method
