.class public final Lorg/simpleframework/xml/core/LabelGroup;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final list:Ljava/util/List;

.field public final size:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/core/LabelGroup;->size:I

    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelGroup;->list:Ljava/util/List;

    return-void
.end method
