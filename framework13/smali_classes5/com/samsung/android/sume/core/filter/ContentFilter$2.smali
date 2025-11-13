.class Lcom/samsung/android/sume/core/filter/ContentFilter$2;
.super Ljava/lang/Object;
.source "ContentFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/ContentFilterRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/filter/ContentFilter;-><init>(Lcom/samsung/android/sume/core/filter/ContentFilterRegister;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 43
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$2;->this$0:Lcom/samsung/android/sume/core/filter/ContentFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addFilter(ILjava/lang/Object;)V
    .locals 2
    .param p1, "filterType"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filterType",
            "data"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$2;->this$0:Lcom/samsung/android/sume/core/filter/ContentFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/filter/ContentFilter;->access$000(Lcom/samsung/android/sume/core/filter/ContentFilter;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public blacklist getFilter(I)Ljava/lang/Object;
    .locals 2
    .param p1, "filterType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I)TR;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ContentFilter$2;->this$0:Lcom/samsung/android/sume/core/filter/ContentFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/filter/ContentFilter;->access$000(Lcom/samsung/android/sume/core/filter/ContentFilter;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
