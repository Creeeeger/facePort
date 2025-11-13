.class public Lcom/samsung/android/settings/Trace$TraceReflector;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceReflector"
.end annotation


# static fields
.field private static sInstance:Lcom/samsung/android/settings/Trace$TraceReflector;

.field private static sMethodTraceBegin:Ljava/lang/reflect/Method;

.field private static sMethodTraceEnd:Ljava/lang/reflect/Method;


# direct methods
.method static bridge synthetic -$$Nest$mbeginSection(Lcom/samsung/android/settings/Trace$TraceReflector;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/Trace$TraceReflector;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mendSection(Lcom/samsung/android/settings/Trace$TraceReflector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/Trace$TraceReflector;->endSection()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 24
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v3, "android.os.Trace"

    const-string/jumbo v5, "traceBegin"

    invoke-static {v3, v5, v0}, Lcom/samsung/android/settings/Trace$TraceReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/Trace$TraceReflector;->sMethodTraceBegin:Ljava/lang/reflect/Method;

    new-array v0, v4, [Ljava/lang/Class;

    aput-object v1, v0, v2

    const-string/jumbo v1, "traceEnd"

    .line 26
    invoke-static {v3, v1, v0}, Lcom/samsung/android/settings/Trace$TraceReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/Trace$TraceReflector;->sMethodTraceEnd:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private beginSection(Ljava/lang/String;)V
    .locals 5

    .line 72
    sget-object p0, Lcom/samsung/android/settings/Trace$TraceReflector;->sMethodTraceBegin:Ljava/lang/reflect/Method;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x60

    if-le v0, v1, :cond_1

    const/16 v0, 0x5f

    .line 77
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 81
    :cond_1
    :try_start_0
    sget-object v0, Lcom/samsung/android/settings/Trace$TraceReflector;->sMethodTraceBegin:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, p0

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private endSection()V
    .locals 5

    .line 90
    sget-object p0, Lcom/samsung/android/settings/Trace$TraceReflector;->sMethodTraceEnd:Ljava/lang/reflect/Method;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    .line 95
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 40
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " getClass ClassNotFoundException"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TraceReflector"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/settings/Trace$TraceReflector;
    .locals 1

    .line 29
    sget-object v0, Lcom/samsung/android/settings/Trace$TraceReflector;->sInstance:Lcom/samsung/android/settings/Trace$TraceReflector;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/samsung/android/settings/Trace$TraceReflector;

    invoke-direct {v0}, Lcom/samsung/android/settings/Trace$TraceReflector;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/Trace$TraceReflector;->sInstance:Lcom/samsung/android/settings/Trace$TraceReflector;

    .line 32
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/Trace$TraceReflector;->sInstance:Lcom/samsung/android/settings/Trace$TraceReflector;

    return-object v0
.end method

.method public static varargs getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const-string v0, "TraceReflector"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "getMethod() className is null"

    .line 50
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/Trace$TraceReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 62
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " getMethod NoSuchMethodException"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method
