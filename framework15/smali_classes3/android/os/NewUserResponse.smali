.class public final Landroid/os/NewUserResponse;
.super Ljava/lang/Object;
.source "NewUserResponse.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mOperationResult:I

.field private final blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor blacklist <init>(Landroid/os/UserHandle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/NewUserResponse;->mUser:Landroid/os/UserHandle;

    iput p2, p0, Landroid/os/NewUserResponse;->mOperationResult:I

    return-void
.end method


# virtual methods
.method public whitelist getOperationResult()I
    .locals 1

    iget v0, p0, Landroid/os/NewUserResponse;->mOperationResult:I

    return v0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Landroid/os/NewUserResponse;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist isSuccessful()Z
    .locals 1

    iget-object v0, p0, Landroid/os/NewUserResponse;->mUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewUserResponse{mUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/NewUserResponse;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOperationResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/NewUserResponse;->mOperationResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
