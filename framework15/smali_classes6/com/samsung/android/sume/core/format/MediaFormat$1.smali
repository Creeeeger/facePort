.class Lcom/samsung/android/sume/core/format/MediaFormat$1;
.super Ljava/util/ArrayList;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/format/MediaFormat;->getPlanes(Lcom/samsung/android/sume/core/format/MediaFormat;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/sume/core/format/MediaFormat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$mediaFormat:Lcom/samsung/android/sume/core/format/MediaFormat;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/format/MediaFormat$1;->val$mediaFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p0, Lcom/samsung/android/sume/core/format/MediaFormat$1;->val$mediaFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/format/MediaFormat$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
