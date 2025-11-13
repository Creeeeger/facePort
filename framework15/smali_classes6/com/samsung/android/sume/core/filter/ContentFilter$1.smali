.class Lcom/samsung/android/sume/core/filter/ContentFilter$1;
.super Ljava/lang/Object;
.source "ContentFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/PlaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/filter/ContentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist buf:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/filter/ContentFilter;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/ContentFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->this$0:Lcom/samsung/android/sume/core/filter/ContentFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->buf:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isNotEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->buf:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic blacklist put(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->put(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist put(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->buf:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic blacklist reset()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->reset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist reset()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->buf:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->buf:Ljava/lang/String;

    return-object v0
.end method
