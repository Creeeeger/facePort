.class Lcom/android/internal/app/UnknownSourcePhishingActivity$1;
.super Ljava/util/HashMap;
.source "UnknownSourcePhishingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/UnknownSourcePhishingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/UnknownSourcePhishingActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/UnknownSourcePhishingActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/app/UnknownSourcePhishingActivity;

    .line 53
    iput-object p1, p0, Lcom/android/internal/app/UnknownSourcePhishingActivity$1;->this$0:Lcom/android/internal/app/UnknownSourcePhishingActivity;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 54
    const/16 v0, 0x6e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ASKS_UNKNOWN_WARNING_DETAIL_0.html"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/UnknownSourcePhishingActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ASKS_UNKNOWN_WARNING_DETAIL_1.html"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/UnknownSourcePhishingActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const/16 v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ASKS_UNKNOWN_WARNING_DETAIL_2.html"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/UnknownSourcePhishingActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/16 v0, 0x71

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ASKS_UNKNOWN_WARNING_DETAIL_3.html"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/UnknownSourcePhishingActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const/16 v0, 0x72

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ASKS_UNKNOWN_WARNING_DETAIL_4.html"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/UnknownSourcePhishingActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/16 v0, 0x78

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ASKS_UNKNOWN_BLOCK_DETAIL_0.html"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/UnknownSourcePhishingActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/16 v0, 0x79

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ASKS_UNKNOWN_BLOCK_DETAIL_1.html"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/UnknownSourcePhishingActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const/16 v0, 0x7a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ASKS_UNKNOWN_BLOCK_DETAIL_2.html"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/UnknownSourcePhishingActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/16 v0, 0x7b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ASKS_UNKNOWN_BLOCK_DETAIL_3.html"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/UnknownSourcePhishingActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const/16 v0, 0x7c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ASKS_UNKNOWN_BLOCK_DETAIL_4.html"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/UnknownSourcePhishingActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method
