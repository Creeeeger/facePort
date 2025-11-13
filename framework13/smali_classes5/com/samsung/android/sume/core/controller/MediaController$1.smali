.class Lcom/samsung/android/sume/core/controller/MediaController$1;
.super Ljava/util/ArrayList;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/controller/MediaController;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/controller/MediaController;

.field final synthetic blacklist val$mediabuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/controller/MediaController;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/controller/MediaController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$mediabuffer"
        }
    .end annotation

    .line 13
    .local p0, "this":Lcom/samsung/android/sume/core/controller/MediaController$1;, "Lcom/samsung/android/sume/core/controller/MediaController$1;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/MediaController$1;->this$0:Lcom/samsung/android/sume/core/controller/MediaController;

    iput-object p2, p0, Lcom/samsung/android/sume/core/controller/MediaController$1;->val$mediabuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sume/core/controller/MediaController$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
