.class public final Lcom/android/internal/ravenwood/RavenwoodEnvironment;
.super Ljava/lang/Object;
.source "RavenwoodEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/ravenwood/RavenwoodEnvironment$Workaround;
    }
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "RavenwoodEnvironment"

.field private static blacklist sInstance:Lcom/android/internal/ravenwood/RavenwoodEnvironment;

.field private static blacklist sWorkaround:Lcom/android/internal/ravenwood/RavenwoodEnvironment$Workaround;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    invoke-direct {v0}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;-><init>()V

    sput-object v0, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->sInstance:Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    new-instance v0, Lcom/android/internal/ravenwood/RavenwoodEnvironment$Workaround;

    invoke-direct {v0}, Lcom/android/internal/ravenwood/RavenwoodEnvironment$Workaround;-><init>()V

    sput-object v0, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->sWorkaround:Lcom/android/internal/ravenwood/RavenwoodEnvironment$Workaround;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->isRunningOnRavenwood()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->ensureRavenwoodInitializedInternal()V

    :cond_0
    return-void
.end method

.method public static blacklist ensureRavenwoodInitialized()V
    .locals 0

    return-void
.end method

.method private static blacklist ensureRavenwoodInitialized$ravenwood()V
    .locals 0

    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    return-void
.end method

.method private static native blacklist ensureRavenwoodInitializedInternal()V
.end method

.method public static blacklist getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;
    .locals 1

    sget-object v0, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->sInstance:Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    return-object v0
.end method

.method private blacklist isRunningOnRavenwood$ravenwood()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist workaround()Lcom/android/internal/ravenwood/RavenwoodEnvironment$Workaround;
    .locals 2

    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->isRunningOnRavenwood()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->sWorkaround:Lcom/android/internal/ravenwood/RavenwoodEnvironment$Workaround;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workaround can only be used on Ravenwood"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist isRunningOnRavenwood()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
