.class Lcom/samsung/android/bio/iris/SemIrisManager$OnEnrollCancelListener;
.super Ljava/lang/Object;
.source "SemIrisManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnEnrollCancelListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/bio/iris/SemIrisManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager;)V
    .locals 0

    .line 1069
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$OnEnrollCancelListener;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager;Lcom/samsung/android/bio/iris/SemIrisManager$OnEnrollCancelListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/iris/SemIrisManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$OnEnrollCancelListener;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->-$$Nest$mcancelEnrollment(Lcom/samsung/android/bio/iris/SemIrisManager;)V

    .line 1079
    return-void
.end method
