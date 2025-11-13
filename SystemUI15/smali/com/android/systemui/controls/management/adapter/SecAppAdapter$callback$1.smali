.class public final Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;


# instance fields
.field public final synthetic $backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic $uiExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/adapter/SecAppAdapter;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1;->$backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServicesUpdated(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1;->$backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1$onServicesUpdated$1;

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1$onServicesUpdated$1;-><init>(Lcom/android/systemui/controls/management/adapter/SecAppAdapter;Ljava/util/List;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
