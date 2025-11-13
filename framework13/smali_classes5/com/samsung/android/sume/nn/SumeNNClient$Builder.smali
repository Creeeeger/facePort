.class public final Lcom/samsung/android/sume/nn/SumeNNClient$Builder;
.super Ljava/lang/Object;
.source "SumeNNClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/nn/SumeNNClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist Models:[Lcom/samsung/android/sume/nn/Model;

.field private blacklist context:Landroid/content/Context;

.field private blacklist debuggable:Z

.field private blacklist eventListener:Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

.field private blacklist flags:I

.field private blacklist inputFormat:Lcom/samsung/android/sume/MediaFormat;

.field private blacklist meta:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mode:Lcom/samsung/android/sume/Mode;

.field private blacklist nnDescriptor:[Lcom/samsung/android/sume/nn/NNDescriptor;

.field private blacklist outputFormat:Lcom/samsung/android/sume/MediaFormat;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    sget-object v0, Lcom/samsung/android/sume/Mode;->NORMAL:Lcom/samsung/android/sume/Mode;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->mode:Lcom/samsung/android/sume/Mode;

    .line 788
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->meta:Ljava/util/HashMap;

    .line 889
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->context:Landroid/content/Context;

    .line 890
    return-void
.end method

.method static synthetic blacklist lambda$build$1(Lcom/samsung/android/sume/nn/Model;)Z
    .locals 1
    .param p0, "it"    # Lcom/samsung/android/sume/nn/Model;

    .line 868
    sget-object v0, Lcom/samsung/android/sume/nn/Model;->NONE:Lcom/samsung/android/sume/nn/Model;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$model$0(Lcom/samsung/android/sume/nn/Model;)Z
    .locals 1
    .param p0, "it"    # Lcom/samsung/android/sume/nn/Model;

    .line 792
    sget-object v0, Lcom/samsung/android/sume/nn/Model;->NONE:Lcom/samsung/android/sume/nn/Model;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final blacklist build()Lcom/samsung/android/sume/nn/SumeNNClient;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sume.nn.service"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 852
    .local v0, "snsInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->outputFormat:Lcom/samsung/android/sume/MediaFormat;

    if-eqz v1, :cond_3

    .line 853
    const/4 v1, 0x0

    .line 854
    .local v1, "supportBufferIO":Z
    if-eqz v0, :cond_1

    .line 855
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    .line 856
    .local v3, "version":J
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-wide/32 v5, 0xb57e288

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    const-wide/32 v5, 0xb57bf60

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    const-wide/32 v5, 0xb564478

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 858
    :cond_0
    const/4 v1, 0x1

    .line 860
    .end local v3    # "version":J
    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    .line 861
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Support AI Service but not support Buffer IO"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/sume/nn/SumeNNClient$Builder;
    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    .end local v0    # "snsInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "supportBufferIO":Z
    .restart local p0    # "this":Lcom/samsung/android/sume/nn/SumeNNClient$Builder;
    :cond_3
    :goto_0
    nop

    .line 867
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->nnDescriptor:[Lcom/samsung/android/sume/nn/NNDescriptor;

    if-nez v0, :cond_4

    .line 868
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->Models:[Lcom/samsung/android/sume/nn/Model;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$Builder$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "should set one of model"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/Utils;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 870
    :cond_4
    new-instance v0, Lcom/samsung/android/sume/nn/SumeNNClient;

    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->Models:[Lcom/samsung/android/sume/nn/Model;

    iget-object v6, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->mode:Lcom/samsung/android/sume/Mode;

    iget-object v7, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->eventListener:Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sume/nn/SumeNNClient;-><init>(Landroid/content/Context;[Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/Mode;Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;Lcom/samsung/android/sume/nn/SumeNNClient$1;)V

    .line 872
    .local v0, "nn":Lcom/samsung/android/sume/nn/SumeNNClient;
    iget v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->flags:I

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$1802(Lcom/samsung/android/sume/nn/SumeNNClient;I)I

    .line 873
    iget-boolean v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->debuggable:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$802(Lcom/samsung/android/sume/nn/SumeNNClient;Z)Z

    .line 874
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->nnDescriptor:[Lcom/samsung/android/sume/nn/NNDescriptor;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$1502(Lcom/samsung/android/sume/nn/SumeNNClient;[Lcom/samsung/android/sume/nn/NNDescriptor;)[Lcom/samsung/android/sume/nn/NNDescriptor;

    .line 875
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->inputFormat:Lcom/samsung/android/sume/MediaFormat;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$1402(Lcom/samsung/android/sume/nn/SumeNNClient;Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/MediaFormat;

    .line 876
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->outputFormat:Lcom/samsung/android/sume/MediaFormat;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$902(Lcom/samsung/android/sume/nn/SumeNNClient;Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/MediaFormat;

    .line 877
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->meta:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$1902(Lcom/samsung/android/sume/nn/SumeNNClient;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 884
    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$2000(Lcom/samsung/android/sume/nn/SumeNNClient;)V

    .line 885
    return-object v0

    .line 863
    .end local v0    # "nn":Lcom/samsung/android/sume/nn/SumeNNClient;
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Not supported for AI service"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final blacklist debuggable(Z)Lcom/samsung/android/sume/nn/SumeNNClient$Builder;
    .locals 0
    .param p1, "debuggable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debuggable"
        }
    .end annotation

    .line 836
    iput-boolean p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->debuggable:Z

    .line 837
    return-object p0
.end method

.method public final blacklist eventListener(Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;)Lcom/samsung/android/sume/nn/SumeNNClient$Builder;
    .locals 0
    .param p1, "eventListener"    # Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventListener"
        }
    .end annotation

    .line 806
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->eventListener:Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    .line 807
    return-object p0
.end method

.method public final blacklist flags(I)Lcom/samsung/android/sume/nn/SumeNNClient$Builder;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 830
    iget v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->flags:I

    .line 831
    return-object p0
.end method

.method public final blacklist inputFormat(Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/nn/SumeNNClient$Builder;
    .locals 0
    .param p1, "format"    # Lcom/samsung/android/sume/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 818
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->inputFormat:Lcom/samsung/android/sume/MediaFormat;

    .line 819
    return-object p0
.end method

.method public final blacklist meta(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/nn/SumeNNClient$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->meta:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    return-object p0
.end method

.method public final blacklist mode(Lcom/samsung/android/sume/Mode;)Lcom/samsung/android/sume/nn/SumeNNClient$Builder;
    .locals 0
    .param p1, "mode"    # Lcom/samsung/android/sume/Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 812
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->mode:Lcom/samsung/android/sume/Mode;

    .line 813
    return-object p0
.end method

.method public final varargs blacklist model([Lcom/samsung/android/sume/nn/Model;)Lcom/samsung/android/sume/nn/SumeNNClient$Builder;
    .locals 3
    .param p1, "Models"    # [Lcom/samsung/android/sume/nn/Model;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Models"
        }
    .end annotation

    .line 792
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "should set one of model"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 794
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->Models:[Lcom/samsung/android/sume/nn/Model;

    .line 795
    return-object p0
.end method

.method public final varargs blacklist model([Lcom/samsung/android/sume/nn/NNDescriptor;)Lcom/samsung/android/sume/nn/SumeNNClient$Builder;
    .locals 0
    .param p1, "desc"    # [Lcom/samsung/android/sume/nn/NNDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 800
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->nnDescriptor:[Lcom/samsung/android/sume/nn/NNDescriptor;

    .line 801
    return-object p0
.end method

.method public final blacklist outputFormat(Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/nn/SumeNNClient$Builder;
    .locals 0
    .param p1, "format"    # Lcom/samsung/android/sume/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 824
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$Builder;->outputFormat:Lcom/samsung/android/sume/MediaFormat;

    .line 825
    return-object p0
.end method
