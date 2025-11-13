.class public final Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LockPatternUtilForDualDarDo"
.end annotation


# static fields
.field static final blacklist OPT_PENDING_UNLOCK:I = 0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "context"    # Landroid/content/Context;

    .line 3001
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3002
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->mContext:Landroid/content/Context;

    .line 3003
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized blacklist getAuthUtils()Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;
    .locals 2

    monitor-enter p0

    .line 3006
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    if-nez v0, :cond_0

    .line 3007
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 3009
    .end local p0    # "this":Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3005
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected blacklist checkCredential(Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Z
    .locals 1
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "option"    # I
    .param p4, "progressCallback"    # Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 3023
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->-$$Nest$mcheckCredentialForDualDarDo(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Z

    move-result v0

    return v0
.end method

.method public blacklist getInnerAuthUserForDo()I
    .locals 1

    .line 3013
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->getAuthUtils()Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserForDo()I

    move-result v0

    return v0
.end method

.method public blacklist getPasswordMinimumLengthForInner()I
    .locals 1

    .line 3027
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->getAuthUtils()Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getPasswordMinimumLengthForInner()I

    move-result v0

    return v0
.end method

.method public blacklist isInnerAuthUserForDo(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 3017
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->getAuthUtils()Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    move-result v0

    return v0
.end method
