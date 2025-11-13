.class Lcom/samsung/android/knox/mtd/KMTDManager$1;
.super Lcom/samsung/android/knox/mtd/IMtdCallback$Stub;
.source "KMTDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/mtd/KMTDManager;->analyzeUrls(Ljava/util/List;Lcom/samsung/android/knox/mtd/MtdResultCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic greylist this$0:Lcom/samsung/android/knox/mtd/KMTDManager;

.field final synthetic greylist val$cb:Lcom/samsung/android/knox/mtd/MtdResultCallback;


# direct methods
.method constructor greylist <init>(Lcom/samsung/android/knox/mtd/KMTDManager;Lcom/samsung/android/knox/mtd/MtdResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/mtd/KMTDManager$1;->this$0:Lcom/samsung/android/knox/mtd/KMTDManager;

    iput-object p2, p0, Lcom/samsung/android/knox/mtd/KMTDManager$1;->val$cb:Lcom/samsung/android/knox/mtd/MtdResultCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/mtd/IMtdCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist onFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/mtd/AnalysisResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDManager$1;->val$cb:Lcom/samsung/android/knox/mtd/MtdResultCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/mtd/MtdResultCallback;->onFinished(Ljava/util/List;)V

    return-void
.end method
