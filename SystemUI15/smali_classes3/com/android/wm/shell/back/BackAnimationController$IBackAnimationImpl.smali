.class public final Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;
.super Lcom/android/wm/shell/back/IBackAnimation$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# instance fields
.field public mController:Lcom/android/wm/shell/back/BackAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/BackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/back/IBackAnimation$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->mController:Lcom/android/wm/shell/back/BackAnimationController;

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->mController:Lcom/android/wm/shell/back/BackAnimationController;

    return-void
.end method
