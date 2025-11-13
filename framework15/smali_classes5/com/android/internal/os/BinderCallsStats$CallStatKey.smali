.class public Lcom/android/internal/os/BinderCallsStats$CallStatKey;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStatKey"
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

.field public blacklist callingUid:I

.field public blacklist packageName:Ljava/lang/String;

.field private blacklist screenInteractive:Z

.field public blacklist transactionCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputscreenInteractive(Lcom/android/internal/os/BinderCallsStats$CallStatKey;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->screenInteractive:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_1
    iget v3, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->callingUid:I

    iget v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->callingUid:I

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->transactionCode:I

    iget v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->transactionCode:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->screenInteractive:Z

    iget-boolean v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->screenInteractive:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->binderClass:Ljava/lang/Class;

    iget-object v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->binderClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->binderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->transactionCode:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->callingUid:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->screenInteractive:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    add-int/2addr v1, v2

    return v1
.end method
