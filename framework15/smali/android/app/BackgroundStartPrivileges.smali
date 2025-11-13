.class public final Landroid/app/BackgroundStartPrivileges;
.super Ljava/lang/Object;
.source "BackgroundStartPrivileges.java"


# static fields
.field public static final blacklist ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

.field public static final blacklist ALLOW_FGS:Landroid/app/BackgroundStartPrivileges;

.field public static final blacklist NONE:Landroid/app/BackgroundStartPrivileges;


# instance fields
.field private final blacklist mAllowsBackgroundActivityStarts:Z

.field private final blacklist mAllowsBackgroundForegroundServiceStarts:Z

.field private final blacklist mOriginatingToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Landroid/app/BackgroundStartPrivileges;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Landroid/app/BackgroundStartPrivileges;-><init>(ZZLandroid/os/IBinder;)V

    sput-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    new-instance v0, Landroid/app/BackgroundStartPrivileges;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v3, v2}, Landroid/app/BackgroundStartPrivileges;-><init>(ZZLandroid/os/IBinder;)V

    sput-object v0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    new-instance v0, Landroid/app/BackgroundStartPrivileges;

    invoke-direct {v0, v1, v3, v2}, Landroid/app/BackgroundStartPrivileges;-><init>(ZZLandroid/os/IBinder;)V

    sput-object v0, Landroid/app/BackgroundStartPrivileges;->ALLOW_FGS:Landroid/app/BackgroundStartPrivileges;

    return-void
.end method

.method private constructor blacklist <init>(ZZLandroid/os/IBinder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "backgroundActivityStarts implies bgFgServiceStarts"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-boolean p1, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundActivityStarts:Z

    iput-boolean p2, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundForegroundServiceStarts:Z

    iput-object p3, p0, Landroid/app/BackgroundStartPrivileges;->mOriginatingToken:Landroid/os/IBinder;

    return-void
.end method

.method public static blacklist allowBackgroundActivityStarts(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object v0

    :cond_0
    new-instance v0, Landroid/app/BackgroundStartPrivileges;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, p0}, Landroid/app/BackgroundStartPrivileges;-><init>(ZZLandroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist merge(Ljava/util/List;)Landroid/app/BackgroundStartPrivileges;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/BackgroundStartPrivileges;",
            ">;)",
            "Landroid/app/BackgroundStartPrivileges;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackgroundStartPrivileges;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v0, v1}, Landroid/app/BackgroundStartPrivileges;->merge(Landroid/app/BackgroundStartPrivileges;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object v0
.end method


# virtual methods
.method public blacklist allowsAny()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundActivityStarts:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundForegroundServiceStarts:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist allowsBackgroundActivityStarts()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundActivityStarts:Z

    return v0
.end method

.method public blacklist allowsBackgroundFgsStarts()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundForegroundServiceStarts:Z

    return v0
.end method

.method public blacklist allowsNothing()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/BackgroundStartPrivileges;

    iget-boolean v3, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundActivityStarts:Z

    iget-boolean v4, v2, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundActivityStarts:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundForegroundServiceStarts:Z

    iget-boolean v4, v2, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundForegroundServiceStarts:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/BackgroundStartPrivileges;->mOriginatingToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/app/BackgroundStartPrivileges;->mOriginatingToken:Landroid/os/IBinder;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getOriginatingToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/BackgroundStartPrivileges;->mOriginatingToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundActivityStarts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundForegroundServiceStarts:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Landroid/app/BackgroundStartPrivileges;->mOriginatingToken:Landroid/os/IBinder;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist merge(Landroid/app/BackgroundStartPrivileges;)Landroid/app/BackgroundStartPrivileges;
    .locals 4

    sget-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    if-eq p1, v0, :cond_b

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    if-ne p0, v0, :cond_1

    return-object p1

    :cond_1
    nop

    invoke-virtual {p0}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    nop

    invoke-virtual {p0}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundFgsStarts()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundFgsStarts()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    iget-object v2, p0, Landroid/app/BackgroundStartPrivileges;->mOriginatingToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/BackgroundStartPrivileges;->mOriginatingToken:Landroid/os/IBinder;

    if-ne v2, v3, :cond_8

    iget-boolean v2, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundActivityStarts:Z

    if-ne v2, v0, :cond_6

    iget-boolean v2, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundForegroundServiceStarts:Z

    if-ne v2, v1, :cond_6

    return-object p0

    :cond_6
    iget-boolean v2, p1, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundActivityStarts:Z

    if-ne v2, v0, :cond_7

    iget-boolean v2, p1, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundForegroundServiceStarts:Z

    if-ne v2, v1, :cond_7

    return-object p1

    :cond_7
    new-instance v2, Landroid/app/BackgroundStartPrivileges;

    iget-object v3, p0, Landroid/app/BackgroundStartPrivileges;->mOriginatingToken:Landroid/os/IBinder;

    invoke-direct {v2, v0, v1, v3}, Landroid/app/BackgroundStartPrivileges;-><init>(ZZLandroid/os/IBinder;)V

    return-object v2

    :cond_8
    if-eqz v0, :cond_9

    sget-object v2, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object v2

    :cond_9
    if-eqz v1, :cond_a

    sget-object v2, Landroid/app/BackgroundStartPrivileges;->ALLOW_FGS:Landroid/app/BackgroundStartPrivileges;

    return-object v2

    :cond_a
    sget-object v2, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object v2

    :cond_b
    :goto_2
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    if-ne p0, v0, :cond_0

    const-string v0, "BSP.ALLOW_BAL"

    return-object v0

    :cond_0
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->ALLOW_FGS:Landroid/app/BackgroundStartPrivileges;

    if-ne p0, v0, :cond_1

    const-string v0, "BSP.ALLOW_FGS"

    return-object v0

    :cond_1
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    if-ne p0, v0, :cond_2

    const-string v0, "BSP.NONE"

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackgroundStartPrivileges[allowsBackgroundActivityStarts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundActivityStarts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowsBackgroundForegroundServiceStarts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/BackgroundStartPrivileges;->mAllowsBackgroundForegroundServiceStarts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originatingToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/BackgroundStartPrivileges;->mOriginatingToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
