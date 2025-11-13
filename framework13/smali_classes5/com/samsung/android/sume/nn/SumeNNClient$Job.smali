.class Lcom/samsung/android/sume/nn/SumeNNClient$Job;
.super Ljava/lang/Object;
.source "SumeNNClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/nn/SumeNNClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Job"
.end annotation


# instance fields
.field private final blacklist priority:Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

.field private final blacklist runnable:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/nn/SumeNNClient$Priority;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "priority"    # Lcom/samsung/android/sume/nn/SumeNNClient$Priority;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "priority",
            "runnable"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Job;->priority:Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    .line 122
    iput-object p2, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Job;->runnable:Ljava/lang/Runnable;

    .line 123
    return-void
.end method

.method static synthetic blacklist access$2100(Lcom/samsung/android/sume/nn/SumeNNClient$Job;)Lcom/samsung/android/sume/nn/SumeNNClient$Priority;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient$Job;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Job;->priority:Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Job;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
