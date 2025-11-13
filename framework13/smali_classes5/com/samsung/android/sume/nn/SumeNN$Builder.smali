.class public final Lcom/samsung/android/sume/nn/SumeNN$Builder;
.super Ljava/lang/Object;
.source "SumeNN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/nn/SumeNN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sume/nn/Model;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist context:Landroid/content/Context;

.field private blacklist debuggable:Z

.field private blacklist descriptors:[Lcom/samsung/android/sume/nn/NNDescriptor;

.field private blacklist eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

.field private blacklist flags:I

.field private blacklist inputFormat:Lcom/samsung/android/sume/MediaFormat;

.field private final blacklist linkages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sume/nn/Model;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sume/Duo<",
            "Lcom/samsung/android/sume/evaluate/Evaluable;",
            "Lcom/samsung/android/sume/nn/Model;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private blacklist mode:Lcom/samsung/android/sume/Mode;

.field private final blacklist models:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sume/nn/Model;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist outputFormat:Lcom/samsung/android/sume/MediaFormat;

.field private blacklist recover:Z


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

    .line 1332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1180
    sget-object v0, Lcom/samsung/android/sume/Mode;->NORMAL:Lcom/samsung/android/sume/Mode;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->mode:Lcom/samsung/android/sume/Mode;

    .line 1187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->models:Ljava/util/ArrayList;

    .line 1188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->linkages:Ljava/util/HashMap;

    .line 1189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->attributes:Ljava/util/HashMap;

    .line 1333
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->context:Landroid/content/Context;

    .line 1334
    return-void
.end method

.method static synthetic blacklist lambda$build$1(Lcom/samsung/android/sume/nn/Model;)Z
    .locals 1
    .param p0, "it"    # Lcom/samsung/android/sume/nn/Model;

    .line 1305
    sget-object v0, Lcom/samsung/android/sume/nn/Model;->NONE:Lcom/samsung/android/sume/nn/Model;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$build$2(I)[Lcom/samsung/android/sume/nn/Model;
    .locals 1
    .param p0, "x$0"    # I

    .line 1309
    new-array v0, p0, [Lcom/samsung/android/sume/nn/Model;

    return-object v0
.end method


# virtual methods
.method public final blacklist addModel(Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/evaluate/Evaluator;)Lcom/samsung/android/sume/nn/SumeNN$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/samsung/android/sume/nn/Model;
    .param p2, "model"    # Lcom/samsung/android/sume/nn/Model;
    .param p3, "comparator"    # Lcom/samsung/android/sume/evaluate/Evaluator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "model",
            "comparator"
        }
    .end annotation

    .line 1209
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->models:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->models:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->linkages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->linkages:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->linkages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/sume/Duo;

    invoke-direct {v1, p3, p2}, Lcom/samsung/android/sume/Duo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    return-object p0
.end method

.method public final varargs blacklist addModel([Lcom/samsung/android/sume/nn/Model;)Lcom/samsung/android/sume/nn/SumeNN$Builder;
    .locals 5
    .param p1, "models"    # [Lcom/samsung/android/sume/nn/Model;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "models"
        }
    .end annotation

    .line 1193
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "empty model not allowed"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1195
    array-length v0, p1

    if-ne v0, v1, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->models:Ljava/util/ArrayList;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1197
    :cond_1
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1198
    aget-object v0, p1, v2

    aget-object v1, p1, v1

    new-instance v2, Lcom/samsung/android/sume/evaluate/Evaluator$Any;

    invoke-direct {v2}, Lcom/samsung/android/sume/evaluate/Evaluator$Any;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sume/nn/SumeNN$Builder;->addModel(Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/evaluate/Evaluator;)Lcom/samsung/android/sume/nn/SumeNN$Builder;

    goto :goto_1

    .line 1200
    :cond_2
    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/nn/SumeNN$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/nn/SumeNN$Builder;[Lcom/samsung/android/sume/nn/Model;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 1204
    :goto_1
    return-object p0
.end method

.method public final varargs blacklist addModel([Lcom/samsung/android/sume/nn/NNDescriptor;)Lcom/samsung/android/sume/nn/SumeNN$Builder;
    .locals 0
    .param p1, "descriptors"    # [Lcom/samsung/android/sume/nn/NNDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptors"
        }
    .end annotation

    .line 1221
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->descriptors:[Lcom/samsung/android/sume/nn/NNDescriptor;

    .line 1222
    return-object p0
.end method

.method public final blacklist build()Lcom/samsung/android/sume/nn/SumeNN;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1286
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sume.nn.service"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1289
    .local v0, "snsInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->outputFormat:Lcom/samsung/android/sume/MediaFormat;

    if-eqz v1, :cond_3

    .line 1290
    const/4 v1, 0x0

    .line 1291
    .local v1, "supportBufferIO":Z
    if-eqz v0, :cond_1

    .line 1292
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    .line 1293
    .local v3, "version":J
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

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

    .line 1294
    const-wide/32 v5, 0xb57e288

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    const-wide/32 v5, 0xb57bf60

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    const-wide/32 v5, 0xb564478

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 1295
    :cond_0
    const/4 v1, 0x1

    .line 1297
    .end local v3    # "version":J
    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    .line 1298
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Support AI Service but not support Buffer IO"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN$Builder;
    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    .end local v0    # "snsInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "supportBufferIO":Z
    .restart local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN$Builder;
    :cond_3
    :goto_0
    nop

    .line 1304
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->descriptors:[Lcom/samsung/android/sume/nn/NNDescriptor;

    if-nez v0, :cond_4

    .line 1305
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->models:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNN$Builder$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "should set model"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/Utils;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    :cond_4
    new-instance v0, Lcom/samsung/android/sume/nn/SumeNN;

    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->models:Ljava/util/ArrayList;

    .line 1309
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/nn/SumeNN$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/nn/SumeNN$Builder$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lcom/samsung/android/sume/nn/Model;

    iget-object v6, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->linkages:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->attributes:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->mode:Lcom/samsung/android/sume/Mode;

    iget-object v9, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/sume/nn/SumeNN;-><init>(Landroid/content/Context;[Lcom/samsung/android/sume/nn/Model;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/samsung/android/sume/Mode;Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;Lcom/samsung/android/sume/nn/SumeNN$1;)V

    .line 1316
    .local v0, "nn":Lcom/samsung/android/sume/nn/SumeNN;
    iget v1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->flags:I

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$2302(Lcom/samsung/android/sume/nn/SumeNN;I)I

    .line 1317
    iget-boolean v1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->debuggable:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$1102(Lcom/samsung/android/sume/nn/SumeNN;Z)Z

    .line 1318
    iget-boolean v1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->recover:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$602(Lcom/samsung/android/sume/nn/SumeNN;Z)Z

    .line 1319
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->descriptors:[Lcom/samsung/android/sume/nn/NNDescriptor;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$1902(Lcom/samsung/android/sume/nn/SumeNN;[Lcom/samsung/android/sume/nn/NNDescriptor;)[Lcom/samsung/android/sume/nn/NNDescriptor;

    .line 1320
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->inputFormat:Lcom/samsung/android/sume/MediaFormat;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$1802(Lcom/samsung/android/sume/nn/SumeNN;Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/MediaFormat;

    .line 1321
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->outputFormat:Lcom/samsung/android/sume/MediaFormat;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$1302(Lcom/samsung/android/sume/nn/SumeNN;Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/MediaFormat;

    .line 1328
    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$2100(Lcom/samsung/android/sume/nn/SumeNN;)V

    .line 1329
    return-object v0

    .line 1300
    .end local v0    # "nn":Lcom/samsung/android/sume/nn/SumeNN;
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Not supported for AI service"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final blacklist enableRecover(Z)Lcom/samsung/android/sume/nn/SumeNN$Builder;
    .locals 0
    .param p1, "recover"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recover"
        }
    .end annotation

    .line 1263
    iput-boolean p1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->recover:Z

    .line 1264
    return-object p0
.end method

.method synthetic blacklist lambda$addModel$0$com-samsung-android-sume-nn-SumeNN$Builder([Lcom/samsung/android/sume/nn/Model;I)V
    .locals 3
    .param p1, "models"    # [Lcom/samsung/android/sume/nn/Model;
    .param p2, "e"    # I

    .line 1201
    aget-object v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-object v1, p1, v1

    new-instance v2, Lcom/samsung/android/sume/evaluate/Evaluator$Any;

    invoke-direct {v2}, Lcom/samsung/android/sume/evaluate/Evaluator$Any;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sume/nn/SumeNN$Builder;->addModel(Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/evaluate/Evaluator;)Lcom/samsung/android/sume/nn/SumeNN$Builder;

    .line 1202
    return-void
.end method

.method public final blacklist setAttribute(Lcom/samsung/android/sume/nn/Model;Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/nn/SumeNN$Builder;
    .locals 2
    .param p1, "model"    # Lcom/samsung/android/sume/nn/Model;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "model",
            "key",
            "value"
        }
    .end annotation

    .line 1269
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->attributes:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    return-object p0
.end method

.method public final blacklist setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/nn/SumeNN$Builder;
    .locals 5
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

    .line 1277
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->models:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "no given model, set model first"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1278
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->models:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "multiple models are given, use setExtra with model"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1279
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->attributes:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->models:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    return-object p0
.end method

.method public final blacklist setDebuggable(Z)Lcom/samsung/android/sume/nn/SumeNN$Builder;
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

    .line 1257
    iput-boolean p1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->debuggable:Z

    .line 1258
    return-object p0
.end method

.method public final blacklist setEventListener(Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;)Lcom/samsung/android/sume/nn/SumeNN$Builder;
    .locals 0
    .param p1, "eventListener"    # Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventListener"
        }
    .end annotation

    .line 1227
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    .line 1228
    return-object p0
.end method

.method public final blacklist setFlags(I)Lcom/samsung/android/sume/nn/SumeNN$Builder;
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

    .line 1251
    iget v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->flags:I

    .line 1252
    return-object p0
.end method

.method public final blacklist setInputFormat(Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/nn/SumeNN$Builder;
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

    .line 1239
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->inputFormat:Lcom/samsung/android/sume/MediaFormat;

    .line 1240
    return-object p0
.end method

.method public final blacklist setMode(Lcom/samsung/android/sume/Mode;)Lcom/samsung/android/sume/nn/SumeNN$Builder;
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

    .line 1233
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->mode:Lcom/samsung/android/sume/Mode;

    .line 1234
    return-object p0
.end method

.method public final blacklist setOutputFormat(Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/nn/SumeNN$Builder;
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

    .line 1245
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$Builder;->outputFormat:Lcom/samsung/android/sume/MediaFormat;

    .line 1246
    return-object p0
.end method
