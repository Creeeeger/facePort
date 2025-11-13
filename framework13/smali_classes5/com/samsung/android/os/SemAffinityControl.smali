.class public Lcom/samsung/android/os/SemAffinityControl;
.super Ljava/lang/Object;
.source "SemAffinityControl.java"


# static fields
.field public static final blacklist DEBUG:Z

.field private static final blacklist HMP_CORE_FRONT:I = 0x0

.field private static final blacklist HMP_CORE_REAR:I = 0x1

.field private static final blacklist HMP_PROPERTY:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "SemAffinityControl"

.field private static blacklist nBig:[I

.field private static blacklist nLittle:[I

.field private static blacklist strHmpCore:[Ljava/lang/String;


# instance fields
.field private blacklist bigIndex:I

.field private blacklist core_num:I

.field private blacklist littleIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 17
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/os/SemAffinityControl;->DEBUG:Z

    .line 19
    const-string/jumbo v0, "sys.perf.hmp"

    const-string v1, "4:4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->HMP_PROPERTY:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    .line 25
    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    .line 27
    iput v0, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    .line 28
    iput v0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    .line 36
    const-string v0, "SemAffinityControl"

    const-string v1, "[Java Side], SemAffinityControl Class Initialized"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/samsung/android/os/SemAffinityControl;->HMP_PROPERTY:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 39
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    .line 40
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-le v2, v4, :cond_0

    aget-object v1, v1, v4

    const-string v2, "B"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iput v5, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    iput v3, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    goto :goto_0

    .line 43
    :cond_0
    iput v3, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    iput v5, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    .line 46
    :goto_0
    sget-object v1, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    .line 47
    sget-object v1, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    .line 48
    sget-object v1, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Java Side], SemAffinityControl Class Initialized core_num : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "offsetLittle":I
    sget-object v1, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    array-length v1, v1

    .line 52
    .local v1, "offsetBig":I
    iget v2, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    if-ne v2, v5, :cond_1

    .line 53
    sget-object v2, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    array-length v0, v2

    .line 54
    const/4 v1, 0x0

    .line 57
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 58
    add-int v4, v2, v0

    aput v4, v3, v2

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    sget-object v3, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 61
    add-int v4, v2, v1

    aput v4, v3, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 64
    .end local v0    # "offsetLittle":I
    .end local v1    # "offsetBig":I
    .end local v2    # "j":I
    :cond_3
    return-void
.end method

.method public static blacklist logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 189
    sget-boolean v0, Lcom/samsung/android/os/SemAffinityControl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    return-void
.end method

.method private native blacklist native_set_affinity(I[I)I
.end method

.method public static blacklist readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 195
    const-string v0, "e = "

    const/4 v1, 0x0

    .line 196
    .local v1, "strTemp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 198
    .local v2, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 199
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readSysfs:: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", strTemp result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    nop

    .line 206
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :cond_0
    :goto_0
    goto :goto_2

    .line 208
    :catch_0
    move-exception v3

    .line 209
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 204
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 201
    :catch_1
    move-exception v3

    .line 202
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_0

    .line 206
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 208
    :catch_2
    move-exception v3

    .line 209
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 212
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    return-object v1

    .line 205
    :goto_3
    if-eqz v2, :cond_1

    .line 206
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 208
    :catch_3
    move-exception v4

    .line 209
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 210
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    nop

    .line 211
    :goto_5
    throw v3
.end method


# virtual methods
.method public blacklist clearAffinity(I)I
    .locals 7
    .param p1, "pid"    # I

    .line 149
    iget v0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    const/4 v1, 0x0

    const-string v2, "SemAffinityControl"

    const/4 v3, 0x1

    if-gez v0, :cond_2

    .line 150
    const/4 v0, -0x1

    .line 151
    .local v0, "numCore":I
    const-string/jumbo v4, "sys.perf.hmp"

    const-string v5, "4:4"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "splitHmp":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 154
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int v0, v5, v6

    .line 156
    :cond_0
    if-ltz v0, :cond_1

    .line 157
    iput v0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Java Side], clearAffinity numCore : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", core_num : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    const-string v1, "clear_affinity_failed. It can\'t read the num of core"

    invoke-static {v2, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v1, -0x1

    return v1

    .line 165
    .end local v0    # "numCore":I
    .end local v4    # "splitHmp":[Ljava/lang/String;
    :cond_2
    :goto_0
    iget v0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    const-string v4, "clear_affinity_failed"

    if-lez v0, :cond_5

    .line 167
    add-int/2addr v0, v3

    new-array v0, v0, [I

    .line 168
    .local v0, "input_cpu_list":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v6, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    if-gt v5, v6, :cond_3

    .line 169
    aput v5, v0, v5

    .line 168
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 172
    .end local v5    # "i":I
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 173
    invoke-static {v2, v4}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return v3

    .line 176
    :cond_4
    const-string v3, "clear_affinity_success"

    invoke-static {v2, v3}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return v1

    .line 180
    .end local v0    # "input_cpu_list":[I
    :cond_5
    invoke-static {v2, v4}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return v3
.end method

.method public varargs blacklist setAffinity(I[I)I
    .locals 3
    .param p1, "pid"    # I
    .param p2, "cpu_list"    # [I

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result v0

    const-string v1, "SemAffinityControl"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 80
    const-string/jumbo v0, "sched_set_affinity_failed"

    invoke-static {v1, v0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return v2

    .line 83
    :cond_0
    const-string/jumbo v0, "sched_set_affinity_success"

    invoke-static {v1, v0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAffinityForBig(I)I
    .locals 3
    .param p1, "pid"    # I

    .line 125
    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->HMP_PROPERTY:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 126
    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result v0

    const-string v2, "SemAffinityControl"

    if-ne v0, v1, :cond_0

    .line 127
    const-string/jumbo v0, "sched_set_affinity_failed"

    invoke-static {v2, v0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return v1

    .line 130
    :cond_0
    const-string/jumbo v0, "sched_set_affinity_success"

    invoke-static {v2, v0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_1
    return v1
.end method

.method public blacklist setAffinityForLittle(I)I
    .locals 3
    .param p1, "pid"    # I

    .line 100
    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->HMP_PROPERTY:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 101
    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result v0

    const-string v2, "SemAffinityControl"

    if-ne v0, v1, :cond_0

    .line 102
    const-string/jumbo v0, "sched_set_affinity_failed"

    invoke-static {v2, v0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return v1

    .line 105
    :cond_0
    const-string/jumbo v0, "sched_set_affinity_success"

    invoke-static {v2, v0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_1
    return v1
.end method
