.class public final Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor$userChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor$userChanged$1;->this$0:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    sget p1, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->$r8$clinit:I

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor$userChanged$1;->this$0:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->initValuesAndApply(Landroid/content/Context;Z)V

    return-void
.end method
