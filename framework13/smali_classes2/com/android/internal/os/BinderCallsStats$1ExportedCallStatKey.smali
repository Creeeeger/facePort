.class Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExportedCallStatKey"
.end annotation


# instance fields
.field public blacklist binderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist screenInteractive:Z

.field final synthetic blacklist this$0:Lcom/android/internal/os/BinderCallsStats;

.field public blacklist transactionCode:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/os/BinderCallsStats;

    .line 727
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;-><init>(Lcom/android/internal/os/BinderCallsStats;IZLjava/lang/Class;)V

    .line 728
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats;IZLjava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BinderCallsStats;
    .param p2, "transactionCode"    # I
    .param p3, "screenInteractive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;)V"
        }
    .end annotation

    .line 731
    .local p4, "binderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/Binder;>;"
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->this$0:Lcom/android/internal/os/BinderCallsStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput p2, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->transactionCode:I

    .line 733
    iput-boolean p3, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->screenInteractive:Z

    .line 734
    iput-object p4, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->binderClass:Ljava/lang/Class;

    .line 735
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 739
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 740
    return v0

    .line 743
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 744
    return v1

    .line 748
    :cond_1
    :try_start_0
    move-object v2, p1

    check-cast v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;

    .line 749
    .local v2, "key":Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
    iget v3, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->transactionCode:I

    iget v4, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->transactionCode:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->screenInteractive:Z

    iget-boolean v4, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->screenInteractive:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->binderClass:Ljava/lang/Class;

    iget-object v4, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->binderClass:Ljava/lang/Class;

    .line 751
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    .line 749
    :goto_0
    return v0

    .line 752
    .end local v2    # "key":Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
    :catch_0
    move-exception v1

    .line 753
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type casting errors. Object:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BinderCallsStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->binderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 761
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->transactionCode:I

    add-int/2addr v1, v2

    .line 762
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->screenInteractive:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    add-int/2addr v0, v2

    .line 763
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
