.class Lcom/samsung/android/sume/core/controller/MediaFilterController$2;
.super Ljava/util/ArrayList;
.source "MediaFilterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/controller/MediaFilterController;->request(Lcom/samsung/android/sume/core/message/Request;)Lcom/samsung/android/sume/core/message/Response;
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
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/controller/MediaFilterController;

.field final synthetic blacklist val$it:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$2;->this$0:Lcom/samsung/android/sume/core/controller/MediaFilterController;

    iput-object p2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$2;->val$it:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$2;->val$it:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p2}, Lcom/samsung/android/sume/core/controller/MediaFilterController$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
