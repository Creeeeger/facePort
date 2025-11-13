.class Lcom/samsung/android/camera/iris/SemIrisManager$1;
.super Ljava/lang/Object;
.source "SemIrisManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;->checkAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

.field final synthetic blacklist val$attr:Landroid/os/Bundle;

.field final synthetic blacklist val$callback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

.field final synthetic blacklist val$cancel:Landroid/os/CancellationSignal;

.field final synthetic blacklist val$crypto:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

.field final synthetic blacklist val$fidoRequestData:[B

.field final synthetic blacklist val$flags:I

.field final synthetic blacklist val$handler:Landroid/os/Handler;

.field final synthetic blacklist val$irisView:Landroid/view/View;

.field final synthetic blacklist val$sessionId:J

.field final synthetic blacklist val$userId:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$crypto:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    iput-object p3, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$cancel:Landroid/os/CancellationSignal;

    iput p4, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$flags:I

    iput-object p5, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$callback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    iput-object p6, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$handler:Landroid/os/Handler;

    iput p7, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$userId:I

    iput-object p8, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$attr:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$irisView:Landroid/view/View;

    iput-wide p10, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$sessionId:J

    iput-object p12, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$fidoRequestData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$crypto:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$cancel:Landroid/os/CancellationSignal;

    iget v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$flags:I

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$callback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$handler:Landroid/os/Handler;

    iget v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$userId:I

    iget-object v7, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$attr:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$irisView:Landroid/view/View;

    iget-wide v9, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$sessionId:J

    iget-object v11, p0, Lcom/samsung/android/camera/iris/SemIrisManager$1;->val$fidoRequestData:[B

    invoke-static/range {v0 .. v11}, Lcom/samsung/android/camera/iris/SemIrisManager;->-$$Nest$mcheckAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    return-void
.end method
