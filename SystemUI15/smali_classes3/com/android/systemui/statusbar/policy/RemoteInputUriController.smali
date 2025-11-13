.class public final Lcom/android/systemui/statusbar/policy/RemoteInputUriController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mStatusBarManagerService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/policy/RemoteInputUriController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputUriController$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputUriController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputUriController;->mStatusBarManagerService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method
