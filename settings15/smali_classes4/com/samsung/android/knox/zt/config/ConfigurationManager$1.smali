.class Lcom/samsung/android/knox/zt/config/ConfigurationManager$1;
.super Lcom/samsung/android/knox/zt/config/IResultListener$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/zt/config/ConfigurationManager;->check(Lcom/samsung/android/knox/zt/config/ITrustResultListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/zt/config/ConfigurationManager;

.field public final synthetic val$listener:Lcom/samsung/android/knox/zt/config/ITrustResultListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/zt/config/ConfigurationManager;Lcom/samsung/android/knox/zt/config/ITrustResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$1;->this$0:Lcom/samsung/android/knox/zt/config/ConfigurationManager;

    iput-object p2, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$1;->val$listener:Lcom/samsung/android/knox/zt/config/ITrustResultListener;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/config/IResultListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$1;->val$listener:Lcom/samsung/android/knox/zt/config/ITrustResultListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/ITrustResultListener;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$1;->val$listener:Lcom/samsung/android/knox/zt/config/ITrustResultListener;

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/ITrustResultListener;->onSuccess()V

    return-void
.end method
