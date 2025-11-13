.class public final Landroid/app/RemoteLockscreenValidationSession$Builder;
.super Ljava/lang/Object;
.source "RemoteLockscreenValidationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteLockscreenValidationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mInstance:Landroid/app/RemoteLockscreenValidationSession;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/RemoteLockscreenValidationSession;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/RemoteLockscreenValidationSession;-><init>(Landroid/app/RemoteLockscreenValidationSession-IA;)V

    iput-object v0, p0, Landroid/app/RemoteLockscreenValidationSession$Builder;->mInstance:Landroid/app/RemoteLockscreenValidationSession;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/RemoteLockscreenValidationSession;
    .locals 1

    iget-object v0, p0, Landroid/app/RemoteLockscreenValidationSession$Builder;->mInstance:Landroid/app/RemoteLockscreenValidationSession;

    invoke-static {v0}, Landroid/app/RemoteLockscreenValidationSession;->-$$Nest$fgetmSourcePublicKey(Landroid/app/RemoteLockscreenValidationSession;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/RemoteLockscreenValidationSession$Builder;->mInstance:Landroid/app/RemoteLockscreenValidationSession;

    return-object v0
.end method

.method public whitelist setLockType(I)Landroid/app/RemoteLockscreenValidationSession$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/RemoteLockscreenValidationSession$Builder;->mInstance:Landroid/app/RemoteLockscreenValidationSession;

    invoke-static {v0, p1}, Landroid/app/RemoteLockscreenValidationSession;->-$$Nest$fputmLockType(Landroid/app/RemoteLockscreenValidationSession;I)V

    return-object p0
.end method

.method public whitelist setRemainingAttempts(I)Landroid/app/RemoteLockscreenValidationSession$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/RemoteLockscreenValidationSession$Builder;->mInstance:Landroid/app/RemoteLockscreenValidationSession;

    invoke-static {v0, p1}, Landroid/app/RemoteLockscreenValidationSession;->-$$Nest$fputmRemainingAttempts(Landroid/app/RemoteLockscreenValidationSession;I)V

    return-object p0
.end method

.method public whitelist setSourcePublicKey([B)Landroid/app/RemoteLockscreenValidationSession$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/RemoteLockscreenValidationSession$Builder;->mInstance:Landroid/app/RemoteLockscreenValidationSession;

    invoke-static {v0, p1}, Landroid/app/RemoteLockscreenValidationSession;->-$$Nest$fputmSourcePublicKey(Landroid/app/RemoteLockscreenValidationSession;[B)V

    return-object p0
.end method
