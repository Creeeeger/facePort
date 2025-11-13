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
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/filter/ContentFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->this$0:Lcom/samsung/android/sume/core/filter/ContentFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "instance"
        }
    .end annotation

    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->put(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist put(Ljava/lang/String;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->buf:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public bridge synthetic blacklist replace()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->replace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist replace()Ljava/lang/String;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->buf:Ljava/lang/String;

    .line 35
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$1;->buf:Ljava/lang/String;

    .line 36
    return-object v0
.end method
