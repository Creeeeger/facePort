.class Landroid/app/FullscreenRequestHandler$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "FullscreenRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FullscreenRequestHandler;->requestFullscreenMode(ILandroid/os/OutcomeReceiver;Landroid/content/res/Configuration;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$approvalCallback:Landroid/os/OutcomeReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/os/OutcomeReceiver;)V
    .locals 0

    iput-object p1, p0, Landroid/app/FullscreenRequestHandler$1;->val$approvalCallback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist sendResult(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/app/FullscreenRequestHandler$1;->val$approvalCallback:Landroid/os/OutcomeReceiver;

    const-string/jumbo v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/FullscreenRequestHandler;->-$$Nest$smnotifyFullscreenRequestResult(Landroid/os/OutcomeReceiver;I)V

    return-void
.end method
